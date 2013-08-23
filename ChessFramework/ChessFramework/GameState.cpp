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

// Private method to validate the GameState
void sfc::cfw::GameState::validate() {
    std::shared_ptr<PositionQuerier> querier = std::make_shared<PositionQuerier>(position);
	
	/*--------- Check for errors in enPassant ---------*/
	if (enpassantTarget != 0) {
		// Check for Color Mismatch, if no mismatch, check if a pawn exists in the required (file, 5/4 rank)
		if (sideToMove == ColorWhite && enpassantTarget.getRank() == 5) {
			if ((*position)[Square(enpassantTarget.getFile(), 4)] != PieceBPawn) {
				throw illegal_position_setup("Square for enpassant target not occupied by black pawn");
			}
		} else if (sideToMove == ColorBlack && enpassantTarget.getRank() == 2) {
			if ((*position)[Square(enpassantTarget.getFile(), 3)] != PieceWPawn) {
				throw illegal_position_setup("Square for enpassant target not occupied by white pawn");
			}
		} else {
			throw illegal_position_setup("Color mismatch in enpassant target");
		}
	}
 	
	/*--------- Check for errors in Castling ---------*/
	// Check for presence of rook where required
	if (castlingOptions[0] != '-') {
		Square requiredSquare(Square((castlingOptions[0] == 'K')?7:(std::tolower(castlingOptions[0]) - 'a'), 0));
		if ((*position)[requiredSquare] != PieceWRook) {
			throw illegal_position_setup("Rook not present at location indicated by castling options");
		}
	}
	
	if (castlingOptions[1] != '-') {
		Square requiredSquare(Square((castlingOptions[1] == 'Q')?0:(std::tolower(castlingOptions[1]) - 'a'), 0));
		if ((*position)[requiredSquare] != PieceWRook) {
			throw illegal_position_setup("Rook not present at location indicated by castling options");
		}
	}
	
	if (castlingOptions[2] != '-') {
		Square requiredSquare(Square((castlingOptions[2] == 'k')?7:(std::tolower(castlingOptions[2]) - 'a'), 7));
		if ((*position)[requiredSquare] != PieceBRook) {
			throw illegal_position_setup("Rook not present at location indicated by castling options");
		}
	}
	
	if (castlingOptions[3] != '-') {
		Square requiredSquare(Square((castlingOptions[3] == 'q')?0:(std::tolower(castlingOptions[3]) - 'a'), 7));
		if ((*position)[requiredSquare] != PieceBRook) {
			throw illegal_position_setup("Rook not present at location indicated by castling options");
		}
	}
    
    // Check for white king in first rank if the white castling options are set
    if (castlingOptions[0] != '-' || castlingOptions[1] != '-') {
        bool kingFound = false;
        for (unsigned int i = 0; i < 7; i++) {
            if ((*position)[i] == PieceWKing) {
                kingFound = true;
                break;
            }
        }
        if (!kingFound) throw illegal_position_setup("White castling options are set, but king is not in first rank");
    }
	
    // Check for black king in eigth rank if the black castling options are set
    if (castlingOptions[2] != '-' || castlingOptions[3] != '-') {
        bool kingFound = false;
        for (unsigned int i = 56; i < 64; i++) {
            if ((*position)[i] == PieceBKing) {
                kingFound = true;
                break;
            }
        }
        if (!kingFound) throw illegal_position_setup("White castling options are set, but king is not in first rank");
    }
	
	/*----- Check for errors in king piece count - only 1 king should be existent for each side -----*/
	if (querier->pieceCount(PieceWKing) != 1 || querier->pieceCount(PieceBKing) != 1) {
		throw illegal_position_setup("Position should contain only one white and black king");
	}
    
	/*------------ Check for errors in king status -------------*/
    if (querier->attackIntersectsPiece(PieceWKing, PieceBKing)) {
        throw illegal_position_setup("Kings should not be placed adjacent to each other");
    }
    
    // Side being issued check should be the one to move
    if ((querier->isKingInCheck(ColorWhite) && sideToMove == ColorBlack) ||
        (querier->isKingInCheck(ColorBlack) && sideToMove == ColorWhite)) {
        throw illegal_position_setup("The checked side should be the one to move");
    }
	
	this->whiteKingStatus = querier->getKingStatus(ColorWhite, enpassantTarget);
	this->blackKingStatus = querier->getKingStatus(ColorBlack, enpassantTarget);
}

bool sfc::cfw::GameState::hasSufficientMaterial() const {
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

std::string sfc::cfw::GameState::getFEN(bool chess960) const {
    // Piece Placement
    std::string fenString = position->getFEN();
    
    fenString += " ";
    
    // Side To Move
    if (this->getSideToMove() == ColorWhite) {
        fenString += 'w';
    } else {
        fenString += 'b';
    }
    
    fenString += " ";
    
    // Castling Options
    bool atLeastOneCastlingOptionExists = false;
    if (this->getWhiteKingSideCastlingOption() != '-') {
        if (!chess960) fenString += 'K';
        else fenString += this->getWhiteKingSideCastlingOption();
        atLeastOneCastlingOptionExists = true;
    }
    
    if (this->getWhiteQueenSideCastlingOption() != '-') {
        if (!chess960) fenString += 'Q';
        else fenString += this->getWhiteQueenSideCastlingOption();
        atLeastOneCastlingOptionExists = true;
    }
    
    if (this->getBlackKingSideCastlingOption() != '-') {
        if (!chess960) fenString += 'k';
        else fenString += this->getBlackKingSideCastlingOption();
        atLeastOneCastlingOptionExists = true;
    }
    
    if (this->getBlackQueenSideCastlingOption() != '-') {
        if (!chess960) fenString += 'q';
        else fenString += this->getBlackQueenSideCastlingOption();
        atLeastOneCastlingOptionExists = true;
    }
    
    if (!atLeastOneCastlingOptionExists) {
        fenString += '-';
    }
    
    fenString += " ";
    
    // En Passant Target
    if (this->getEnpassantTarget() != 0) {
        fenString += this->getEnpassantTarget().getLabel();
    } else {
        fenString += '-';
    }
    
    return fenString;
}