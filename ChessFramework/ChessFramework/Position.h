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
			// The subclasses have to support operator[] that supplies a reference for assignment.
			
			virtual std::vector<std::shared_ptr<sfc::cfw::Square>> attacksFrom(const sfc::cfw::Square & aSquare) const = 0;
			virtual std::vector<std::shared_ptr<sfc::cfw::Square>> attacksTo(const sfc::cfw::Square & aSquare, const sfc::cfw::Color & aSide) const = 0;
			virtual std::vector<std::shared_ptr<sfc::cfw::Square>> attacksByPiece(const Piece & aPieceType) const = 0;
			
			virtual operator std::string () const = 0;
			virtual std::string getFEN() const = 0;
			
			virtual unsigned short pieceCount(const Piece aPieceType) const = 0;
			
			// For debugging purposes only
			virtual std::string prettyString() const = 0;
			
			virtual ~Position() = default;
		};
		
	}
}

#endif /* defined(__ChessFramework__Position__) */
