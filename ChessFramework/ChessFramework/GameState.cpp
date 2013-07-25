//
//  GameState.cpp
//  ChessFramework
//
//  Created by Santhosbaala RS on 25/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#include <exception>
#include <utility>

#include "GameState.h"
#include "BitboardPosition.h"

sfc::cfw::GameState::GameState(std::string && FENString,
							   const sfc::cfw::Color & aSideToMove,
							   const std::string castlingOptions,
							   const sfc::cfw::Square & aEnpassantTarget
							   ) {
	this->position = std::make_shared<sfc::cfw::BitboardPosition>(std::forward<std::string>(FENString));
}