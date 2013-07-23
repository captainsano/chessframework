//
//  Square.h
//  ChessFramework
//
//  Created by Santhos Baala RS on 23/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#ifndef __ChessFramework__Square__
#define __ChessFramework__Square__

#include <string>

namespace sfc {
    namespace cfw {
        
        class Square {
            unsigned short index = 0;
            
        public:
            Square() = default;
            Square(unsigned short aIndex);
            Square(unsigned short aFile, unsigned short aRank);
            
            operator unsigned short() const;
            unsigned short  getFile() const;
            unsigned short  getRank() const;
            unsigned short  getIndex() const;
            std::string     getLabel() const;
        };
        
    }
}

#endif /* defined(__ChessFramework__Square__) */
