//
//  BitboardPositionQuerier.h
//  ChessFramework
//
/// @author Santhos Baala RS
/// @copyright (c) 2013 64cloud. All rights reserved.
/// @version 0.1
//

#ifndef __ChessFramework__BitboardPositionQuerier__
#define __ChessFramework__BitboardPositionQuerier__

#include "BitboardPosition.h"
#include "PositionQuerier.h"

namespace sfc {
    namespace cfw {
        
        class BitboardPositionQuerier : public PositionQuerier {
            std::shared_ptr<sfc::cfw::BitboardPosition> position = nullptr;
            
        public:
            BitboardPositionQuerier() = default;
            BitboardPositionQuerier(std::shared_ptr<BitboardPosition> aPosition) : position(aPosition) {
                if (aPosition == nullptr) {
                    throw std::invalid_argument("Position cannot be a null pointer");
                }
            }
            
            std::set<sfc::cfw::Square> attacksTo(const sfc::cfw::Square & aSquare, sfc::cfw::Color attackingSide = sfc::cfw::ColorWhite) const override;
            std::set<sfc::cfw::Square> attacksFrom(const sfc::cfw::Square & aSquare) const override;
        };
    }
}

#endif /* defined(__ChessFramework__BitboardPositionQuerier__) */