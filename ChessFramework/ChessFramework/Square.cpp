//
//  Square.cpp
//  ChessFramework
//
//  Created by Santhos Baala RS on 23/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#include "Square.h"
#include <exception>

sfc::cfw::Square::Square(unsigned short aIndex) {
    if (aIndex > 63) {
        throw std::out_of_range("Square index must be 0-63");
    }
    
    this->index = aIndex;
}

sfc::cfw::Square::Square(unsigned short aFile, unsigned short aRank) {
    if (aFile > 7) {
        throw std::out_of_range("file index must be 0-7");
    }
    
    if (aRank > 7) {
        throw std::out_of_range("rank index must be 0-7");
    }
    
    this->index = (aRank << 3) | aFile;
}

sfc::cfw::Square::operator unsigned short() const {
    return this->getIndex();
}

unsigned short sfc::cfw::Square::getFile() const {
    return (this->index & 7);           // return the last 3 bits
}

unsigned short sfc::cfw::Square::getRank() const {
    return ((this->index >> 3) & 7);    // return the first 3 bits
}

unsigned short sfc::cfw::Square::getIndex() const {
    return this->index;
}

std::string sfc::cfw::Square::getLabel() const {
    char fileChar = this->getFile() + 'a';
    char rankChar = this->getRank() + '1';
    return std::string{fileChar, rankChar};
}