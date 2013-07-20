//
//  Square.h
//  ChessFramework
//
//  Created by Santhosbaala RS on 20/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#ifndef __ChessFramework__Square__
#define __ChessFramework__Square__

#include <exception>
#include <bitset>
#include <iostream>

namespace chessFramework {
	class Square {
	private:
		std::bitset<6> index;	/// \var index ranges from 0-63
		
	public:
		Square(unsigned short aIndex);
		Square(unsigned short aFileIndex, unsigned short aRankIndex);
		Square(std::string aLabel);
		
		unsigned short getFileIndex() const;
		unsigned short getRankIndex() const;
		std::string getLabel();
		
		operator short () const {
			return static_cast<short>(index.to_ulong());
		}
	};
}


#endif /* defined(__ChessFramework__Square__) */
