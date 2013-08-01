//
//  Move.cpp
//  ChessFramework
//
//  Created by Santhos Baala RS on 31/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#include "Move.h"

sfc::cfw::CastlingType sfc::cfw::Move::getCastlingType() const {
	if (this->pieceMoved == PieceWKing) {
		if (gameStateBeforeMove->getWhiteKingSideCastlingOption() != '-' &&
			(toSquare == Square(std::tolower(gameStateBeforeMove->getWhiteKingSideCastlingOption()) - 'a', 0))) {
			return CastlingTypeKSide;
		}
		
		if (gameStateBeforeMove->getWhiteQueenSideCastlingOption() != '-' &&
			(toSquare == Square(std::tolower(gameStateBeforeMove->getWhiteQueenSideCastlingOption()) - 'a', 0))) {
			return CastlingTypeQSide;
		}
	}
	
	if (this->pieceMoved == PieceBKing) {
		if (gameStateBeforeMove->getBlackKingSideCastlingOption() != '-' &&
			(toSquare == Square(std::tolower(gameStateBeforeMove->getBlackKingSideCastlingOption()) - 'a', 7))) {
			return CastlingTypeKSide;
		}
		
		if (gameStateBeforeMove->getBlackQueenSideCastlingOption() != '-' &&
			(toSquare == Square(std::tolower(gameStateBeforeMove->getBlackQueenSideCastlingOption()) - 'a', 7))) {
			return CastlingTypeQSide;
		}
	}
	
	return CastlingTypeNone;
}