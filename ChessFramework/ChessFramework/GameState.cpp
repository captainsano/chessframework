//
//  GameState.cpp
//  ChessFramework
//
//  Created by Santhosbaala RS on 25/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#include <exception>
#include <utility>
#include <regex>
#include <cctype>
#include <iostream>	// For debug

#include "GameState.h"
#include "BitboardPosition.h"

sfc::cfw::GameState::GameState(std::string && FENString,
							   const sfc::cfw::Color & aSideToMove,
							   const std::string & aCastlingOptions,
							   const sfc::cfw::Square & aEnpassantTarget
							   ) {
	std::shared_ptr<sfc::cfw::Position> tempPosition = std::make_shared<sfc::cfw::BitboardPosition>(std::forward<std::string>(FENString));
	
	/*--------- Check for errors in enPassant ---------*/
	if (aEnpassantTarget != 0) {
		// Check for Color Mismatch, if no mismatch, check if a pawn exists in the required (file, 5/4 rank)
		if (aSideToMove == sfc::cfw::ColorWhite && aEnpassantTarget.getRank() == 5) {
			if ((*tempPosition)[Square(aEnpassantTarget.getFile(), 4)] != sfc::cfw::PieceBPawn) {
				throw std::invalid_argument("Square for enpassant target not occupied by black pawn");
			}
		} else if (aSideToMove == sfc::cfw::ColorBlack && aEnpassantTarget.getRank() == 2) {
			if ((*tempPosition)[Square(aEnpassantTarget.getFile(), 3)] != sfc::cfw::PieceWPawn) {
				throw std::invalid_argument("Square for enpassant target not occupied by white pawn");
			}
		} else {
			throw std::invalid_argument("Color mismatch in enpassant target");
		}
	}
	
	/*--------- Check for errors in Castling ---------*/
	// insufficient castling options information
	if (aCastlingOptions.size() < 4) {
		throw std::invalid_argument("Insufficient castling options information");
	}
	
	// check for valid characters in castling options string
	/// @note In chess 960 the kingside rook can only be placed between c-h and queenside a-f
	if (!std::regex_match(aCastlingOptions, std::regex("[KC-H\\-][QA-F\\-][kc-h\\-][qa-f\\-]"))) {
		throw std::invalid_argument("Malformed castling options string");
	}
	
	// Check for presence of rook where required
	if (aCastlingOptions[0] != '-') {
		Square requiredSquare(std::string{(aCastlingOptions[0] == 'K')?'h':std::tolower(aCastlingOptions[0]), '1'});
		if ((*tempPosition)[requiredSquare] != sfc::cfw::PieceWRook) {
			throw std::invalid_argument("Rook not present at location indicated by castling options");
		}
	}
	
	if (aCastlingOptions[1] != '-') {
		Square requiredSquare(std::string{(aCastlingOptions[1] == 'Q')?'a':std::tolower(aCastlingOptions[1]), '1'});
		if ((*tempPosition)[requiredSquare] != sfc::cfw::PieceWRook) {
			throw std::invalid_argument("Rook not present at location indicated by castling options");
		}
	}
	
	if (aCastlingOptions[2] != '-') {
		Square requiredSquare(std::string{(aCastlingOptions[2] == 'k')?'h':std::tolower(aCastlingOptions[2]), '8'});
		if ((*tempPosition)[requiredSquare] != sfc::cfw::PieceBRook) {
			throw std::invalid_argument("Rook not present at location indicated by castling options");
		}
	}
	
	if (aCastlingOptions[3] != '-') {
		Square requiredSquare(std::string{(aCastlingOptions[3] == 'q')?'a':std::tolower(aCastlingOptions[3]), '8'});
		if ((*tempPosition)[requiredSquare] != sfc::cfw::PieceBRook) {
			throw std::invalid_argument("Rook not present at location indicated by castling options");
		}
	}
	
	// Check for errors in king piece count - only 1 king should be there
	if (tempPosition->pieceCount(sfc::cfw::PieceWKing) != 1 || tempPosition->pieceCount(sfc::cfw::PieceBKing) != 1) {
		throw std::invalid_argument("Position should contain only one white and black king");
	}
	
	
	// Check for errors in king status
		
	// Assign values if everything is right
	this->position = tempPosition;
	this->sideToMove = aSideToMove;
	this->castlingOptions[0] = aCastlingOptions[0];
	this->castlingOptions[1] = aCastlingOptions[1];
	this->castlingOptions[2] = aCastlingOptions[2];
	this->castlingOptions[3] = aCastlingOptions[4];
	this->enpassantTarget = aEnpassantTarget;
}