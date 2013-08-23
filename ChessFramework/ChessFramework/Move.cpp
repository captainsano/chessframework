//
//  Move.cpp
//  ChessFramework
//
//  Created by Santhos Baala RS on 31/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#include "Move.h"

std::string sfc::cfw::Move::getSANString() const {
	std::string toReturn;
	
	if (this->getCastlingType() == CastlingTypeKSide) {
		toReturn = "O-O";
	} else if (this->getCastlingType() == CastlingTypeQSide) {
		toReturn = "O-O-O";
	}
	
	switch (getGenericPiece(pieceMoved)) {
		case GenericPieceKing: {
			if (this->getCastlingType() == CastlingTypeNone) {
				toReturn = "K";
			}
			break;
		}
		case GenericPieceQueen: toReturn = "Q"; break;
		case GenericPieceRook: toReturn = "R"; break;
		case GenericPieceBishop: toReturn = "B"; break;
		case GenericPieceKnight: toReturn = "N"; break;
			
		case GenericPieceNone:
		case GenericPiecePawn:
		default: break;
	}
	
	// Disambiguation string
	std::string disambiguationString;
	bool commonRank = false, commonFile = false, onlyToSquareIsCommon = false;
		
	for (auto otherMove : MoveFactory::allLegalMoves(gameStateBeforeMove, pieceMoved)) {
		if (otherMove->fromSquare != fromSquare &&
			otherMove->pieceMoved == pieceMoved &&
			otherMove->toSquare == toSquare) {
			
			// Check if the pieces are in the same file, then use rank for disambiguation
			if (otherMove->fromSquare.getFile() == fromSquare.getFile()) {
				commonFile = true;
			}
			
			// Check if the pieces are in the same rank, then use file for disambiguation
			if (otherMove->fromSquare.getRank() == fromSquare.getRank()) {
				commonRank = true;
			}
			
			// If both file and rank are not common, then file/rank can be used. SAN advices file
			onlyToSquareIsCommon = true;
		}
	}
	
	if (commonRank && commonFile) {
		disambiguationString += fromSquare.getLabel();
	} else if (commonRank) {
		disambiguationString += fromSquare.getLabel()[0];	// Mark the file
	} else if (commonFile) {
		disambiguationString += fromSquare.getLabel()[1];	// Mark the rank
	} else if (onlyToSquareIsCommon) {
		disambiguationString += fromSquare.getLabel()[0];	// Use file
	}
	
	if (disambiguationString.length() > 0 && getGenericPiece(pieceMoved) != GenericPiecePawn) {
		toReturn += disambiguationString;
	}
	
	// Capture character
	if (this->getCastlingType() == CastlingTypeNone) {
		if (capturedPiece != PieceNone) {
			// If the capture was by a pawn, append the file
			if (getGenericPiece(pieceMoved) == GenericPiecePawn) {
				toReturn += fromSquare.getLabel()[0];
			}
			toReturn += "x";
		}
	}
	
	// toSquare
	if (this->getCastlingType() == CastlingTypeNone) {
		toReturn += this->getToSquare().getLabel();
	}
	
	// Promotion
	if (getGenericPiece(pieceMoved) == GenericPiecePawn &&
		(toSquare.getRank() == 7 || toSquare.getRank() == 0)) {
		toReturn += '=';
		switch (promotedToPiece) {
			case PromotablePieceQueen:	toReturn += 'Q'; break;
			case PromotablePieceRook:	toReturn += 'R'; break;
			case PromotablePieceBishop: toReturn += 'B'; break;
			case PromotablePieceKnight: toReturn += 'N'; break;
			default: break;
		}
	}
	
	// Check/Checkmate
	if (getPieceColor(pieceMoved) == ColorWhite) {
		switch (gameStateAfterMove->getBlackKingStatus()) {
			case KingStatusCheck: toReturn += "+"; break;
			case KingStatusCheckMate: toReturn += "#"; break;
			case KingStatusNormal:
			case KingStatusStaleMate:
				break;
		}
	} else {
		switch (gameStateAfterMove->getWhiteKingStatus()) {
			case KingStatusCheck: toReturn += "+"; break;
			case KingStatusCheckMate: toReturn += "#"; break;
			case KingStatusNormal:
			case KingStatusStaleMate:
				break;
		}
	}
	
	return toReturn;
}