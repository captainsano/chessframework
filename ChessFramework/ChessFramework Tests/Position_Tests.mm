//
//  Position_Tests.m
//  ChessFramework
//
//  Created by Santhosbaala RS on 23/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#import <XCTest/XCTest.h>

#import <vector>
#import <memory>
#import "Piece.h"
#import "Square.h"
#import "BitboardPosition.h"

using sfc::cfw::Piece;
using sfc::cfw::Square;
using sfc::cfw::Position;
using sfc::cfw::BitboardPosition;

@interface Position_Tests : XCTestCase

@end

@implementation Position_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown {
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testInstantiationDoesNotThrow {
	CPPAssertNoThrow(new BitboardPosition(), @"Default instantiation of position does not throw");
}

- (void)testDefaultInstantiationIsClearBoard {
	std::shared_ptr<Position> p = std::make_shared<BitboardPosition>();
	XCTAssertTrue(p->getFEN() == "8/8/8/8/8/8/8/8", @"Default instantiation of position represents clear board");
}

- (void)testFENInstatiationDoesNotThrow {
	CPPAssertNoThrow(new BitboardPosition("8/8/8/8/8/8/8/8"), @"Sample FEN Instantiation of position does not throw");
}

- (void)testInvalidCharactersInFENThrows {
	CPPAssertThrows(new BitboardPosition("8AKC/dcasf/*)/sdfa9/125/"), @"Invalid characters in FEN throws");
}

- (void)testInvalidFormatFENThrows {
	CPPAssertThrows(new BitboardPosition("8/8/8/8*8/8/8"), @"Invalid FEN format should throw error");
}

- (void)testInvalidSquareCountFENThrows {
	CPPAssertThrows(new BitboardPosition("rnbqkbnr/pppppppp/8/8/4P4/8/PPPPPPPP/RNBQKBNR"), @"Invalid FEN format should throw error");
}

- (void)testSampleFENInstantiations {
	std::shared_ptr<Position> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/8");
	XCTAssertTrue(p->getFEN() == "8/8/8/8/8/8/8/8", @"Test if clear board is being set");
	
	p.reset();
	p = std::make_shared<BitboardPosition>("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR");
	XCTAssertTrue(p->getFEN() == "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", @"Test if the position is being set");
	
	p.reset();
	p = std::make_shared<BitboardPosition>("8/8/3K4/4k3/8/8/8/8");
	XCTAssertTrue(p->getFEN() == "8/8/3K4/4k3/8/8/8/8", @"Test if the position is being set");
	
	p.reset();
	p = std::make_shared<BitboardPosition>("r1bqk2r/1p1nbp1p/p2ppp2/8/3NPP2/2N2Q2/PPP3PP/R3KB1R");
	XCTAssertTrue(p->getFEN() == "r1bqk2r/1p1nbp1p/p2ppp2/8/3NPP2/2N2Q2/PPP3PP/R3KB1R", @"Test if the position is being set");
}

- (void)testOutOfRangeSubscriptAccessThrows {
	std::shared_ptr<Position> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/8");
	
	sfc::cfw::Piece aPiece;
	CPPAssertThrows(aPiece = (*p)[65], @"Out of range subscript access should throw");
}

- (void)testEmptyBoardReturnsAllSquaresAsVacant {
	std::shared_ptr<Position> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/8");
	
	for (unsigned short file = 0; file < 8; file++) {
		for (unsigned short rank = 0; rank < 8; rank++) {
			XCTAssertEquals((*p)[Square(file, rank)], sfc::cfw::PieceNone, @"Empty board should return no piece");
		}
	}
}

- (void)testSampleSubcriptReturnsCorrespondingPieces1 {
	std::shared_ptr<Position> p = std::make_shared<BitboardPosition>("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR");
	
	XCTAssertTrue((*p)[0] == sfc::cfw::PieceWRook, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[1], sfc::cfw::PieceWKnight, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[2], sfc::cfw::PieceWBishop, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[3], sfc::cfw::PieceWQueen, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[4], sfc::cfw::PieceWKing, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[5], sfc::cfw::PieceWBishop, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[6], sfc::cfw::PieceWKnight, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[7], sfc::cfw::PieceWRook, @"Subscript access should return the corresponding piece type");
	
	// Squares 8-15 should return white pawns.
	for (unsigned short sq = 8; sq < 16; sq++) {
		XCTAssertEquals((*p)[sq], sfc::cfw::PieceWPawn, @"Subscript access should return the corresponding piece type");
	}
	
	// Squares 16-47 should be vacant
	for (unsigned short sq = 16; sq < 48; sq++) {
		XCTAssertEquals((*p)[sq], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	}
	
	// Squares 48-55 should return black pawns.
	for (unsigned short sq = 49; sq < 56; sq++) {
		XCTAssertEquals((*p)[sq], sfc::cfw::PieceBPawn, @"Subscript access should return the corresponding piece type");
	}
	
	XCTAssertEquals((*p)[56], sfc::cfw::PieceBRook, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[57], sfc::cfw::PieceBKnight, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[58], sfc::cfw::PieceBBishop, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[59], sfc::cfw::PieceBQueen, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[60], sfc::cfw::PieceBKing, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[61], sfc::cfw::PieceBBishop, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[62], sfc::cfw::PieceBKnight, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[63], sfc::cfw::PieceBRook, @"Subscript access should return the corresponding piece type");

}

- (void)testSampleSubcriptReturnsCorrespondingPieces2 {
	std::shared_ptr<Position> p = std::make_shared<BitboardPosition>("8/8/3K4/4k3/8/8/8/8");
	
	// First 4 ranks should be vacant
	for (unsigned short rank = 0; rank < 4; rank++) {
		for (unsigned short file = 0; file < 8; file++) {
			XCTAssertEquals((*p)[Square(file, rank)], sfc::cfw::PieceNone, @"Subscript access should return the corresponding type");
		}
	}
	
	// Last 2 ranks should be vacant
	for (unsigned short rank = 6; rank < 8; rank++) {
		for (unsigned short file = 0; file < 8; file++) {
			XCTAssertEquals((*p)[Square(file, rank)], sfc::cfw::PieceNone, @"Subscript access should return the corresponding type");
		}
	}
	
	// In rank 5, first four squares and last 3 squares should be vacant and 5th square contains black king.
	XCTAssertEquals((*p)[Square(0, 4)], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square(1, 4)], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square(2, 4)], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square(3, 4)], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square(4, 4)], sfc::cfw::PieceBKing, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square(5, 4)], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square(6, 4)], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");

	// In rank 6, first 3 squares and last 4 squares should be vacant and 4the square contains white king.
	XCTAssertEquals((*p)[Square(0, 5)], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square(1, 5)], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square(2, 5)], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square(3, 5)], sfc::cfw::PieceWKing, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square(4, 5)], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square(5, 5)], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square(6, 5)], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square(7, 5)], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
}



/// @todo Write test for attacksFrom, attacksTo, attacksFromPiece

@end
