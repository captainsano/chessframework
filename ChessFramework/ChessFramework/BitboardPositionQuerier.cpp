//
//  BitboardPositionQuerier.cpp
//  ChessFramework
//
//  Created by Santhos Baala RS on 29/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#include "BitboardPositionQuerier.h"
#include "KGBitboardUtil.h"

std::set<sfc::cfw::Square> sfc::cfw::BitboardPositionQuerier::attacksTo(const sfc::cfw::Square & aSquare, sfc::cfw::Color attackingSide) const {
    std::set<Square> attacksTo;
    
    // Iterate across the pieces and check if the square attacked is in the set.
    if (attackingSide == sfc::cfw::ColorWhite) {
        
        /// @todo Pawn
        if (position->wPawn.any()) {
            
        }
        
        /// @todo King
        
        if (position->wQueen.any()) {
            for (unsigned short i = 0; i < 64; i++) {
                if (position->wQueen[i]) {
                    std::set<Square> attacks = attacksFrom(i);
                    if (attacks.find(aSquare) != attacks.end()) {
                        attacksTo.insert(i);
                    }
                }
            }
        }
        
        if (position->wRook.any()) {
            for (unsigned short i = 0; i < 64; i++) {
                if (position->wRook[i]) {
                    std::set<Square> attacks = attacksFrom(i);
                    if (attacks.find(aSquare) != attacks.end()) {
                        attacksTo.insert(i);
                    }
                }
            }
        }
        
        if (position->wBishop.any()) {
            for (unsigned short i = 0; i < 64; i++) {
                if (position->wBishop[i]) {
                    std::set<Square> attacks = attacksFrom(i);
                    if (attacks.find(aSquare) != attacks.end()) {
                        attacksTo.insert(i);
                    }
                }
            }
        }
        
        if (position->wKnight.any()) {
            for (unsigned short i = 0; i < 64; i++) {
                if (position->wKnight[i]) {
                    std::set<Square> attacks = attacksFrom(i);
                    if (attacks.find(aSquare) != attacks.end()) {
                        attacksTo.insert(i);
                    }
                }
            }
        }
    } else {
        /// @todo Pawn
        if (position->bPawn.any()) {
            
        }
        
        /// @todo King
        
        if (position->bQueen.any()) {
            for (unsigned short i = 0; i < 64; i++) {
                if (position->bQueen[i]) {
                    std::set<Square> attacks = attacksFrom(i);
                    if (attacks.find(aSquare) != attacks.end()) {
                        attacksTo.insert(i);
                    }
                }
            }
        }
        
        if (position->bRook.any()) {
            for (unsigned short i = 0; i < 64; i++) {
                if (position->bRook[i]) {
                    std::set<Square> attacks = attacksFrom(i);
                    if (attacks.find(aSquare) != attacks.end()) {
                        attacksTo.insert(i);
                    }
                }
            }
        }
        
        if (position->bBishop.any()) {
            for (unsigned short i = 0; i < 64; i++) {
                if (position->bBishop[i]) {
                    std::set<Square> attacks = attacksFrom(i);
                    if (attacks.find(aSquare) != attacks.end()) {
                        attacksTo.insert(i);
                    }
                }
            }
        }
        
        if (position->bKnight.any()) {
            for (unsigned short i = 0; i < 64; i++) {
                if (position->bKnight[i]) {
                    std::set<Square> attacks = attacksFrom(i);
                    if (attacks.find(aSquare) != attacks.end()) {
                        attacksTo.insert(i);
                    }
                }
            }
        }
    }
    
    return attacksTo;
}

std::set<sfc::cfw::Square> sfc::cfw::BitboardPositionQuerier::attacksFrom(const sfc::cfw::Square & aSquare) const {
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