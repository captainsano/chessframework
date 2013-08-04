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
	std::shared_ptr<Position> tempPosition = std::make_shared<Position>(*(beforeGameState->getPosition()));
	std::shared_ptr<PositionQuerier> querier = std::make_shared<PositionQuerier>(tempPosition);
	
	/*----------------- Look for NULL moves --------------------*/
	if (fromSquare == toSquare) {
		return std::shared_ptr<Move>(
									 new Move(fromSquare,
											  toSquare,
											  PieceNone,
											  beforeGameState,
											  std::make_shared<GameState>(*(beforeGameState->getPosition()),
																		  (beforeGameState->getSideToMove() == ColorWhite)?ColorBlack:ColorWhite,
																		  std::string{
																			  beforeGameState->getWhiteKingSideCastlingOption(),
																			  beforeGameState->getWhiteQueenSideCastlingOption(),
																			  beforeGameState->getBlackKingSideCastlingOption(),
																			  beforeGameState->getBlackQueenSideCastlingOption(),
																		  },
																		  beforeGameState->getEnpassantTarget())
											  )
		);
	}
	
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
	if (movedPiece == PieceNone || getPieceColor(movedPiece) != beforeGameState->getSideToMove()) {
		return nullptr;
	}
	
	CastlingType castlingType = CastlingTypeNone;
	
	/*-------------------------- White King and Castling --------------------------*/
	// If the movedPiece is King and move is castling, see if the corresponding castling option is available + no blockers
	if (movedPiece == PieceWKing && beforeGameState->getWhiteKingStatus() == KingStatusNormal) {
		// Check if kingside castling is available and if the move is castling, then check for blockers
		// Castling is not allowed when in check
		if (beforeGameState->getWhiteKingSideCastlingOption() != '-' && castlingType == CastlingTypeNone) {
			unsigned short toFile = std::tolower(beforeGameState->getWhiteKingSideCastlingOption()) - 'a';
			if (toSquare.getFile() == toFile) {
				tempPosition->vacate(fromSquare);
				tempPosition->vacate(toSquare);
				// Check that the squares between king and rook are free
				// and as king occupies those squares it is not under check
				// We explicitly check f1 and g1 because they may be missed in iteration
				if ((*tempPosition)[Square("f1")] == PieceNone && (*tempPosition)[Square("g1")] == PieceNone) {
					castlingType = CastlingTypeKSide;
					for (unsigned short i = fromSquare + 1; i < toSquare; i++) {
						if ((*tempPosition)[i] != PieceNone) {
							castlingType = CastlingTypeNone;
							break;	// blocker exists
						} else {
							tempPosition->occupy(i, PieceWKing);
							// A square in castle path is under attack
							if (querier->isKingInCheck(ColorWhite)) {
								tempPosition->vacate(i); // Vacate the king from the temp location i
								castlingType = CastlingTypeNone;
								break;
							}
							tempPosition->vacate(i);
						}
					}
				}
				
				if (castlingType == CastlingTypeKSide) {
					// Update the temp position
					tempPosition->occupy(Square("g1"), PieceWKing);
					tempPosition->vacate(toSquare);
					tempPosition->occupy(Square("f1"), PieceWRook);
					
					// Update white's castling options
					nextCastlingOptions[0] = nextCastlingOptions[1] = '-';
				} else {
					// Put back everything
					tempPosition->occupy(fromSquare, PieceWKing);
					tempPosition->occupy(toSquare, PieceWRook);
				}
			}
		}
		
		// Check if queenside castling is available and if the move is castling, then check for blockers
		// Castling is not allowed when in check
		if (beforeGameState->getWhiteQueenSideCastlingOption() != '-' && castlingType == CastlingTypeNone) {
			unsigned short toFile = std::tolower(beforeGameState->getWhiteQueenSideCastlingOption()) - 'a';
			if (toSquare.getFile() == toFile) {
				tempPosition->vacate(fromSquare);
				tempPosition->vacate(toSquare);
				// Check that the squares between king and rook are free
				// and as king occupies those squares it is not under check
				// We explicitly check c1 and d1 because they may be missed in iteration
				if ((*tempPosition)[Square("c1")] == PieceNone && (*tempPosition)[Square("d1")] == PieceNone) {
					castlingType = CastlingTypeQSide;
					for (unsigned short i = fromSquare - 1; i >= Square("c1"); i--) {
						if ((*tempPosition)[i] != PieceNone) {
							castlingType = CastlingTypeNone;
							break;	// blocker exists
						} else {
							tempPosition->occupy(i, PieceWKing);
							// A square in castle path is under attack
							if (querier->isKingInCheck(ColorWhite)) {
								tempPosition->vacate(i);	// Vacate the king from the temp location i
								castlingType = CastlingTypeNone;
								break;
							}
							tempPosition->vacate(i);
						}
					}
					
					// Explicitly check if b8 should be free in case the rook is on a8 or b8
					if (toSquare < Square("c1")) {
						if ((*tempPosition)[Square("b1")] != PieceNone) {
							castlingType = CastlingTypeNone;
						}
					}
				}
				
				if (castlingType == CastlingTypeQSide) {
					// Update the temp position
					tempPosition->occupy(Square("c1"), PieceWKing);
					tempPosition->vacate(toSquare);
					tempPosition->occupy(Square("d1"), PieceWRook);
					
					// Update white's castling options
					nextCastlingOptions[0] = nextCastlingOptions[1] = '-';
				} else {
					// Put back everything
					tempPosition->occupy(fromSquare, PieceWKing);
					tempPosition->occupy(toSquare, PieceWRook);
				}
			}
		}
	}
	
	/*-------------------------- Black King and Castling --------------------------*/
	// If the movedPiece is King and move is castling, see if the corresponding castling option is available + no blockers
	if (movedPiece == PieceBKing && beforeGameState->getBlackKingStatus() == KingStatusNormal) {
		// Check if kingside castling is available and if the move is castling, then check for blockers
		// Castling is not allowed when in check therefore, do not evaluate castling
		if (beforeGameState->getBlackKingSideCastlingOption() != '-' && castlingType == CastlingTypeNone) {
			unsigned short toFile = std::tolower(beforeGameState->getBlackKingSideCastlingOption()) - 'a';
			if (toSquare.getFile() == toFile) {
				tempPosition->vacate(fromSquare);
				tempPosition->vacate(toSquare);
				// Check that the squares between king and rook are free
				// and as king occupies those squares it is not under check
				// We explicitly check f8 and g8 because they may be missed in iteration
				if ((*tempPosition)[Square("f8")] == PieceNone && (*tempPosition)[Square("g8")] == PieceNone) {
					castlingType = CastlingTypeKSide;
					for (unsigned short i = fromSquare + 1; i <= Square("g8"); i++) {
						if ((*tempPosition)[i] != PieceNone) {
							castlingType = CastlingTypeNone;
							break;	// blocker exists
						} else {
							tempPosition->occupy(i, PieceBKing);
							// A square in castle path is under attack
							if (querier->isKingInCheck(ColorBlack)) {
								castlingType = CastlingTypeNone;
								tempPosition->vacate(i);	// Vacate the king from the temp location i
								break;
							}
							tempPosition->vacate(i);
						}
					}
				}
				
				if (castlingType == CastlingTypeKSide) {
					// Update the temp position
					tempPosition->occupy(Square("g8"), PieceBKing);
					tempPosition->vacate(toSquare);
					tempPosition->occupy(Square("f8"), PieceBRook);
					
					// Update black's castling options
					nextCastlingOptions[2] = nextCastlingOptions[3] = '-';
				} else {
					// Put back everything
					tempPosition->occupy(fromSquare, PieceBKing);
				}
			}
		}
		
		// Check if queenside castling is available and if the move is castling, then check for blockers
		// Castling is not allowed when in check
		if (beforeGameState->getBlackQueenSideCastlingOption() != '-' && castlingType == CastlingTypeNone) {
			unsigned short toFile = std::tolower(beforeGameState->getBlackQueenSideCastlingOption()) - 'a';
			if (toSquare.getFile() == toFile) {
				tempPosition->vacate(fromSquare);
				tempPosition->vacate(toSquare);
				// Check that the squares between king and rook are free
				// and as king occupies those squares it is not under check
				// We explicitly check d8 and c8 because they may be missed in iteration
				if ((*tempPosition)[Square("d8")] == PieceNone && (*tempPosition)[Square("c8")] == PieceNone) {
					castlingType = CastlingTypeQSide;
					for (unsigned short i = fromSquare - 1; i >= Square("c8"); i--) {
						if ((*tempPosition)[i] != PieceNone) {
							castlingType = CastlingTypeNone;
							break;	// blocker exists
						} else {
							tempPosition->occupy(i, PieceBKing);
							// A square in castle path is under attack
							if (querier->isKingInCheck(ColorBlack)) {
								tempPosition->vacate(i); // Vacate the king from temp location i
								castlingType = CastlingTypeNone;
								break;
							}
							tempPosition->vacate(i);
						}
					}
					
					// Explicitly check if b8 should be free in case the rook is on a8 or b8
					if (toSquare < Square("c8")) {
						if ((*tempPosition)[Square("b8")] != PieceNone) {
							castlingType = CastlingTypeNone;
						}
					}
				}
					
				if (castlingType == CastlingTypeQSide) {
					// Update the temp position
					tempPosition->occupy(Square("c8"), PieceBKing);
					tempPosition->vacate(toSquare);
					tempPosition->occupy(Square("d8"), PieceBRook);
					
					// Update black's castling options
					nextCastlingOptions[2] = nextCastlingOptions[3] = '-';
				} else {
					// Put back everything
					tempPosition->occupy(fromSquare, PieceBKing);
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
		if (getGenericPiece(movedPiece) == GenericPiecePawn &&
			(toSquare.getRank() == 2 || toSquare.getRank() == 5) &&
			toSquare == beforeGameState->getEnpassantTarget()) {
			capturedPiece = tempPosition->vacate(Square(beforeGameState->getEnpassantTarget().getFile(), (getPieceColor(movedPiece) == ColorWhite)?4:3));
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
				if (fromSquare.getRank() == 1 && (toSquare.getRank() - fromSquare.getRank() == 2)) {
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
				if (fromSquare.getRank() == 6 && (fromSquare.getRank() - toSquare.getRank()) == 2) {
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
	
	/*---- Special Case: if the captured piece was opponent's rook, then adjust the castling options ----*/
	switch (capturedPiece) {
		case PieceWRook: {
			// If the rook with castling options was captured, then remove the corresponding option
			if (nextCastlingOptions[0] != '-' && (toSquare == Square(std::tolower(nextCastlingOptions[0]) - 'a', 0))) {
				nextCastlingOptions[0] = '-';
			} else if (nextCastlingOptions[1] != '-' && (toSquare == Square(std::tolower(nextCastlingOptions[1]) - 'a', 0))) {
				nextCastlingOptions[1] = '-';
			}
			break;
		}
		case PieceBRook: {
			// If the rook from castling options has moved, then remove that option
			if (nextCastlingOptions[2] != '-' && (toSquare == Square(std::tolower(nextCastlingOptions[2]) - 'a', 7))) {
				nextCastlingOptions[2] = '-';
			} else if (nextCastlingOptions[3] != '-' && (toSquare == Square(std::tolower(nextCastlingOptions[3]) - 'a', 7))) {
				nextCastlingOptions[3] = '-';
			}
			break;
		}
		PieceNone:
		default:
			break;
	}
	
	// Update the common information in the new move and next game state
	std::shared_ptr<GameState> updatedGameState = nullptr;
	try {
		updatedGameState = std::make_shared<GameState>(*tempPosition,
													   (beforeGameState->getSideToMove() == ColorWhite)?ColorBlack:ColorWhite,
														 nextCastlingOptions,
														 nextEnpassantTarget);
		
	} catch (const std::exception & e) {
		std::cout << tempPosition->prettyString() << std::endl;
		std::cout << "\n Exception on initializing next game state: " << tempPosition->getFEN() << std::endl;
		abort();
	}
	
	// make_shared<Move> cannot be used because the Move() constructors are private
	std::shared_ptr<Move> move(new Move(fromSquare, toSquare, movedPiece, beforeGameState, updatedGameState, capturedPiece, promotedToPiece));
		
	return move;
}

std::vector<std::shared_ptr<sfc::cfw::Move>> sfc::cfw::MoveFactory::allLegalMoves(std::shared_ptr<GameState> beforeGameState, const Piece pieceType) {
	std::vector<std::shared_ptr<Move>> legalMovesList;
	
	std::shared_ptr<Position> pos = std::make_shared<Position>(*(beforeGameState->getPosition()));
	PositionQuerier querier(pos);
	
	for (unsigned short i = 0; i < 64; i++) {
		Piece movingPiece = (*pos)[i];
		
		if (movingPiece != PieceNone && getPieceColor(movingPiece) == beforeGameState->getSideToMove()) {
			
			if (pieceType != PieceNone && movingPiece != pieceType) continue;	// Consider only moves made by the requested piece type
			
			std::set<Square> attacks = querier.attacksFrom(i, beforeGameState->getEnpassantTarget());
						
			/*------- Add castling to the attacks if exists -------*/
			if (movingPiece == PieceWKing) {
				if (beforeGameState->getWhiteKingSideCastlingOption() != '-') {
					attacks.insert(Square(std::tolower(beforeGameState->getWhiteKingSideCastlingOption()) - 'a', 0));
				}
				
				if (beforeGameState->getWhiteQueenSideCastlingOption() != '-') {
					attacks.insert(Square(std::tolower(beforeGameState->getWhiteQueenSideCastlingOption()) - 'a', 0));
				}
			}
						
			if (movingPiece == PieceBKing) {
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
				if (getGenericPiece(movingPiece) == GenericPiecePawn && (to.getRank() == 0 || to.getRank() == 7)) {
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