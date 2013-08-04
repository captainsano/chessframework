//
//  KGBitboardUtil.cpp
//  KindergartenBitboard
//
//  Created by Santhosbaala RS on 26/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#include "KGBitboardUtil.h"
#include <iostream>

using KGBitboardUtil::U64;

std::string KGBitboardUtil::prettyBitmap(const U64 & bitmap, int xIndex) {
	std::bitset<64> b(bitmap);
	std::string toReturn;
	
	for (int rank = 7; rank >= 0; rank--) {
		std::string rankString;
		for (int file = 0; file < 8; file++) {
			if (xIndex == ((rank << 3) | file)) {
				rankString += "x";
			} else if (b[(rank << 3) | file]) {
				rankString += "1";
			} else {
				rankString += "-";
			}
			
			if (file != 7) rankString += " ";
		}
		
		toReturn += rankString;
		if (rank != 0) toReturn += "\n";
	}
	
	return toReturn;
}