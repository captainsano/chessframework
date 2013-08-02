//
//  MoveFactory.cpp
//  ChessFramework
//
//  Created by Santhosbaala RS on 31/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#include <iostream>

#include <bitset>
#include <cstdlib>
#include <set>
#include "Move.h"
#include "PositionQuerier.h"
#include "MoveFactory.h"

std::shared_ptr<sfc::cfw::Move> sfc::cfw::MoveFactory::legalMove(std::shared_ptr<GameState> beforeGameState, Square fromSquare, Square toSquare, PromotablePiece promotedToPiece) {
	std::shared_ptr<Position> tempPosition = std::make_shared<Position>(beforeGameState->getPosition()->getFEN());
	std::shared_ptr<PositionQuerier> querier = std::make_shared<PositionQuerier>(tempPosition);
	
	/*----------------- Fields for updating GameState and move ---------------*/
	Piece capturedPiece = PieceNone, movedPiece = (*tempPosition)[fromSquare];
	
	std::string nextCastlingOptions = {
		beforeGameState->getWhiteKingSideCastlingOption(),
		beforeGameState->getWhiteQueenSideCastlingOption(),
		beforeGameState->getBlackKingSideCastlingOption(),
		beforeGameState->getBlackQueenSideCastlingOption(),
	};
	
	Square nextEnpassantTarget = 0;
	
	/*----------------- Fields for updating GameState ---------------*/
	
	
	// From Square is vacant or contains wrong color
	if ((*tempPosition)[fromSquare] == PieceNone || getPieceColor((*tempPosition)[fromSquare]) != beforeGameState->getSideToMove()) {
		return nullptr;
	}
	
	CastlingType castlingType = CastlingTypeNone;
	
	/*-------------------------- White King and Castling --------------------------*/
	{
		// If the movedPiece is King and move is castling, see if the corresponding castling option is available + no blockers
		if ((*tempPosition)[fromSquare] == PieceWKing) {
			// Check if kingside castling is available and if the move is castling, then check for blockers
			if (beforeGameState->getWhiteKingSideCastlingOption() != '-') {
				// Castling is not allowed when in check
				if (beforeGameState->getWhiteKingStatus() != KingStatusNormal) {
					return nullptr;
				}
				
				unsigned short toFile = std::tolower(beforeGameState->getWhiteKingSideCastlingOption()) - 'a';
				if (toSquare.getFile() == toFile) {
					castlingType = CastlingTypeKSide;
					
					// Iterate and check if there are any blockers till g1.
					// It is also required for f1 to be vacant in case the king is on g1
					tempPosition->vacate(fromSquare);
					if (fromSquare == Square("g1") && (*tempPosition)[Square("f1")] != PieceNone) {
						return nullptr;
					}
					for (unsigned short i = fromSquare; i <= Square("g1"); i++) {
						if ((*tempPosition)[i] != PieceNone) {
							return nullptr;	// blocker exists
						} else {
							tempPosition->occupy(i, PieceWKing);
							// A square in castle path is under attack
							if (querier->isKingInCheck(ColorWhite)) {
								return nullptr;
							}
							tempPosition->vacate(i);
						}
					}
					
					// Update the temp position
					tempPosition->occupy(Square("g1"), PieceWKing);
					tempPosition->vacate(toSquare);
					tempPosition->occupy(Square("f1"), PieceWRook);
									
					// Update white's castling options
					nextCastlingOptions[0] = nextCastlingOptions[1] = '-';
				}
			} else
			// Check if queenside castling is available and if the move is castling, then check for blockers
			if (beforeGameState->getWhiteQueenSideCastlingOption() != '-') {
				// Castling is not allowed when in check
				if (beforeGameState->getWhiteKingStatus() != KingStatusNormal) {
					return nullptr;
				}
				
				unsigned short toFile = std::tolower(beforeGameState->getWhiteQueenSideCastlingOption()) - 'a';
				if (toSquare.getFile() == toFile) {
					castlingType = CastlingTypeQSide;
					
					// Iterate and check if there are any blockers till c1.
					// It is also required for b1 and d1 to be vacant
					tempPosition->vacate(fromSquare);
					if (fromSquare == Square("c1") &&
						((*tempPosition)[Square("b1")] != PieceNone || (*tempPosition)[Square("d1")] != PieceNone)
						) {
						return nullptr;
					}
					for (unsigned short i = fromSquare; i >= Square("c1"); i--) {
						if ((*tempPosition)[i] != PieceNone) {
							return nullptr;	// blocker exists
						} else {
							tempPosition->occupy(i, PieceWKing);
							// A square in castle path is under attack
							if (querier->isKingInCheck(ColorWhite)) {
								return nullptr;
							}
							tempPosition->vacate(i);
						}
					}
					
					// Update the temp position
					tempPosition->occupy(Square("c1"), PieceWKing);
					tempPosition->vacate(toSquare);
					tempPosition->occupy(Square("d1"), PieceWRook);
					
					// Update white's castling options
					nextCastlingOptions[0] = nextCastlingOptions[1] = '-';
				}
			}
		}
	}
	
	/*-------------------------- Black King and Castling --------------------------*/
	{
		// If the movedPiece is King and move is castling, see if the corresponding castling option is available + no blockers
		if ((*tempPosition)[fromSquare] == PieceBKing) {
			// Check if kingside castling is available and if the move is castling, then check for blockers
			if (beforeGameState->getBlackKingSideCastlingOption() != '-') {
				// Castling is not allowed when in check
				if (beforeGameState->getBlackKingStatus() != KingStatusNormal) {
					return nullptr;
				}
				
				unsigned short toFile = std::tolower(beforeGameState->getBlackKingSideCastlingOption()) - 'a';
				if (toSquare.getFile() == toFile) {
					castlingType = CastlingTypeKSide;
					
					// Iterate and check if there are any blockers till g1.
					// It is also required for f1 to be vacant in case the king is on g1
					tempPosition->vacate(fromSquare);
					if (fromSquare == Square("g8") && (*tempPosition)[Square("f8")] != PieceNone) {
						return nullptr;
					}
					for (unsigned short i = fromSquare; i <= Square("g8"); i++) {
						if ((*tempPosition)[i] != PieceNone) {
							return nullptr;	// blocker exists
						} else {
							tempPosition->occupy(i, PieceBKing);
							// A square in castle path is under attack
							if (querier->isKingInCheck(ColorBlack)) {
								return nullptr;
							}
							tempPosition->vacate(i);
						}
					}
					
					// Update the temp position
					tempPosition->occupy(Square("g8"), PieceBKing);
					tempPosition->vacate(toSquare);
					tempPosition->occupy(Square("f8"), PieceBRook);
					
					// Update black's castling options
					nextCastlingOptions[2] = nextCastlingOptions[3] = '-';
				}
			} else
			// Check if queenside castling is available and if the move is castling, then check for blockers
			if (beforeGameState->getBlackQueenSideCastlingOption() != '-') {
				// Castling is not allowed when in check
				if (beforeGameState->getBlackKingStatus() != KingStatusNormal) {
					return nullptr;
				}
				
				unsigned short toFile = std::tolower(beforeGameState->getBlackQueenSideCastlingOption()) - 'a';
				if (toSquare.getFile() == toFile) {
					castlingType = CastlingTypeQSide;
					
					// Iterate and check if there are any blockers till c1.
					// It is also required for b1 and d1 to be vacant
					tempPosition->vacate(fromSquare);
					if (fromSquare == Square("c8") &&
						((*tempPosition)[Square("b8")] != PieceNone || (*tempPosition)[Square("d8")] != PieceNone)
						) {
						return nullptr;
					}
					for (unsigned short i = fromSquare; i >= Square("c8"); i--) {
						if ((*tempPosition)[i] != PieceNone) {
							return nullptr;	// blocker exists
						} else {
							tempPosition->occupy(i, PieceBKing);
							// A square in castle path is under attack
							if (querier->isKingInCheck(ColorBlack)) {
								return nullptr;
							}
							tempPosition->vacate(i);
						}
					}
					
					// Update the temp position
					tempPosition->occupy(Square("c8"), PieceBKing);
					tempPosition->vacate(toSquare);
					tempPosition->occupy(Square("d8"), PieceBRook);
					
					// Update black's castling options
					nextCastlingOptions[2] = nextCastlingOptions[3] = '-';
				}
			}
		}
	}
	
	// If castling, the legal move evaluation ends here.
	
	/*-------------------------- Normal Piece Moves --------------------------*/
	if (castlingType == CastlingTypeNone) {
		// The piece on toSquare is of the same color
		if ((*tempPosition)[toSquare] != PieceNone && getPieceColor((*tempPosition)[toSquare]) == beforeGameState->getSideToMove()) {
			return nullptr;
		}
		
		std::set<Square> pieceAttacks = querier->attacksFrom(fromSquare, beforeGameState->getEnpassantTarget());
		
		// toSquare is not in set then illegal
		if (pieceAttacks.find(toSquare) == pieceAttacks.end()) {
			return nullptr;
		}
		
		// At this point the move is pseudo-legal, update the position and see if the king is in check
		tempPosition->vacate(fromSquare);
		capturedPiece = tempPosition->occupy(toSquare, movedPiece);
		
		// Vacate the enpassant target pawn
		if (getGenericPiece(movedPiece) == GenericPiecePawn && toSquare == beforeGameState->getEnpassantTarget()) {
			capturedPiece = tempPosition->vacate(Square(beforeGameState->getEnpassantTarget().getFile(), (getPieceColor(movedPiece) == ColorWhite)?5:2));
		}
		
		if (querier->isKingInCheck(getPieceColor(movedPiece))) {
			return nullptr;
		}
		
		/*----- At this point, the move is legal. Update the GameStatus for special cases ------*/
		switch (movedPiece) {
			case PieceWKing: {
				nextCastlingOptions[0] = nextCastlingOptions[1] = '-';
				break;
			}
			case PieceBKing: {
				nextCastlingOptions[2] = nextCastlingOptions[3] = '-';
				break;
			}
			case PieceWRook: {
				// If the rook from castling options has moved, then remove that option
				if (nextCastlingOptions[0] != '-' && (fromSquare == Square(std::tolower(nextCastlingOptions[0]) - 'a', 0))) {
					nextCastlingOptions[0] = '-';
				} else if (nextCastlingOptions[1] != '-' && (fromSquare == Square(std::tolower(nextCastlingOptions[1]) - 'a', 0))) {
					nextCastlingOptions[1] = '-';
				}
				break;
			}
			case PieceBRook: {
				// If the rook from castling options has moved, then remove that option
				if (nextCastlingOptions[2] != '-' && (fromSquare == Square(std::tolower(nextCastlingOptions[2]) - 'a', 7))) {
					nextCastlingOptions[2] = '-';
				} else if (nextCastlingOptions[3] != '-' && (fromSquare == Square(std::tolower(nextCastlingOptions[3]) - 'a', 7))) {
					nextCastlingOptions[3] = '-';
				}
				break;
			}
			case PieceWPawn: {
				// If the last move was a double pawn move, then update the enPassant target
				if (fromSquare.getRank() == 1 && (abs(toSquare.getRank() - fromSquare.getRank()) == 2)) {
					nextEnpassantTarget = Square(toSquare.getFile(), 2);
				}
				
				// Pawn Promotion
				if (toSquare.getRank() == 7) {
					if (promotedToPiece == PromotablePieceNone) { return nullptr; }
					tempPosition->occupy(toSquare, makePiece(promotedToPiece, ColorWhite));
				}
				
				break;
			}
			case PieceBPawn: {
				// If the last move was a double pawn move, then update the enPassant target
				if (fromSquare.getRank() == 6 && (abs(toSquare.getRank() - fromSquare.getRank()) == 2)) {
					nextEnpassantTarget = Square(toSquare.getFile(), 5);
				}
				
				// Pawn Promotion
				if (toSquare.getRank() == 0) {
					if (promotedToPiece == PromotablePieceNone) { return nullptr; }
					tempPosition->occupy(toSquare, makePiece(promotedToPiece, ColorBlack));
				}
				break;
			}
				
			default: break;
		}
	}
	
	
	// Update the common information in the new move and next game state
	std::shared_ptr<GameState> updatedGameState = nullptr;
	try {
		updatedGameState = std::make_shared<GameState>(tempPosition->getFEN(),
													   (beforeGameState->getSideToMove() == ColorWhite)?ColorBlack:ColorWhite,
														 nextCastlingOptions,
														 nextEnpassantTarget);
		
	} catch (const std::exception & e) {
		std::cout << "\n Exception on initializing next game state: " << tempPosition->getFEN() << std::endl;
		abort();
	}
	
	// make_shared<Move> cannot be used because the Move() constructors are private
	std::shared_ptr<Move> move(new Move(fromSquare, toSquare, movedPiece, beforeGameState, updatedGameState, capturedPiece, promotedToPiece));
		
	return move;
}

std::vector<std::shared_ptr<sfc::cfw::Move>> sfc::cfw::MoveFactory::allLegalMoves(std::shared_ptr<GameState> beforeGameState) {
	std::vector<std::shared_ptr<Move>> legalMovesList;
	
	std::shared_ptr<Position> pos = std::make_shared<Position>(beforeGameState->getPosition()->getFEN());
	PositionQuerier querier(pos);
	
	for (unsigned short i = 0; i < 64; i++) {
		if ((*pos)[i] != PieceNone && getPieceColor((*pos)[i]) == beforeGameState->getSideToMove()) {
			std::set<Square> attacks = querier.attacksFrom(i, beforeGameState->getEnpassantTarget());
						
			/*------- Add castling to the attacks if exists -------*/
			if ((*pos)[i] == PieceWKing) {
				if (beforeGameState->getWhiteKingSideCastlingOption() != '-') {
					attacks.insert(Square(std::tolower(beforeGameState->getWhiteKingSideCastlingOption()) - 'a', 0));
				}
				
				if (beforeGameState->getWhiteQueenSideCastlingOption() != '-') {
					attacks.insert(Square(std::tolower(beforeGameState->getWhiteQueenSideCastlingOption()) - 'a', 0));
				}
			}
						
			if ((*pos)[i] == PieceBKing) {
				if (beforeGameState->getBlackKingSideCastlingOption() != '-') {
					attacks.insert(Square(std::tolower(beforeGameState->getBlackKingSideCastlingOption()) - 'a', 7));
				}
				
				if (beforeGameState->getBlackQueenSideCastlingOption() != '-') {
					attacks.insert(Square(std::tolower(beforeGameState->getBlackQueenSideCastlingOption()) - 'a', 7));
				}
			}
			
			/*------- Iterate attacks and check -------*/
			for (auto to : attacks) {
				// On pawn promotion, check all types of promotions
				if (getGenericPiece((*pos)[i]) == GenericPiecePawn && (to.getRank() == 0 || to.getRank() == 7)) {
					for (PromotablePiece p = PromotablePieceQueen; p <= PromotablePieceKnight; p++) {
						std::shared_ptr<Move> m = legalMove(beforeGameState, i, to, p);
						if (m) {
							legalMovesList.push_back(m);
						}
					}
				} else {
					std::shared_ptr<Move> m = legalMove(beforeGameState, i, to);
					if (m) {
						legalMovesList.push_back(m);
					}
				}
			}
		}
	}
	
	return legalMovesList;
}

// Todo add facility for NULL Move