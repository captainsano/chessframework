//
//  BitboardPositionQuerier.cpp
//  ChessFramework
//
//  Created by Santhos Baala RS on 29/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#include "BitboardPositionQuerier.h"
#include "KGBitboardUtil.h"

std::set<sfc::cfw::Square> sfc::cfw::BitboardPositionQuerier::attacksTo(const sfc::cfw::Square & aSquare) const {
    std::set<Square> attacksTo;
    
    return attacksTo;
}

std::set<sfc::cfw::Square> sfc::cfw::BitboardPositionQuerier::attacksFrom(const sfc::cfw::Square & aSquare) const {
    std::set<Square> attacksFrom;
    std::bitset<64> attackedSquares = 0;
    
    if ((*position)[aSquare] == PieceNone) return attacksFrom;
    
    std::bitset<64> whiteOccupied = position->wPawn | position->wKing | position->wQueen | position->wRook | position->wBishop | position->wKnight;
    std::bitset<64> blackOccupied = position->bPawn | position->bKing | position->bQueen | position->bRook | position->bBishop | position->bKnight;
    
    switch ((*position)[aSquare]) {
        case PieceWPawn:
        case PieceWKing:
        case PieceWQueen:
            
        case PieceWBishop:
        case PieceBBishop: {
            attackedSquares = KGBitboardUtil::bishopAttacks((whiteOccupied | blackOccupied).to_ullong(), aSquare);
            break;
        }
            
        case PieceWKnight: {
            attackedSquares = KGBitboardUtil::knightAttacks(whiteOccupied.to_ullong(), aSquare);
            break;  
        }
            
        case PieceBPawn:
        case PieceBKing:
        case PieceBQueen:
        
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