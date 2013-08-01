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
			GameState(const std::string & FENString = std::string("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR"),
					  const Color & aSideToMove = ColorWhite,
					  const std::string & aCastlingOptions = "----",
					  const Square & aEnpassantTarget = Square(0)
					  );
			
			std::shared_ptr<const Position> getPosition() const {
				return this->position;
			}
            
            Color   getSideToMove() const                   { return this->sideToMove; }
            Square  getEnpassantTarget() const              { return this->enpassantTarget; }
            char    getWhiteKingSideCastlingOption() const  { return this->castlingOptions[0]; }
            char    getWhiteQueenSideCastlingOption() const { return this->castlingOptions[1]; }
            char    getBlackKingSideCastlingOption() const  { return this->castlingOptions[2]; }
            char    getBlackQueenSideCastlingOption() const { return this->castlingOptions[3]; }
            
            KingStatus  getWhiteKingStatus() const { return this->whiteKingStatus; }
            KingStatus  getBlackKingStatus() const { return this->blackKingStatus; }
            bool        hasSufficientMaterial() const;
            
            std::string getFEN(bool chess960 = false) const;
        };
	}
}

#endif /* defined(__ChessFramework__GameState__) */
