//
//  MoveFactory.h
//  ChessFramework
//
//  Created by Santhosbaala RS on 31/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
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
			std::vector<std::shared_ptr<Move>> allLegalMoves(std::shared_ptr<GameState> beforeGameState);
		}
	}
}

#endif /* defined(__ChessFramework__MoveFactory__) */
