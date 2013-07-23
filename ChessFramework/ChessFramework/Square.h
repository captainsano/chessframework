//
//  Square.h
//  ChessFramework
//
/// @author Santhos Baala RS
/// @copyright (c) 2013 64cloud. All rights reserved.
/// @version 0.1
//

#ifndef __ChessFramework__Square__
#define __ChessFramework__Square__

#include <string>

namespace sfc {
    namespace cfw {
        
		/*! 
		 @class Square
		 @brief Represents any one of the 64 squares on the chess board.
		 @discussion An index value 0 to 63 mapped to a valid square on 
		 the chess board is represented by this class. The class can be
		 converted to unsigned short and individual rank and file of 
		 the represented square can also be obtained. Additionaly, for 
		 convenience, it also provides a method for getting the string 
		 label according to SAN conventions.
		 */
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
