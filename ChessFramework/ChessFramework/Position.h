//
//  Position.h
//  ChessFramework
//
/// @author Santhos Baala RS
/// @copyright (c) 2013 64cloud. All rights reserved.
/// @version 0.1
//

#ifndef __ChessFramework__Position__
#define __ChessFramework__Position__

#include <string>
#include <vector>

namespace sfc {
	namespace cfw {
		
		class Square;
		
		class Position {
			
		protected:
			virtual bool validateFEN(const std::string &FENString);
			
		public:
			virtual int operator[] (const sfc::cfw::Square & aSquare) = 0;	/// @todo Replace with pieceType enum as return
			virtual std::vector<std::shared_ptr<sfc::cfw::Square>> attacksFrom(const sfc::cfw::Square & aSquare) const = 0;
			virtual std::vector<std::shared_ptr<sfc::cfw::Square>> attacksTo(const sfc::cfw::Square & aSquare, int side) const = 0;	// Second parameter determines the side to return
			virtual std::vector<std::shared_ptr<sfc::cfw::Square>> attacksByPiece(int pieceType) const = 0;	/// @todo Replace with pieceType enum
			
			virtual operator std::string () const = 0;
			virtual std::string getFEN() const = 0;
			
			// For debugging purposes only
			virtual std::string prettyString() const = 0;
			
			virtual ~Position() = default;
		};
		
	}
}

#endif /* defined(__ChessFramework__Position__) */
