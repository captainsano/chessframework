//
//  BitboardPositionQuerier.cpp
//  ChessFramework
//
//  Created by Santhos Baala RS on 29/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#include "PositionQuerier.h"
#include "KGBitboardUtil.h"
#include <set>

unsigned short sfc::cfw::PositionQuerier::pieceCount(const Piece aPieceType) const {
    if (aPieceType == PieceNone) {
        return 64 - (position->wPawn | position->wKing | position->wQueen | position->wRook |
                     position->wBishop |position->wKnight | position->bPawn | position->bKing |
                     position->bQueen | position->bRook | position->bBishop | position->bKnight).count();
    }
    
    return position->pieceBitmap(aPieceType).count();
}

std::set<sfc::cfw::Square> sfc::cfw::PositionQuerier::attacksTo(const Square & aSquare, Color attackingSide) const {
    std::set<Square> attacksTo;
    
    return attacksTo;
}

std::set<sfc::cfw::Square> sfc::cfw::PositionQuerier::attacksFrom(const Square & aSquare, Square enPassantTarget) const {
    std::set<Square> attacksFrom;
    std::bitset<64> attackedSquares = 0;
    
    if ((*position)[aSquare] == PieceNone) return attacksFrom;
    
    std::bitset<64> whiteOccupied = position->wPawn | position->wKing | position->wQueen | position->wRook | position->wBishop | position->wKnight;
    std::bitset<64> blackOccupied = position->bPawn | position->bKing | position->bQueen | position->bRook | position->bBishop | position->bKnight;
    
    switch ((*position)[aSquare]) {
        case PieceWPawn: {
            attackedSquares = KGBitboardUtil::pawnAttacks(whiteOccupied.to_ullong(), blackOccupied.to_ullong(), aSquare, true);
            
            // Add the en passant target, if applicable to the pawn attacked squares
            if (enPassantTarget != 0) {
                // Check if the en-passant target is valid.
                if (enPassantTarget.getRank() == 5 &&
                    (enPassantTarget.getFile() == aSquare.getFile() + 1 ||
                     enPassantTarget.getFile() == aSquare.getFile() - 1)) {
                    // check if a black pawn exists
                    if ((*position)[Square(enPassantTarget.getFile(), enPassantTarget.getRank() - 1)] == PieceBPawn &&
                        (*position)[enPassantTarget] == PieceNone) {
						// check if a white pawn exists on left flank
						if (enPassantTarget.getFile() - 1 >= 0) {
							if (Square(enPassantTarget.getFile() - 1, 4) == aSquare) {
								attackedSquares.set(enPassantTarget);
							}
						}
						
						// check if a white pawn exists on right flank
						if (enPassantTarget.getFile() + 1 < 8) {
							if (Square(enPassantTarget.getFile() + 1, 4) == aSquare) {
								attackedSquares.set(enPassantTarget);
							}
						}
                    }
                }
            }
            
            break;
        }
            
        case PieceWKing: {
            attackedSquares = KGBitboardUtil::kingAttacks(whiteOccupied.to_ullong(), blackOccupied.to_ullong(), aSquare, true);
            /// @todo: Handle castling
            break;
        }
            
        case PieceWBishop:
        case PieceBBishop: {
            attackedSquares = KGBitboardUtil::bishopAttacks((whiteOccupied | blackOccupied).to_ullong(), aSquare);
            break;
        }
            
        case PieceWKnight: {
            attackedSquares = KGBitboardUtil::knightAttacks(whiteOccupied.to_ullong(), aSquare);
            break;  
        }
            
        case PieceBPawn: {
            attackedSquares = KGBitboardUtil::pawnAttacks(whiteOccupied.to_ullong(), blackOccupied.to_ullong(), aSquare, false);
            
            // Add the en passant target, if applicable to the pawn attacked squares
            if (enPassantTarget != 0) {
                // Check if the en-passant target is valid.
                if (enPassantTarget.getRank() == 2 &&
                    (enPassantTarget.getFile() == aSquare.getFile() + 1 ||
                     enPassantTarget.getFile() == aSquare.getFile() - 1)) {
                        // check if a black pawn exists and the enpassant target is vacant
                        if ((*position)[Square(enPassantTarget.getFile(), enPassantTarget.getRank() + 1)] == PieceWPawn &&
                            (*position)[enPassantTarget] == PieceNone) {
                            // check if a black pawn exists on left flank
							if (enPassantTarget.getFile() - 1 >= 0) {
								if (Square(enPassantTarget.getFile() - 1, 3) == aSquare) {
									attackedSquares.set(enPassantTarget);
								}
							}
							
							// check if a black pawn exists on right flank
							if (enPassantTarget.getFile() + 1 < 8) {
								if (Square(enPassantTarget.getFile() + 1, 3) == aSquare) {
									attackedSquares.set(enPassantTarget);
								}
							}
                        }
                    }
            }
            
            break;
        }
        case PieceBKing: {
            attackedSquares = KGBitboardUtil::kingAttacks(whiteOccupied.to_ullong(), blackOccupied.to_ullong(), aSquare, false);
            /// @todo: Handle castling
            break;
        }
            
        case PieceWQueen:
        case PieceBQueen: {
            attackedSquares = KGBitboardUtil::queenAttacks((whiteOccupied | blackOccupied).to_ullong(), aSquare);
            break;
        }
        
        case PieceWRook:
        case PieceBRook: {
            attackedSquares = KGBitboardUtil::rookAttacks((whiteOccupied | blackOccupied).to_ullong(), aSquare);
            break;
        }
         
        case PieceBKnight: {
            attackedSquares = KGBitboardUtil::knightAttacks(blackOccupied.to_ullong(), aSquare);
            break;
        }
            
        default:
            // Do nothing
            break;
    }
    
    if (attackedSquares.any()) {
        for (unsigned short i = 0; i < 64; i++) {
            if (attackedSquares[i]) {
                attacksFrom.insert(Square(i));
            }
        }
    }
    
    return attacksFrom;
}

#pragma mark - Experimental

bool sfc::cfw::PositionQuerier::attackIntersectsPiece(const Piece aPiece1, const Piece aPiece2) const {
    if (aPiece1 == PieceNone || aPiece2 == PieceNone) {
        return false;
    }
    
    std::bitset<64> attacks = 0;
    std::bitset<64> whiteOccupied = position->wPawn | position->wKing | position->wQueen | position->wRook | position->wBishop | position->wKnight;
    std::bitset<64> blackOccupied = position->bPawn | position->bKing | position->bQueen | position->bRook | position->bBishop | position->bKnight;
    
    // Get the square for aPiece
    for (unsigned int i = 0; i < 64; i++) {
        if ((*position)[i] == aPiece1) {
            switch (aPiece1) {
                case PieceWPawn: {
                    attacks |= KGBitboardUtil::pawnAttacks(whiteOccupied.to_ullong(), blackOccupied.to_ullong(), i, true);
                    break;
                }
                    
                case PieceWKing: {
                    attacks |= KGBitboardUtil::kingAttacks(whiteOccupied.to_ullong(), blackOccupied.to_ullong(), i, true);
                    /// @todo: Handle castling
                    break;
                }
                    
                case PieceWBishop:
                case PieceBBishop: {
                    attacks |= KGBitboardUtil::bishopAttacks((whiteOccupied | blackOccupied).to_ullong(), i);
                    break;
                }
                    
                case PieceWKnight: {
                    attacks |= KGBitboardUtil::knightAttacks(whiteOccupied.to_ullong(), i);
                    break;
                }
                    
                case PieceBPawn: {
                    attacks |= KGBitboardUtil::pawnAttacks(whiteOccupied.to_ullong(), blackOccupied.to_ullong(), i, false);
                    break;
                }
                case PieceBKing: {
                    attacks |= KGBitboardUtil::kingAttacks(whiteOccupied.to_ullong(), blackOccupied.to_ullong(), i, false);
                    /// @todo: Handle castling
                    break;
                }
                    
                case PieceWQueen:
                case PieceBQueen: {
                    attacks |= KGBitboardUtil::queenAttacks((whiteOccupied | blackOccupied).to_ullong(), i);
                    break;
                }
                    
                case PieceWRook:
                case PieceBRook: {
                    attacks |= KGBitboardUtil::rookAttacks((whiteOccupied | blackOccupied).to_ullong(), i);
                    break;
                }
                    
                case PieceBKnight: {
                    attacks |= KGBitboardUtil::knightAttacks(blackOccupied.to_ullong(), i);
                    break;
                }
                    
                default: break;
            }
        }
    }
    
    if (attacks.none()) {
        return false;
    }
    
    if ((attacks & position->pieceBitmap(aPiece2)).any()) {
        return true;
    }
    
    return false;
}

bool sfc::cfw::PositionQuerier::isKingInCheck(Color kingColor) const {
    for (Piece i = ((kingColor == ColorWhite)?PieceBPawn:PieceWPawn);
         i <= ((kingColor == ColorWhite)?PieceBKnight:PieceWKnight);
         i++) {
        if (attackIntersectsPiece(i, (kingColor == ColorWhite)?PieceWKing:PieceBKing)) {
            return true;
        }
    }
    
    return false;
}

sfc::cfw::KingStatus sfc::cfw::PositionQuerier::getKingStatus(Color kingColor, Square enPassantTarget) const {
    Piece kingPiece = (kingColor == ColorWhite)?PieceWKing:PieceBKing;
    
    /*--------------- Check if king can escape ---------------*/
    std::set<Square> kingAttacks;
    Square currentKingPosition;
    
    for (unsigned short i = 0; i < 64; i++) {
        if ((*position)[i] == kingPiece) {
            kingAttacks = attacksFrom(i);
            currentKingPosition = i;
            break;
        }
    }
    
    bool kingCanEscape = false;
    for (auto sq : kingAttacks) {
        // Copy the current position and adjust the King's location
        std::shared_ptr<Position> temp = std::make_shared<Position>(*position);
        temp->vacate(currentKingPosition);
        temp->occupy(sq, kingPiece);
        
        PositionQuerier q(temp);
        if (!q.isKingInCheck(kingColor)) {
            kingCanEscape = true;
            break;
        }
    }
    
    /*----------------- Determine the number of checks being issued ---------------*/
    int numChecks = 0;
    Square checkingPieceSquare;
    for (unsigned short i = 0; i < 64; i++) {
        // skip empty squares and same side pieces
        if ((*position)[i] == PieceNone || getPieceColor((*position)[i]) == kingColor) continue;
        
        std::set<Square> pieceAttacks = attacksFrom(i);
        
        // Attack Intersects
        if (pieceAttacks.find(currentKingPosition) != pieceAttacks.end()) {
            numChecks++;
            checkingPieceSquare = i;
        }
    }
    
    /*------- If number of checks is >= 2 and king cannot escape, then it is a checkmate -------*/
    if (numChecks >= 2 && !kingCanEscape) {
        return KingStatusCheckMate;
    }
    
    /*------ If number of checks is 1 and king cannot escape, then check if atleast -------------
     -------- one piece can block the check path or capture the checker -----------------------*/
    if (numChecks == 1 && !kingCanEscape) {
        // Find if any move by the current side pieces can parry the check
        bool canParryCheckmate = false;
        for (unsigned short i = 0; i < 64; i++) {
            // skip empty squares and opposite side pieces
            if ((*position)[i] == PieceNone || getPieceColor((*position)[i]) != kingColor || (*position)[i] == kingPiece) continue;
            
            std::set<Square> pieceAttacks = attacksFrom(i, enPassantTarget);
            
            for (Square sq : pieceAttacks) {
                std::shared_ptr<Position> temp = std::make_shared<Position>(*position);
                temp->vacate(i);
                temp->occupy(sq, (*position)[i]);
                
                // If piece is pawn and option is enpassant, remove the corresponding opponent's pawn
                if (sq == enPassantTarget && (*position)[i] == makePiece(GenericPiecePawn, kingColor)) {
                    if (kingColor == ColorWhite) {
                        temp->vacate(Square(enPassantTarget.getFile(), enPassantTarget.getRank() - 1));
                    } else {
                        temp->vacate(Square(enPassantTarget.getFile(), enPassantTarget.getRank() + 1));
                    }
                }
                
                PositionQuerier q(temp);
                if (!q.isKingInCheck(kingColor)) {
                    canParryCheckmate = true;
                    break;
                }
            }
            
            if (canParryCheckmate) break;
        }
        
        if (!canParryCheckmate) {
            return KingStatusCheckMate;
        }
    }
	   
    // King does not have escape squares - look for other legal moves
    if (numChecks == 0 && !kingCanEscape) {
        bool legalMovesExist = false;
        for (unsigned short i = 0; i < 64; i++) {
            // skip empty squares and opposite side pieces
            if ((*position)[i] == PieceNone || getPieceColor((*position)[i]) != kingColor || (*position)[i] == kingPiece) continue;
            
            std::set<Square> pieceAttacks = attacksFrom(i, enPassantTarget);
            
            for (Square sq : pieceAttacks) {
                std::shared_ptr<Position> temp = std::make_shared<Position>(*position);
                temp->vacate(i);
                temp->occupy(sq, (*position)[i]);
                
                // If piece is pawn and option is enpassant, remove the corresponding opponent's pawn
                if (sq == enPassantTarget && (*position)[i] == makePiece(GenericPiecePawn, kingColor)) {
                    if (kingColor == ColorWhite) {
                        temp->vacate(Square(enPassantTarget.getFile(), enPassantTarget.getRank() - 1));
                    } else {
                        temp->vacate(Square(enPassantTarget.getFile(), enPassantTarget.getRank() + 1));
                    }
                }
                
                PositionQuerier q(temp);
                if (!q.isKingInCheck(kingColor)) {
                    legalMovesExist = true;
                    break;
                }
            }
            
            if (legalMovesExist) break;
        }
        
        if (!legalMovesExist) {
            return KingStatusStaleMate;
        }
    }
    
	// At this point, if there is no checkmate
	if (numChecks >= 1) {
		return KingStatusCheck;
	}
	
    return KingStatusNormal;
}