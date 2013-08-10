#include <iostream>
#include <iomanip>

#include <set>
#include <vector>
#include <list>
#include <utility>

#include <unistd.h>

#include "Move.h"
#include "MoveFactory.h"
#include "Position.h"
#include "PositionQuerier.h"
#include "GameState.h"

#include <fstream>

using namespace sfc::cfw;

int main() {
	
	std::shared_ptr<GameState> g =
	std::make_shared<GameState>("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", ColorWhite, "KQkq");
	
	std::cout << "\n" << g->getPosition()->prettyString() << std::endl;
	
	std::shared_ptr<Move> m = MoveFactory::legalMove(g, Square("e1"), Square("e4"));
	
	if (m) {
		std::cout << "\nMove is legal" << std::endl;
		std::cout << m->getGameStateAfterMove()->getPosition()->prettyString() << std::endl;
	}
}

/*

std::string SANString(const Move & m, const std::vector<std::shared_ptr<Move>> & allLegalMoves);

bool compareSANMovePair(const std::pair<std::string, std::shared_ptr<Move>> & lhs,
						const std::pair<std::string, std::shared_ptr<Move>> & rhs);
// #define DEBUG_CFW

#ifdef DEBUG_CFW
int main() {
	try {
		std::string currentPosition = "r4k1r/p1nqp1b1/1pp1b2p/2p2pp1/2P5/1P1P1NN1/P3QPPP/R1B1R1K1";
		std::shared_ptr<GameState> g = std::make_shared<GameState>(currentPosition, ColorBlack);
		
		std::cout << g->getPosition()->prettyString() << std::endl;
		
		std::vector<std::shared_ptr<Move>> legalMoves = MoveFactory::allLegalMoves(g);
		std::cout << "\nLegal Moves: \n";
		for (auto m : legalMoves) {
			std::cout << m->getFromSquare().getLabel() << " -> " << m->getToSquare().getLabel() << " ";
			std::cout << SANString(*m, legalMoves) << std::endl;
		}
		
	} catch(const std::exception & e) {
		std::cout << e.what() << std::endl;
	}
}

#else

int main(const int argc, const char * argv[]) {
	if (argc == 1) {
		std::cout << "\n\nUsage: " << argv[0] << " [filename.pgn]\n\n" << std::endl;
		exit(0);
	}
	
	std::ifstream inputFile("/Users/santhosbaala/Desktop/twic977.pgn");
	
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
			// std::cout << g->getPosition()->prettyString() << std::endl;
			// std::cout << g->getFEN() << " " << pawnHalfMoves << " " << moveNumber << std::endl;
			
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
					
			// Search again by inserting the fromSquare's file in the middle
			if (playedMove == nullptr) {
				for (auto legalMove : legalMoveSANPairList) {
					std::string disambiguatedMove = {legalMove.first[0]};
					disambiguatedMove += legalMove.second->getFromSquare().getLabel()[0];
					disambiguatedMove += legalMove.first.substr(1);
					
					// Mark the ChessFramework representation of the played move
					if (disambiguatedMove == m) {
						playedMove = legalMove.second;
						break;
					}
				}
			}
			
			// If still legal move has not been found, then try to disambiguate based on rank
			if (playedMove == nullptr) {
				for (auto legalMove : legalMoveSANPairList) {
					std::string disambiguatedMove = {legalMove.first[0]};
					disambiguatedMove += legalMove.second->getFromSquare().getLabel()[1];
					disambiguatedMove += legalMove.first.substr(1);
					
					// Mark the ChessFramework representation of the played move
					if (disambiguatedMove == m) {
						playedMove = legalMove.second;
						break;
					}
				}
			}
			
			// If still legal move has not been found, then try to disambiguate based the entire square
			if (playedMove == nullptr) {
				for (auto legalMove : legalMoveSANPairList) {
					std::string disambiguatedMove = {legalMove.first[0]};
					disambiguatedMove += legalMove.second->getFromSquare();
					disambiguatedMove += legalMove.first.substr(1);
					
					// Mark the ChessFramework representation of the played move
					if (disambiguatedMove == m) {
						playedMove = legalMove.second;
						break;
					}
				}
			}
			
			if (playedMove == nullptr) {
				std::cout << "\nPlayed move does not exist in list: " << m << " in game " << (i + 1) << std::endl;
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
		// std::cout << g->getPosition()->prettyString() << std::endl;
		// std::cout << g->getFEN() << " " << pawnHalfMoves << " " << moveNumber << std::endl;
		
		// sleep(2);	// Suspend so that the system does not overheat
		
		std::cout << std::endl;
	}
	
	std::cout << "Move Generation Ended" << std::endl;
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
	std::string disambiguationString;
	bool commonRank = false, commonFile = false, onlyToSquareIsCommon = false;
	
	for (auto otherMove : allLegalMoves) {
		if (otherMove->getFromSquare() != m.getFromSquare() &&
			otherMove->getPieceMoved() == m.getPieceMoved() &&
			otherMove->getToSquare() == m.getToSquare()) {
		
			// Check if the pieces are in the same file, then use rank for disambiguation
			if (otherMove->getFromSquare().getFile() == m.getFromSquare().getFile()) {
				commonFile = true;
			}
			
			// Check if the pieces are in the same rank, then use file for disambiguation
			if (otherMove->getFromSquare().getRank() == m.getFromSquare().getRank()) {
				commonRank = true;
			}
			
			// If both file and rank are not common, then file/rank can be used. SAN advices file
			onlyToSquareIsCommon = true;
		}
	}
	
	if (commonRank && commonFile) {
		disambiguationString += m.getFromSquare().getLabel();
	} else if (commonRank) {
		disambiguationString += m.getFromSquare().getLabel()[0];	// Mark the file
	} else if (commonFile) {
		disambiguationString += m.getFromSquare().getLabel()[1];	// Mark the rank
	} else if (onlyToSquareIsCommon) {
		disambiguationString += m.getFromSquare().getLabel()[0];	// Use file
	}
	
	if (disambiguationString.length() > 0 && getGenericPiece(m.getPieceMoved()) != GenericPiecePawn) {
		toReturn += disambiguationString;
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
	
	// Promotion
	if (getGenericPiece(m.getPieceMoved()) == GenericPiecePawn && (m.getToSquare().getRank() == 7 || m.getToSquare().getRank() == 0)) {
		toReturn += '=';
		switch (m.getPromotedToPiece()) {
			case PromotablePieceQueen:	toReturn += 'Q'; break;
			case PromotablePieceRook:	toReturn += 'R'; break;
			case PromotablePieceBishop: toReturn += 'B'; break;
			case PromotablePieceKnight: toReturn += 'N'; break;
			default: break;
		}
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

*/