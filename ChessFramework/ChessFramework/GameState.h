//
//  GameState.h
//  ChessFramework
//
/// @author Santhos Baala RS
/// @copyright (c) 2013 64cloud. All rights reserved.
/// @version 0.1
//

#ifndef __ChessFramework__GameState__
#define __ChessFramework__GameState__

#include <string>
#include <memory>
#include "Piece.h"
#include "Square.h"
#include "Position.h"

namespace sfc {
	namespace cfw {
		class GameState {
			std::shared_ptr<Position>	position			= nullptr;
			sfc::cfw::Color				sideToMove			= sfc::cfw::ColorWhite;
			sfc::cfw::Square			enpassantTarget		= sfc::cfw::Square(0);
			char						castlingOptions[4]	= {'-', '-', '-', '-'};
			
			int							whiteKingStatus		= 0;	/// @todo Change type to king status enum
			int							blackKingStatus		= 0;	/// @todo Change type to king status enum
			
		public:
			// Default instantiation is prevented by ambiguity introduced
			// due to the ambiguity introduced by the other constructor
			GameState(std::string && FENString = "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR",
					  const sfc::cfw::Color & aSideToMove = sfc::cfw::ColorWhite,
					  const std::string castlingOptions = "----",
					  const sfc::cfw::Square & aEnpassantTarget = sfc::cfw::Square(0)
					  );
		};
	}
}

#endif /* defined(__ChessFramework__GameState__) */
