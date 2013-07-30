//
//  PositionQuerier_Tests.m
//  ChessFramework
//
//  Created by Santhos Baala RS on 28/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#import <XCTest/XCTest.h>

#import <set>
#import "Square.h"
#import "Position.h"
#import "PositionQuerier.h"

using namespace sfc::cfw;

@interface PositionQuerier_Tests : XCTestCase

@end

@implementation PositionQuerier_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown {
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testInitializingWithNullPositionThrows {
    CPPAssertThrows(PositionQuerier(nullptr), @"Initializing a position querier with null position should throw");
}

- (void)testInitilizingWithValidPositionDoesNotThrow {
    CPPAssertNoThrow(PositionQuerier(std::make_shared<Position>("8/8/8/8/8/8/8/8")), @"Initializing a position querier with valid position should not throw");
}


- (void)testCorrectPieceCountIsReturnedForClearBoard {
	std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(std::make_shared<Position>("8/8/8/8/8/8/8/8"));
	
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceNone) == 64, @"Clear board should indicate all squares are vacant");
	
	// White and black pieces
	for (sfc::cfw::GenericPiece i = sfc::cfw::GenericPiecePawn; i <= sfc::cfw::GenericPieceKnight; i++) {
		XCTAssertTrue(q->pieceCount(sfc::cfw::Piece(i)) == 0, @"White pieces count should be 0");
		XCTAssertTrue(q->pieceCount(sfc::cfw::Piece((1 << 3) | i)) == 0, @"Black pieces count should be 0");
	}
}

- (void)testCorrectPieceCountIsReturnedForSamplePosition1 {
	std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(std::make_shared<Position>("8/8/3K4/4k3/8/8/8/8"));
	
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceNone) == 62, @"Position should indicate corresponding squares count");
	
	// White pieces
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWPawn) == 0, @"White pawn count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWKing) == 1, @"White king count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWQueen) == 0, @"White queen count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWRook) == 0, @"White rook count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWBishop) == 0, @"White bishop count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWKnight) == 0, @"White knight count should be corresponding");
    
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBPawn) == 0, @"Black pawn count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBKing) == 1, @"Black king count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBQueen) == 0, @"Black queen count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBRook) == 0, @"Black rook count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBBishop) == 0, @"Black bishop count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBKnight) == 0, @"Black knight count should be corresponding");
}

- (void)testCorrectPieceCountIsReturnedForSamplePosition2 {
	std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(std::make_shared<Position>("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR"));
	
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceNone) == 32, @"Position should indicate corresponding squares count");
	
	// White pieces
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWPawn) == 8, @"White pawn count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWKing) == 1, @"White king count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWQueen) == 1, @"White queen count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWRook) == 2, @"White rook count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWBishop) == 2, @"White bishop count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWKnight) == 2, @"White knight count should be corresponding");
	
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBPawn) == 8, @"Black Pawn count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBKing) == 1, @"Black King count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBQueen) == 1, @"Black Queen count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBRook) == 2, @"Black Rook count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBBishop) == 2, @"Black Bishop count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBKnight) == 2, @"Black Knight count should be corresponding");
}

- (void)testReturns0AttacksFromOnClearBoard {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    for (unsigned short i = 0; i < 64; i++) {
        std::set<Square> attacksFrom = q->attacksFrom(i);
        XCTAssertTrue(attacksFrom.empty(), @"There should not be any attacks from on an empty board");
    }
}

- (void)testReturns0AttacksToOnClearBoard {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    for (unsigned short i = 0; i < 64; i++) {
        std::set<Square> attacksTo = q->attacksTo(i);
        XCTAssertTrue(attacksTo.empty(), @"There should not be any attacks from on an empty board");
    }
}

@end
