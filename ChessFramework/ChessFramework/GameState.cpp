//
//  GameState.cpp
//  ChessFramework
//
//  Created by Santhosbaala RS on 25/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#include "GameState.h"

#include <exception>
#include <utility>
#include <regex>
#include <cctype>
#include <set>
#include <iostream>	// For debug

#include "PositionQuerier.h"

sfc::cfw::GameState::GameState(std::string && FENString,
							   const Color & aSideToMove,
							   const std::string & aCastlingOptions,
							   const Square & aEnpassantTarget
							   ) {
	std::shared_ptr<Position> tempPosition = std::make_shared<Position>(std::forward<std::string>(FENString));
    std::shared_ptr<PositionQuerier> querier = std::make_shared<PositionQuerier>(tempPosition);
	
	/*--------- Check for errors in enPassant ---------*/
	if (aEnpassantTarget != 0) {
		// Check for Color Mismatch, if no mismatch, check if a pawn exists in the required (file, 5/4 rank)
		if (aSideToMove == ColorWhite && aEnpassantTarget.getRank() == 5) {
			if ((*tempPosition)[Square(aEnpassantTarget.getFile(), 4)] != PieceBPawn) {
				throw std::invalid_argument("Square for enpassant target not occupied by black pawn");
			}
		} else if (aSideToMove == ColorBlack && aEnpassantTarget.getRank() == 2) {
			if ((*tempPosition)[Square(aEnpassantTarget.getFile(), 3)] != PieceWPawn) {
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
		if ((*tempPosition)[requiredSquare] != PieceWRook) {
			throw std::invalid_argument("Rook not present at location indicated by castling options");
		}
	}
	
	if (aCastlingOptions[1] != '-') {
		Square requiredSquare(std::string{(aCastlingOptions[1] == 'Q')?'a':std::tolower(aCastlingOptions[1]), '1'});
		if ((*tempPosition)[requiredSquare] != PieceWRook) {
			throw std::invalid_argument("Rook not present at location indicated by castling options");
		}
	}
	
	if (aCastlingOptions[2] != '-') {
		Square requiredSquare(std::string{(aCastlingOptions[2] == 'k')?'h':std::tolower(aCastlingOptions[2]), '8'});
		if ((*tempPosition)[requiredSquare] != PieceBRook) {
			throw std::invalid_argument("Rook not present at location indicated by castling options");
		}
	}
	
	if (aCastlingOptions[3] != '-') {
		Square requiredSquare(std::string{(aCastlingOptions[3] == 'q')?'a':std::tolower(aCastlingOptions[3]), '8'});
		if ((*tempPosition)[requiredSquare] != PieceBRook) {
			throw std::invalid_argument("Rook not present at location indicated by castling options");
		}
	}
	
	/*----- Check for errors in king piece count - only 1 king should be existent for each side -----*/
	if (querier->pieceCount(PieceWKing) != 1 || querier->pieceCount(PieceBKing) != 1) {
		throw std::invalid_argument("Position should contain only one white and black king");
	}
    
	/*------------ Check for errors in king status -------------*/
    if (querier->attackIntersectsPiece(PieceWKing, PieceBKing)) {
        throw std::invalid_argument("Kings should not be placed adjacent to each other");
    }
    
    // Side being issued check should be the one to move
    if ((querier->isKingInCheck(ColorWhite) && aSideToMove == ColorBlack) ||
        (querier->isKingInCheck(ColorBlack) && aSideToMove == ColorWhite)) {
        throw std::invalid_argument("The checked side should be the one to move");
    }
    
	// Assign values if everything is right
	this->position = tempPosition;
	this->sideToMove = aSideToMove;
	this->castlingOptions[0] = aCastlingOptions[0];
	this->castlingOptions[1] = aCastlingOptions[1];
	this->castlingOptions[2] = aCastlingOptions[2];
	this->castlingOptions[3] = aCastlingOptions[4];
	this->enpassantTarget = aEnpassantTarget;
    
    // Auto-Infer the KingStatus now.
}

bool sfc::cfw::GameState::hasSufficientMaterial() {
    PositionQuerier q(position);
    auto emptySquares = q.pieceCount(PieceNone);
    
    if (emptySquares < 62) { // Count the empty squares
        // Check if the third square is being occupied by a minor piece
        if (q.pieceCount(PieceWKnight) == 1 || q.pieceCount(PieceWBishop) == 1 ||
            q.pieceCount(PieceBKnight) == 1 || q.pieceCount(PieceBBishop) == 1) {
            return false;
        }
    } else if (emptySquares == 62) {
        return false;   // Only 2 kings are existent
    }
    
    return true;
}