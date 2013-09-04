//
//  Move.h
//  ChessFramework
//
/// @author Santhos Baala RS
/// @copyright (c) 2013 64cloud. All rights reserved.
/// @version 0.1
//

#ifndef __ChessFramework__Move__
#define __ChessFramework__Move__

#include <vector>
#include "Piece.h"
#include "Square.h"
#include "GameState.h"
#include "MoveFactory.h"

namespace sfc {
    namespace cfw {
		
		typedef enum {
			CastlingTypeNone,
			CastlingTypeKSide,
			CastlingTypeQSide
		} CastlingType;
		
		class Move {
        protected:
			Piece   pieceMoved = PieceNone; // PieceNone indicates NULL Move (Chess Language)
            Square  fromSquare = 0;
            Square  toSquare   = 0;
            
            Piece capturedPiece = PieceNone;
            PromotablePiece promotedToPiece = PromotablePieceNone;
            
            std::shared_ptr<GameState> gameStateBeforeMove  = nullptr;
            std::shared_ptr<GameState> gameStateAfterMove   = nullptr;
            
		
            // validity checks need not be done because MoveFactory is the sole
            // owner of this class
            Move() = default;
            Move(const Square & aFromSquare,
                 const Square & aToSquare,
				 const Piece aPieceMoved,
                 std::shared_ptr<GameState> aGameStateBeforeMove,
                 std::shared_ptr<GameState> aGameStateAfterMove,
                 Piece aCapturedPiece = PieceNone,
                 PromotablePiece aPromotedToPiece = PromotablePieceNone) :
            fromSquare(aFromSquare),
            toSquare(aToSquare),
			pieceMoved(aPieceMoved),
            gameStateBeforeMove(aGameStateBeforeMove),
            gameStateAfterMove(aGameStateAfterMove),
            capturedPiece(aCapturedPiece),
            promotedToPiece(aPromotedToPiece) { }
        
        public:
            // Getters
            Piece   getPieceMoved() const   { return this->pieceMoved; }
            Square  getFromSquare() const   { return this->fromSquare; }
            Square  getToSquare() const     { return this->toSquare; }
			
			CastlingType getCastlingType() const {
				if (this->pieceMoved == PieceWKing) {
					if (gameStateBeforeMove->getWhiteKingSideCastlingOption() != '-' &&
						(toSquare == Square(std::tolower(gameStateBeforeMove->getWhiteKingSideCastlingOption()) - 'a', 0))) {
						return CastlingTypeKSide;
					}
					
					if (gameStateBeforeMove->getWhiteQueenSideCastlingOption() != '-' &&
						(toSquare == Square(std::tolower(gameStateBeforeMove->getWhiteQueenSideCastlingOption()) - 'a', 0))) {
						return CastlingTypeQSide;
					}
				}
				
				if (this->pieceMoved == PieceBKing) {
					if (gameStateBeforeMove->getBlackKingSideCastlingOption() != '-' &&
						(toSquare == Square(std::tolower(gameStateBeforeMove->getBlackKingSideCastlingOption()) - 'a', 7))) {
						return CastlingTypeKSide;
					}
					
					if (gameStateBeforeMove->getBlackQueenSideCastlingOption() != '-' &&
						(toSquare == Square(std::tolower(gameStateBeforeMove->getBlackQueenSideCastlingOption()) - 'a', 7))) {
						return CastlingTypeQSide;
					}
				}
				
				return CastlingTypeNone;
			}
            
            Piece           getCapturedPiece() const    { return this->capturedPiece; }
            PromotablePiece getPromotedToPiece() const  { return this->promotedToPiece; }
            
            std::shared_ptr<GameState> getGameStateBeforeMove() const   { return this->gameStateBeforeMove; }
            std::shared_ptr<GameState> getGameStateAfterMove() const    { return this->gameStateAfterMove; }
			
			std::string getSANString() const;
			
			friend std::shared_ptr<Move> MoveFactory::legalMove(std::shared_ptr<GameState> , const Square &, const Square &, const PromotablePiece &);
			friend std::vector<std::shared_ptr<Move>> MoveFactory::allLegalMoves(std::shared_ptr<GameState>, const Piece &);
			friend std::vector<std::shared_ptr<Move>> MoveFactory::allLegalMoves(std::shared_ptr<GameState>, const Piece &, const Square &);
        };        
    }
}

#endif /* defined(__ChessFramework__Move__) */
