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
#include <set>
#include <exception>
#include "Square.h"

namespace sfc {
    namespace cfw {
        
        class Position;
        
        class PositionQuerier {
            
        protected:
            std::shared_ptr<sfc::cfw::Position> position = nullptr;
            
        public:
            PositionQuerier() = default;
            PositionQuerier(std::shared_ptr<sfc::cfw::Position> aPosition) : position(aPosition) {
                if (aPosition == nullptr) {
                    throw std::invalid_argument("Position cannot be null");
                }
            }
            
            virtual std::set<sfc::cfw::Square> attacksTo(const sfc::cfw::Square & aSquare) const = 0;
            virtual std::set<sfc::cfw::Square> attacksFrom(const sfc::cfw::Square & aSquare) const = 0;
        };
    }
}

#endif
