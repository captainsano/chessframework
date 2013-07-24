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
	if (std::regex_match(FENString, std::regex("^([kqrnbpKQRNBP1-8]/){7}/[kqrnbpKQRNBP1-8]$"))) {
		// Check for square count in each rank
		std::string expandedFEN(FENString);
		
		expandedFEN = expandedFEN.replace(expandedFEN.find("8"), expandedFEN.find("8"), "11111111");
		expandedFEN = expandedFEN.replace(expandedFEN.find("7"), expandedFEN.find("7"), "1111111");
		expandedFEN = expandedFEN.replace(expandedFEN.find("6"), expandedFEN.find("6"), "111111");
		expandedFEN = expandedFEN.replace(expandedFEN.find("5"), expandedFEN.find("5"), "11111");
		expandedFEN = expandedFEN.replace(expandedFEN.find("4"), expandedFEN.find("4"), "1111");
		expandedFEN = expandedFEN.replace(expandedFEN.find("3"), expandedFEN.find("3"), "111");
		expandedFEN = expandedFEN.replace(expandedFEN.find("2"), expandedFEN.find("2"), "11");
			
		// At this point, the string length should be 64 + 7 of /
		if (expandedFEN.length() == (64 + 7)) {
			return true;
		}
	}
	
	return false;
}