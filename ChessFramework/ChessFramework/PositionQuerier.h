//
//  PositionQuerier.h
//  ChessFramework
//
/// @author Santhos Baala RS
/// @copyright (c) 2013 64cloud. All rights reserved.
/// @version 0.1
//

#ifndef __ChessFramework__BitboardPositionQuerier__
#define __ChessFramework__BitboardPositionQuerier__

#include <set>
#include "Square.h"
#include "Piece.h"
#include "Position.h"
#include "GameState.h"

namespace sfc {
    namespace cfw {
        
        class PositionQuerier {
            std::shared_ptr<Position> position = nullptr;
            
        public:
            PositionQuerier() = default;
            PositionQuerier(std::shared_ptr<Position> aPosition) : position(aPosition) {
                if (aPosition == nullptr) {
                    throw std::invalid_argument("Position cannot be a null pointer");
                }
            }
            
            unsigned short pieceCount(const Piece & aPieceType) const;
            
            std::set<Square> attacksFrom(const Square & aSquare, const Square & enPassantTarget = Square(0)) const;
            
			bool attackIntersectsPiece(const Piece & aPiece1, const Piece & aPiece2) const;
            bool isKingInCheck(const Color & kingColor) const;
            KingStatus getKingStatus(const Color & kingColor, const Square & enPassantTarget = Square(0)) const;
        };
    }
}

#endif /* defined(__ChessFramework__BitboardPositionQuerier__) */
