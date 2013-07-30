//
//  BitboardPosition.h
//  ChessFramework
//
/// @author Santhos Baala RS
/// @copyright (c) 2013 64cloud. All rights reserved.
/// @version 0.1
//

#ifndef __ChessFramework__BitboardPosition__
#define __ChessFramework__BitboardPosition__

#include <bitset>
#include "Square.h"
#include "Piece.h"

namespace sfc {
	namespace cfw {
				
        class PositionQuerier;
        
		/*!
		 @class BitboardPosition
		 @brief Represents a position with a bitboard data structure internally.
		 @note C++ bitset index convention: LSB=0, MSB=63. Don't follow Hyatt bitboard convention!
		 */
		class Position {
            friend class PositionQuerier;
            
			std::bitset<64> wPawn	= 0x0000000000000000;
			std::bitset<64> wKing	= 0x0000000000000000;
			std::bitset<64> wQueen	= 0x0000000000000000;
			std::bitset<64> wRook	= 0x0000000000000000;
			std::bitset<64> wBishop	= 0x0000000000000000;
			std::bitset<64> wKnight	= 0x0000000000000000;
			
			std::bitset<64> bPawn	= 0x0000000000000000;
			std::bitset<64> bKing	= 0x0000000000000000;
			std::bitset<64> bQueen	= 0x0000000000000000;
			std::bitset<64> bRook	= 0x0000000000000000;
			std::bitset<64> bBishop	= 0x0000000000000000;
			std::bitset<64> bKnight	= 0x0000000000000000;
						
            bool validateFEN(const std::string & FENString);
            std::bitset<64> & pieceBitmap(const Piece aPieceType);
            const std::bitset<64> & pieceBitmap(const Piece aPieceType) const;
            
		public:			
			Position() = default;
			Position(const std::string & FENString);
			
			Piece operator[] (const Square & aSquare) const;
			
			Piece vacate(const Square & aSquare);
			Piece occupy(const Square & aSquare, const Piece aPieceType);
			
			operator std::string () const { return this->getFEN(); }
			std::string getFEN() const;
                    
			// For debugging purposes only
			std::string prettyString() const;
		};
	}
}

#endif /* defined(__ChessFramework__BitboardPosition__) */
