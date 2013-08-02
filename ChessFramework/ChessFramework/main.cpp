#include <iostream>
#include <iomanip>

#include <set>
#include <vector>
#include <list>
#include <utility>

#include "Move.h"
#include "MoveFactory.h"
#include "Position.h"
#include "GameState.h"

#include <fstream>
#include "GameReader.h"

using namespace sfc::cfw;

std::string SANString(const Move & m, const std::vector<std::shared_ptr<Move>> & allLegalMoves);

bool compareSANMovePair(const std::pair<std::string, std::shared_ptr<Move>> & lhs,
						const std::pair<std::string, std::shared_ptr<Move>> & rhs);
// #define DEBUG_CFW

#ifdef DEBUG_CFW
int main() {
	try {
		std::string currentPosition = "8/1p1qknN1/1P6/2rPpQp1/pR2Pp1b/P1p2P2/2K5/7R";
		std::shared_ptr<GameState> g = std::make_shared<GameState>(currentPosition, ColorWhite);
		
		std::cout << g->getPosition()->prettyString() << std::endl;
		
		std::vector<std::shared_ptr<Move>> legalMoves = MoveFactory::allLegalMoves(g);
		std::cout << "\nLegal Moves: \n";
		for (auto m : legalMoves) {
			std::cout << m->getFromSquare().getLabel() << " -> " << m->getToSquare().getLabel() << " ";
			// std::cout << SANString(*m, legalMoves) << std::endl;
			
			if (m->getFromSquare() == Square("f5") && m->getToSquare() == Square("d7")) {
				KingStatus blackKingStatus = m->getGameStateAfterMove()->getBlackKingStatus();
				std::cout << blackKingStatus << std::endl;
			}
		}
		
	} catch(const std::exception & e) {
		std::cout << e.what() << std::endl;
	}
}

#else

int main() {
	std::ifstream inputFile("/Users/santhosbaala/Desktop/test.pgn");
	
	std::string inputString;
	while (inputFile.good()) {
		inputString += inputFile.get();
	}
	inputString[inputString.length() - 1] = ' ';	// A small bug in C++ \377
	// std::cout << "\nInput String:\n\n" << inputString << std::endl;
	
	inputFile.close();
	
	// std::cout << "\n\n ---------- Move Extraction ---------- \n\n";
	std::vector<std::pair<std::string, std::vector<std::string>>> games = PGN::readGames(inputString);

	if (games.size() == 0) {
		std::cout << "\nNo games in database!";
		return 0;
	}
	
	for (int i = 0; i < games.size(); i++) {
		// std::cout << "\nGame " << (i + 1) << ": " << games[i].first << std::endl;

		std::string currentPosition = "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR";
		std::shared_ptr<GameState> g = std::make_shared<GameState>(currentPosition, ColorWhite, "KQkq");
		
		int pawnHalfMoves = 0;
		int moveNumber = 1;
		
		for (auto m : games[i].second) {
			// Print the current FEN
			std::cout << g->getPosition()->prettyString() << std::endl;
			std::cout << g->getFEN() << " " << pawnHalfMoves << " " << moveNumber << std::endl;
			
			std::vector<std::shared_ptr<Move>> legalMoves;
			std::list<std::pair<std::string, std::shared_ptr<Move>>> legalMoveSANPairList;
			try {
				legalMoves = MoveFactory::allLegalMoves(g);
			} catch (const std::exception & e) {
				std::cout << e.what() << std::endl;
				abort();
			}

			for (auto m : legalMoves) {
				legalMoveSANPairList.push_back(std::make_pair(SANString(*m, legalMoves), m));
			}
			
			// Sort the moves according to SAN string
			legalMoveSANPairList.sort(compareSANMovePair);
			
			// Print SAN of all Legal moves
			std::shared_ptr<Move> playedMove = nullptr;
			for (auto legalMove : legalMoveSANPairList) {
				std::cout << legalMove.first << " ";
				
				// Mark the ChessFramework representation of the played move
				if (legalMove.first == m) {
					playedMove = legalMove.second;
				}
			}
					
			if (playedMove == nullptr) {
				std::cout << "\nPlayed move does not exists in list: " << m << " in game " << (i + 1) << std::endl;
				abort();
			}
			
			std::cout << "| " << SANString(*playedMove, legalMoves);
			std::cout << std::endl;
			
			// Make the legal move
			g.reset();
			g = playedMove->getGameStateAfterMove();
			
			// Update the fields for next FEN
			if (playedMove->getCapturedPiece() != PieceNone ||
				getGenericPiece(playedMove->getPieceMoved()) == GenericPiecePawn) {
				pawnHalfMoves = 0;
			} else {
				pawnHalfMoves += 1;
			}
			
			if (getPieceColor(playedMove->getPieceMoved()) == ColorBlack) {
				moveNumber += 1;
			}
		}
		
		// End of processing:
		std::cout << g->getPosition()->prettyString() << std::endl;
		std::cout << g->getFEN() << " " << pawnHalfMoves << " " << moveNumber << std::endl;
		
		std::cout << std::endl;
	}
}
#endif

bool compareSANMovePair(const std::pair<std::string, std::shared_ptr<Move>> & lhs,
						const std::pair<std::string, std::shared_ptr<Move>> & rhs) {
	return lhs.first < rhs.first;
}

std::string SANString(const Move & m, const std::vector<std::shared_ptr<Move>> & allLegalMoves) {
	std::string toReturn;
	
	if (m.getCastlingType() == CastlingTypeKSide) {
		toReturn = "O-O";
	} else if (m.getCastlingType() == CastlingTypeQSide) {
		toReturn = "O-O-O";
	}
	
	switch (getGenericPiece(m.getPieceMoved())) {
		case GenericPieceKing: {
			if (m.getCastlingType() == CastlingTypeNone) {
				toReturn = "K";
			}
			break;
		}
		case GenericPieceQueen: toReturn = "Q"; break;
		case GenericPieceRook: toReturn = "R"; break;
		case GenericPieceBishop: toReturn = "B"; break;
		case GenericPieceKnight: toReturn = "N"; break;
		
		case GenericPieceNone:
		case GenericPiecePawn:
		default: break;
	}
	
	// Disambiguation string
	std::string disambiguitionString;
	bool commonRank = false, commonFile = false;
	
	for (auto otherMove : allLegalMoves) {
		if (otherMove->getFromSquare() == m.getFromSquare() &&
			otherMove->getToSquare() == m.getToSquare()) {
			continue;
		}
		
		if (otherMove->getPieceMoved() == m.getPieceMoved() &&
			otherMove->getToSquare() == m.getToSquare()) {
			
			if (otherMove->getFromSquare().getFile() == m.getFromSquare().getFile()) {
				commonFile = true;
			}
			
			if (otherMove->getFromSquare().getRank() == m.getFromSquare().getRank()) {
				commonRank = true;
			}
		}
	}
	
	if (commonRank && commonFile) {
		disambiguitionString += m.getFromSquare().getLabel();
	} else if (commonRank) {
		disambiguitionString += m.getFromSquare().getLabel()[0];	// Mark the file
	} else if (commonFile) {
		disambiguitionString += m.getFromSquare().getLabel()[1];	// Mark the rank
	}
	
	if (disambiguitionString.length() > 0 && getGenericPiece(m.getPieceMoved()) != GenericPiecePawn) {
		toReturn += disambiguitionString;
	}
	
	// Capture character
	if (m.getCastlingType() == CastlingTypeNone) {
		if (m.getCapturedPiece() != PieceNone) {
			// If the capture was by a pawn, append the file
			if (getGenericPiece(m.getPieceMoved()) == GenericPiecePawn) {
				toReturn += m.getFromSquare().getLabel()[0];
			}
			toReturn += "x";
		}
	}
	
	// toSquare
	if (m.getCastlingType() == CastlingTypeNone) {
		toReturn += m.getToSquare().getLabel();
	}
	
	// Check/Checkmate
	if (getPieceColor(m.getPieceMoved()) == ColorWhite) {
		switch (m.getGameStateAfterMove()->getBlackKingStatus()) {
			case KingStatusCheck: toReturn += "+"; break;
			case KingStatusCheckMate: toReturn += "#"; break;
			case KingStatusNormal:
			case KingStatusStaleMate:
				break;
		}
	} else {
		switch (m.getGameStateAfterMove()->getWhiteKingStatus()) {
			case KingStatusCheck: toReturn += "+"; break;
			case KingStatusCheckMate: toReturn += "#"; break;
			case KingStatusNormal:
			case KingStatusStaleMate:
				break;
		}
	}
	
	return toReturn;
}