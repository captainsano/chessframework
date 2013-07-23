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
				
		class BitboardPosition : public sfc::cfw::Position {
			std::bitset<64> wPawn	= 0x0000000000000000;
			std::bitset<64> wKing	= 0x0000000000000000;
			std::bitset<64> wQueen	= 0x0000000000000000;
			std::bitset<64> wRook	= 0x0000000000000000;
			std::bitset<64> wBishop	= 0x0000000000000000;
			std::bitset<64> bPawn	= 0x0000000000000000;
			std::bitset<64> bKing	= 0x0000000000000000;
			std::bitset<64> bQueen	= 0x0000000000000000;
			std::bitset<64> bRook	= 0x0000000000000000;
			std::bitset<64> bBishop	= 0x0000000000000000;
						
		public:			
			BitboardPosition() = default;
			BitboardPosition(const std::string & FENString);			
			
			virtual int operator[] (const sfc::cfw::Square & aSquare) override;	/// @todo Replace with pieceType enum as return
			virtual std::vector<std::shared_ptr<sfc::cfw::Square>> attacksFrom(const sfc::cfw::Square & aSquare) const override;
			virtual std::vector<std::shared_ptr<sfc::cfw::Square>> attacksTo(const sfc::cfw::Square & aSquare, int side) const override;	// Second parameter determines the side to return
			virtual std::vector<std::shared_ptr<sfc::cfw::Square>> attacksByPiece(int pieceType) const override;	/// @todo Replace with pieceType enum
			
			virtual operator std::string () const override { return this->getFEN(); }
			virtual std::string getFEN() const override;
			
			// For debugging purposes only
			virtual std::string prettyString() const override;
		};
	}
}

#endif /* defined(__ChessFramework__BitboardPosition__) */
