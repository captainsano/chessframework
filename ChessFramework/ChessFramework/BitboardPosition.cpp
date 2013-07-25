//
//  BitboardPosition.cpp
//  ChessFramework
//
//  Created by Santhosbaala RS on 24/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#include <vector>
#include <regex>
#include <cstdlib>
#include <exception>
#include <iostream>	/* For debugging */
#include "BitboardPosition.h"
#include "Square.h"

sfc::cfw::BitboardPosition::BitboardPosition(const std::string & FENString) {
	if (sfc::cfw::Position::validateFEN(FENString)) {
		
		/// Expand the FEN @todo Write an algorithm such that expansion is not required [REFACTOR]
		std::string expandedFEN(FENString);
		
		expandedFEN = std::regex_replace(expandedFEN, std::regex("8"), "11111111");
		expandedFEN = std::regex_replace(expandedFEN, std::regex("7"), "1111111");
		expandedFEN = std::regex_replace(expandedFEN, std::regex("6"), "111111");
		expandedFEN = std::regex_replace(expandedFEN, std::regex("5"), "11111");
		expandedFEN = std::regex_replace(expandedFEN, std::regex("4"), "1111");
		expandedFEN = std::regex_replace(expandedFEN, std::regex("3"), "111");
		expandedFEN = std::regex_replace(expandedFEN, std::regex("2"), "11");
		expandedFEN = std::regex_replace(expandedFEN, std::regex("/"), "");
		
		std::string::size_type StringIndex = 0;
		for (int rank = 7; rank >= 0; rank--) {
			for (int file = 0; file < 8; file++) {
				Square s(file, rank);
				switch (expandedFEN[StringIndex++]) {
					case 'P':
						wPawn.set(s);
						break;
					case 'K':
						wKing.set(s);
						break;
					case 'Q':
						wQueen.set(s);
						break;
					case 'R':
						wRook.set(s);
						break;
					case 'B':
						wBishop.set(s);
						break;
					case 'N':
						wKnight.set(s);
						break;
					case 'p':
						bPawn.set(s);
						break;
					case 'k':
						bKing.set(s);
						break;
					case 'q':
						bQueen.set(s);
						break;
					case 'r':
						bRook.set(s);
						break;
					case 'b':
						bBishop.set(s);
						break;
					case 'n':
						bKnight.set(s);
						break;
				}
			}
		}
	} else {
		throw std::invalid_argument("FEN String format or count is invalid");
	}
	
}

sfc::cfw::Piece sfc::cfw::BitboardPosition::operator[] (const sfc::cfw::Square & aSquare) const {
	
	if (wPawn[aSquare]) {
		return sfc::cfw::PieceWPawn;
	} else if (wKing[aSquare]) {
		return sfc::cfw::PieceWKing;
	} else if (wQueen[aSquare]) {
		return sfc::cfw::PieceWQueen;
	} else if (wRook[aSquare]) {
		return sfc::cfw::PieceWRook;
	} else if (wBishop[aSquare]) {
		return sfc::cfw::PieceWBishop;
	} else if (wKnight[aSquare]) {
		return sfc::cfw::PieceWKnight;
	} else if (bPawn[aSquare]) {
		return sfc::cfw::PieceBPawn;
	} else if (bKing[aSquare]) {
		return sfc::cfw::PieceBKing;
	} else if (bQueen[aSquare]) {
		return sfc::cfw::PieceBQueen;
	} else if (bRook[aSquare]) {
		return sfc::cfw::PieceBRook;
	} else if (bBishop[aSquare]) {
		return sfc::cfw::PieceBBishop;
	} else if (bKnight[aSquare]) {
		return sfc::cfw::PieceBKnight;
	}
	
	return sfc::cfw::PieceNone;
}

std::vector<std::shared_ptr<sfc::cfw::Square>> sfc::cfw::BitboardPosition::attacksFrom(const sfc::cfw::Square & aSquare) const {
	return {};
}

std::vector<std::shared_ptr<sfc::cfw::Square>> sfc::cfw::BitboardPosition::attacksTo(const sfc::cfw::Square & aSquare, const sfc::cfw::Color & aSide) const {
	return {};
}

std::vector<std::shared_ptr<sfc::cfw::Square>> sfc::cfw::BitboardPosition::attacksByPiece(const Piece & aPieceType) const {
	return {};
}

std::string sfc::cfw::BitboardPosition::getFEN() const {
	std::string FENString;
	for (int rank = 7; rank >= 0; rank--) {
		std::string rankString;
		for (int file = 0; file < 8; file++) {
			Square s(file, rank);
			if (wPawn[s]) {
				rankString += "P";
			} else if (wKing[s]) {
				rankString += "K";
			} else if (wQueen[s]) {
				rankString += "Q";
			} else if (wRook[s]) {
				rankString += "R";
			} else if (wBishop[s]) {
				rankString += "B";
			} else if (wKnight[s]) {
				rankString += "N";
			} else if (bPawn[s]) {
				rankString += "p";
			} else if (bKing[s]) {
				rankString += "k";
			} else if (bQueen[s]) {
				rankString += "q";
			} else if (bRook[s]) {
				rankString += "r";
			} else if (bBishop[s]) {
				rankString += "b";
			} else if (bKnight[s]) {
				rankString += "n";
			} else {
				// If previous entry was a digit, then increment it. Else append 1.
				if (std::isdigit(rankString[rankString.size() - 1])) {
					int digit = ((char)rankString[rankString.size() - 1] - '0');
					rankString[rankString.size() - 1] = (digit + 1) + '0';
				} else {
					rankString += "1";
				}
			}
		}
		
		if (rank != 0) rankString += "/";
		
		FENString += rankString;
	}
	
	return FENString;
}

std::string sfc::cfw::BitboardPosition::prettyString() const {
	std::string toReturn;
	for (int rank = 7; rank >= 0; rank--) {
		std::string rankString;
		for (int file = 0; file < 8; file++) {
			Square s(file, rank);
			if (wPawn[s]) {
				rankString += "P";
			} else if (wKing[s]) {
				rankString += "K";
			} else if (wQueen[s]) {
				rankString += "Q";
			} else if (wRook[s]) {
				rankString += "R";
			} else if (wBishop[s]) {
				rankString += "B";
			} else if (wKnight[s]) {
				rankString += "N";
			} else if (bPawn[s]) {
				rankString += "p";
			} else if (bKing[s]) {
				rankString += "k";
			} else if (bQueen[s]) {
				rankString += "q";
			} else if (bRook[s]) {
				rankString += "r";
			} else if (bBishop[s]) {
				rankString += "b";
			} else if (bKnight[s]) {
				rankString += "n";
			} else {
				rankString += "-";
			}
			
			rankString += " ";
		}
		
		if (rank != 0) rankString += "\n";
		
		toReturn += rankString;
	}
	
	return "\n" + toReturn + "\n";
}