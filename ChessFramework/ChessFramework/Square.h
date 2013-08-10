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
			Square(const unsigned short & aIndex) {
				if (aIndex > 63) {
					throw std::out_of_range("Square index must be 0-63");
				}
				
				this->index = aIndex;
			}
            Square(const unsigned short & aFile, const unsigned short & aRank) : Square(((aRank & 7) << 3) | (aFile & 7)) {
				if (aFile > 7 || aRank > 7) {
					throw std::out_of_range("file/rank index must be 0-7");
				}
			}
			Square(const std::string & label) : Square(label[0] - 'a', label[1] - '1') { }
			
			operator unsigned short() const { return this->index; }
            
			unsigned short getFile() const {
				return (this->index & 7);           // return the last 3 bits
			}
			
			unsigned short getRank() const {
				return ((this->index >> 3) & 7);    // return the first 3 bits
			}
			
			unsigned short getIndex() const {
				return this->index;
			}
			
			std::string getLabel() const {
				std::string toReturn;
				toReturn += (char)(this->getFile() + 'a');
				toReturn += (char)(this->getRank() + '1');
				return toReturn;
			}
		};
    }
}

#endif /* defined(__ChessFramework__Square__) */
