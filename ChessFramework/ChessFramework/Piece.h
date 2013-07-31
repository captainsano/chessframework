//
//  Piece.h
//  ChessFramework
//
/// @author Santhos Baala RS
/// @copyright (c) 2013 64cloud. All rights reserved.
/// @version 0.1
//

#ifndef __ChessFramework__Piece__
#define __ChessFramework__Piece__

namespace sfc {
	namespace cfw {
		// 1-bit identifying the color of the piece or a square
		typedef enum _Color {
			ColorWhite		= 0x0,
			ColorBlack		= 0x1
		} Color;
		
		// 4-bit pieces code. MSB is 0 for white pieces and 1 for black
		typedef enum _Piece {
			PieceNone		= 0x0,	// 0000
			PieceWPawn		= 0x1,	// 0001
			PieceWKing		= 0x2,	// 0010
			PieceWQueen		= 0x3,	// 0011
			PieceWRook		= 0x4,	// 0100
			PieceWBishop	= 0x5,	// 0101
			PieceWKnight	= 0x6,	// 0110
			
			PieceBPawn		= 0x9,	// 1001
			PieceBKing		= 0xA,	// 1010
			PieceBQueen		= 0xB,	// 1011
			PieceBRook		= 0xC,	// 1100
			PieceBBishop	= 0xD,	// 1101
			PieceBKnight	= 0xE	// 1110
		} Piece;
		
		// Pieces without color (Same as White).
		typedef enum _GenericPiece {
			GenericPieceNone	= 0x0,	// -000
			GenericPiecePawn	= 0x1,	// -001
			GenericPieceKing	= 0x2,	// -010
			GenericPieceQueen	= 0x3,	// -011
			GenericPieceRook	= 0x4,	// -100
			GenericPieceBishop	= 0x5,	// -101
			GenericPieceKnight	= 0x6	// -110
		} GenericPiece;
		
		// Generic piece codes that a pawn can promote to
		typedef enum _PromotablePiece {
			PromotablePieceQueen	= 0x3,	// -011
			PromotablePieceRook		= 0x4,	// -100
			PromotablePieceBishop	= 0x5,	// -101
			PromotablePieceKnight	= 0x6	// -110
		} PromotablePiece;
        
        Color getPieceColor(const Piece & aPiece);
        Piece makePiece(const GenericPiece aPiece, const Color aColor);
	}
}

#endif /* defined(__ChessFramework__Piece__) */
