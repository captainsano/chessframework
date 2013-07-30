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
#include "Piece.h"

namespace sfc {
	namespace cfw {
		
		class Square;
		
		class Position {
			
		protected:
			virtual bool validateFEN(const std::string &FENString);
			
		public:
			virtual sfc::cfw::Piece operator[] (const sfc::cfw::Square & aSquare) const = 0;
			
			virtual sfc::cfw::Piece vacate(const sfc::cfw::Square & aSquare) = 0;
			virtual sfc::cfw::Piece	occupy(const sfc::cfw::Square & aSquare, const Piece aPieceType) = 0;
			
			virtual operator std::string () const = 0;
			virtual std::string getFEN() const = 0;
						
			// For debugging purposes only
			virtual std::string prettyString() const = 0;
			
			/// @todo API to vacate/occupy a square.
			
			virtual ~Position() = default;
		};
		
	}
}

#endif /* defined(__ChessFramework__Position__) */
