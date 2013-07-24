//
//  BitboardPosition.cpp
//  ChessFramework
//
//  Created by Santhosbaala RS on 24/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#include <vector>
#include <exception>
#include "BitboardPosition.h"
#include "Square.h"

sfc::cfw::BitboardPosition::BitboardPosition(const std::string & FENString) {
	if (sfc::cfw::Position::validateFEN(FENString)) {
		// Proceed to set the bitboard structure
	} else {
		throw std::invalid_argument("FEN String format or count is invalid");
	}
}

int sfc::cfw::BitboardPosition::operator[] (const sfc::cfw::Square & aSquare) {
	return -1;
}

std::vector<std::shared_ptr<sfc::cfw::Square>> sfc::cfw::BitboardPosition::attacksFrom(const sfc::cfw::Square & aSquare) const {
	return {};
}

std::vector<std::shared_ptr<sfc::cfw::Square>> sfc::cfw::BitboardPosition::attacksTo(const sfc::cfw::Square & aSquare, int side) const {
	return {};
}

std::vector<std::shared_ptr<sfc::cfw::Square>> sfc::cfw::BitboardPosition::attacksByPiece(int pieceType) const {
	return {};
}

std::string sfc::cfw::BitboardPosition::getFEN() const {
	return "";
}

std::string sfc::cfw::BitboardPosition::prettyString() const {
	return "";
}