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
#include <regex>
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
			std::shared_ptr<Position>	position = nullptr;
			Color       sideToMove			= ColorWhite;
			Square      enpassantTarget		= Square(0);
			char        castlingOptions[4]	= {'-', '-', '-', '-'};
			
			KingStatus	whiteKingStatus		= KingStatusNormal;	
			KingStatus	blackKingStatus		= KingStatusNormal;
			
			void validate();
			
		public:
						
			GameState(const Position & aPosition,
					  const Color & aSideToMove = ColorWhite,
					  const std::string & aCastlingOptions = "----",
					  const Square & aEnpassantTarget = Square(0)
					  ) :
			position(std::make_shared<Position>(aPosition)),
			sideToMove(aSideToMove),
			// Castling Options have to be initialized separately
			enpassantTarget(aEnpassantTarget) {
				/* Sanity Checks on castling */
				if (aCastlingOptions.size() < 4) {
					throw std::invalid_argument("Insufficient castling options information");
				}
				// check for valid characters in castling options string
				/// @note In chess 960 the kingside rook can only be placed between c-h and queenside a-f
				if (!std::regex_match(aCastlingOptions, std::regex("[KC-H\\-][QA-F\\-][kc-h\\-][qa-f\\-]"))) {
					throw std::invalid_argument("Malformed castling options string");
				}
				
				this->castlingOptions[0] = (aCastlingOptions[0] == 'K')?'H':aCastlingOptions[0];
				this->castlingOptions[1] = (aCastlingOptions[1] == 'Q')?'A':aCastlingOptions[1];
				this->castlingOptions[2] = (aCastlingOptions[2] == 'k')?'h':aCastlingOptions[2];
				this->castlingOptions[3] = (aCastlingOptions[3] == 'q')?'a':aCastlingOptions[3];
				
				validate();
			}
			
			GameState(const std::string & FENString = std::string("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR"),
					  const Color & aSideToMove = ColorWhite,
					  const std::string & aCastlingOptions = "----",
					  const Square & aEnpassantTarget = Square(0)
					  ) :
			GameState(Position(FENString), aSideToMove, aCastlingOptions, aEnpassantTarget) { }
			
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
			
			inline bool operator==(const GameState & g) const {
				return
				(sideToMove == g.sideToMove) &&
				(*(this->position) == *(g.position)) &&
				(this->enpassantTarget == g.enpassantTarget) &&
				(this->castlingOptions[0] == g.castlingOptions[0]) &&
				(this->castlingOptions[1] == g.castlingOptions[1]) &&
				(this->castlingOptions[2] == g.castlingOptions[2]) &&
				(this->castlingOptions[3] == g.castlingOptions[3]) &&
				(this->whiteKingStatus == g.whiteKingStatus) &&
				(this->blackKingStatus == g.blackKingStatus);
			}
			
			inline bool operator!=(const GameState & g) const {
				return !(*this == g);
			}
        };
	}
}

#endif /* defined(__ChessFramework__GameState__) */
