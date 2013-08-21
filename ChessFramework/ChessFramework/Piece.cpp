//
//  Piece.cpp
//  ChessFramework
//
//  Created by Santhosbaala RS on 25/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#include "Piece.h"
#include <stdexcept>

sfc::cfw::Piece sfc::cfw::makePiece(const char & pieceSymbol, const Color & aColor) {
	switch (pieceSymbol) {
		case 'p':
		case 'P': return (aColor == ColorWhite)?PieceWPawn:PieceBPawn;

		case 'k':
		case 'K': return (aColor == ColorWhite)?PieceWKing:PieceBKing;
			
		case 'q':
		case 'Q': return (aColor == ColorWhite)?PieceWQueen:PieceBQueen;
			
		case 'r':
		case 'R': return (aColor == ColorWhite)?PieceWRook:PieceBRook;
			
		case 'b':
		case 'B': return (aColor == ColorWhite)?PieceWBishop:PieceBBishop;
			
		case 'n':
		case 'N': return (aColor == ColorWhite)?PieceWKnight:PieceBKnight;
			
		default: return PieceNone;
	}
}

sfc::cfw::Piece sfc::cfw::makePieceCaseColor(const char & pieceSymbol) {
	switch (pieceSymbol) {
		case 'p': return PieceBPawn;
		case 'P': return PieceWPawn;
			
		case 'k': return PieceBKing;
		case 'K': return PieceWKing;
			
		case 'q': return PieceBQueen;
		case 'Q': return PieceWQueen;
			
		case 'r': return PieceBRook;
		case 'R': return PieceWRook;
			
		case 'b': return PieceBBishop;
		case 'B': return PieceWBishop;
			
		case 'n': return PieceBKnight;
		case 'N': return PieceWKnight;
			
		default: return PieceNone;
	}
}

sfc::cfw::GenericPiece sfc::cfw::makeGenericPiece(const char & pieceSymbol) {
	switch (pieceSymbol) {
		case 'p':
		case 'P': return GenericPiecePawn;
			
		case 'k':
		case 'K': return GenericPieceKing;
			
		case 'q':
		case 'Q': return GenericPieceQueen;
			
		case 'r':
		case 'R': return GenericPieceRook;
			
		case 'b':
		case 'B': return GenericPieceBishop;
			
		case 'n':
		case 'N': return GenericPieceKnight;
			
		default: return GenericPieceNone;
	}
}

sfc::cfw::PromotablePiece sfc::cfw::makePromotablePiece(const char & pieceSymbol) {
	switch (pieceSymbol) {
		case 'q':
		case 'Q': return PromotablePieceQueen;
			
		case 'r':
		case 'R': return PromotablePieceRook;
			
		case 'b':
		case 'B': return PromotablePieceBishop;
			
		case 'n':
		case 'N': return PromotablePieceKnight;
			
		default: return PromotablePieceNone;
	}
}