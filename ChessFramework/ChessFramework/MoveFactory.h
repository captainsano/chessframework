//
//  MoveFactory.h
//  ChessFramework
//
/// @author Santhos Baala RS
/// @copyright (c) 2013 64cloud. All rights reserved.
/// @version 0.1
//

#ifndef __ChessFramework__MoveFactory__
#define __ChessFramework__MoveFactory__

#include <vector>
#include "Square.h"
#include "Piece.h"
#include "GameState.h"

namespace sfc {
	namespace cfw {
		
		class Move;
		
		namespace MoveFactory {
			std::shared_ptr<Move> legalMove(std::shared_ptr<GameState> beforeGameState, Square fromSquare, Square toSquare, PromotablePiece promotedToPiece = PromotablePieceNone);
			std::vector<std::shared_ptr<Move>> allLegalMoves(std::shared_ptr<GameState> beforeGameState, const Piece pieceType = PieceNone);
		}
	}
}

#endif /* defined(__ChessFramework__MoveFactory__) */
