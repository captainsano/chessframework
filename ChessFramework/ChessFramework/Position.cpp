//
//  Position.cpp
//  ChessFramework
//
//  Created by Santhosbaala RS on 24/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#include "Position.h"
#include <regex>
#include <string>

bool sfc::cfw::Position::validateFEN(const std::string &FENString) {
	// Check for FEN format errors
	if (std::regex_match(FENString, std::regex("^([KQRBNPkqrbnp1-8]{1,8}/){7}([KQRBNPkqrbnp1-8]{1,8})$"))) {
		// Check for square count in each rank
		std::string expandedFEN(FENString);
		
		expandedFEN = std::regex_replace(expandedFEN, std::regex("8"), "11111111");
		expandedFEN = std::regex_replace(expandedFEN, std::regex("7"), "1111111");
		expandedFEN = std::regex_replace(expandedFEN, std::regex("6"), "111111");
		expandedFEN = std::regex_replace(expandedFEN, std::regex("5"), "11111");
		expandedFEN = std::regex_replace(expandedFEN, std::regex("4"), "1111");
		expandedFEN = std::regex_replace(expandedFEN, std::regex("3"), "111");
		expandedFEN = std::regex_replace(expandedFEN, std::regex("2"), "11");
				
		// At this point, the string length should be 64 + 7 of /
		if (expandedFEN.length() == (64 + 7)) {
			return true;
		}
	}
	
	return false;
}