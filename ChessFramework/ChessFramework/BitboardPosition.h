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
#include "Position.h"

namespace sfc {
	namespace cfw {
				
        class BitboardPositionQuerier;
        
		/*!
		 @class BitboardPosition
		 @brief Represents a position with a bitboard data structure internally.
		 @note C++ bitset index convention: LSB=0, MSB=63. Don't follow Hyatt bitboard convention!
		 */
		class BitboardPosition : public sfc::cfw::Position {
            friend class BitboardPositionQuerier;
            
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
						
		public:			
			BitboardPosition() = default;
			BitboardPosition(const std::string & FENString);			
			
			sfc::cfw::Piece operator[] (const sfc::cfw::Square & aSquare) const override;
			
			sfc::cfw::Piece vacate(const sfc::cfw::Square & aSquare) override;
			sfc::cfw::Piece	occupy(const sfc::cfw::Square & aSquare, const Piece aPieceType) override;
			
			operator std::string () const override { return this->getFEN(); }
			std::string getFEN() const override;
			
			unsigned short pieceCount(const Piece aPieceType) const override;
			
			// For debugging purposes only
			std::string prettyString() const override;
		};
	}
}

#endif /* defined(__ChessFramework__BitboardPosition__) */
