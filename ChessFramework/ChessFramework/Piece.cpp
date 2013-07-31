//
//  Piece.cpp
//  ChessFramework
//
//  Created by Santhosbaala RS on 25/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#include "Piece.h"
#include <stdexcept>

sfc::cfw::Color sfc::cfw::getPieceColor(const Piece & aPiece) {
    if (aPiece >= PieceWPawn && aPiece <= PieceWKnight) {
        return ColorWhite;
    } else if (aPiece >= PieceBPawn && aPiece <= PieceBKnight) {
        return ColorBlack;
    }
    
    throw std::invalid_argument("Color cannot be determined for an empty piece");
    return ColorWhite;
}

sfc::cfw::Piece sfc::cfw::makePiece(const GenericPiece aPiece, const Color aColor) {
    return (Piece)((aColor << 3) | aPiece);
}

sfc::cfw::Piece sfc::cfw::makePiece(const PromotablePiece aPiece, const Color aColor) {
    return (Piece)((aColor << 3) | aPiece);
}