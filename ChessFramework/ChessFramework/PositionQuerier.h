//
//  PositionQuerier.h
//  ChessFramework
//
/// @author Santhos Baala RS
/// @copyright (c) 2013 64cloud. All rights reserved.
/// @version 0.1
//

#ifndef ChessFramework_PositionQuerier_h
#define ChessFramework_PositionQuerier_h

#include <memory>
#include <vector>
#include "Square.h"

namespace sfc {
    namespace cfw {
        
        class Position;
        
        class PositionQuerier {
            
        protected:
            std::shared_ptr<sfc::cfw::Position> position;
            
        public:
            PositionQuerier() = default;
            PositionQuerier(std::shared_ptr<sfc::cfw::Position> aPosition) : position(aPosition) { }
            
            virtual std::vector<sfc::cfw::Square> attacksTo(const sfc::cfw::Square & aSquare) const = 0;
            virtual std::vector<sfc::cfw::Square> attacksFrom(const sfc::cfw::Square & aSquare) const = 0;
        };
    }
}

#endif
