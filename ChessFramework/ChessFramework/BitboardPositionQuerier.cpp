//
//  BitboardPositionQuerier.cpp
//  ChessFramework
//
//  Created by Santhos Baala RS on 29/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#include "BitboardPositionQuerier.h"
#include "KGBitboardUtil.h"

unsigned short sfc::cfw::BitboardPositionQuerier::pieceCount(const Piece aPieceType) const {
    if (aPieceType == PieceNone) {
        return 64 - (position->wPawn | position->wKing | position->wQueen | position->wRook |
                     position->wBishop |position->wKnight | position->bPawn | position->bKing |
                     position->bQueen | position->bRook | position->bBishop | position->bKnight).count();
    }
    
    return position->pieceBitmap(aPieceType).count();
}

std::set<sfc::cfw::Square> sfc::cfw::BitboardPositionQuerier::attacksTo(const Square & aSquare, Color attackingSide) const {
    std::set<Square> attacksTo;
    
    return attacksTo;
}

std::set<sfc::cfw::Square> sfc::cfw::BitboardPositionQuerier::attacksFrom(const Square & aSquare) const {
    std::set<Square> attacksFrom;
    std::bitset<64> attackedSquares = 0;
    
    if ((*position)[aSquare] == PieceNone) return attacksFrom;
    
    std::bitset<64> whiteOccupied = position->wPawn | position->wKing | position->wQueen | position->wRook | position->wBishop | position->wKnight;
    std::bitset<64> blackOccupied = position->bPawn | position->bKing | position->bQueen | position->bRook | position->bBishop | position->bKnight;
    
    switch ((*position)[aSquare]) {
        case PieceWPawn: {
            attackedSquares = KGBitboardUtil::pawnAttacks(whiteOccupied.to_ullong(), blackOccupied.to_ullong(), aSquare, true);
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

bool sfc::cfw::BitboardPositionQuerier::attackIntersectsPiece(const Piece aPiece1, const Piece aPiece2) const {
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