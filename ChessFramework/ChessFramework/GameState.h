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
        
        typedef enum _KingStatus {
            KingStatusNormal    = 0x0,
            KingStatusCheck     = 0x1,
            KingStatusCheckMate = 0x2,
            KingStatusStaleMate = 0x3,
        } KingStatus;
        
		class GameState {
			std::shared_ptr<Position>	position			= nullptr;
			Color       sideToMove			= ColorWhite;
			Square      enpassantTarget		= Square(0);
			char        castlingOptions[4]	= {'-', '-', '-', '-'};
			
			KingStatus	whiteKingStatus		= KingStatusNormal;	/// @todo Change type to king status enum
			KingStatus	blackKingStatus		= KingStatusNormal;	/// @todo Change type to king status enum
			
		public:
			// Default instantiation is prevented by ambiguity introduced
			// due to the ambiguity introduced by the other constructor
			GameState(std::string && FENString = "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR",
					  const Color & aSideToMove = ColorWhite,
					  const std::string & aCastlingOptions = "----",
					  const Square & aEnpassantTarget = Square(0)
					  );
            
            Color   getSideToMove();
            Square  getEnpassantTarget();
            char    getWhiteKingSideCastlingOption()    { return this->castlingOptions[0]; }
            char    getWhiteQueenSideCastlingOption()   { return this->castlingOptions[1]; }
            char    getBlackKingSideCastlingOption()    { return this->castlingOptions[2]; }
            char    getBlackQueenSideCastlingOption()   { return this->castlingOptions[3]; }
            
            KingStatus  getWhiteKingStatus() { return this->whiteKingStatus; }
            KingStatus  getBlackKingStatus() { return this->blackKingStatus; }
            bool        hasSufficientMaterial();
        };
	}
}

#endif /* defined(__ChessFramework__GameState__) */
