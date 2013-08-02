//
//  MoveFactory_Tests.m
//  ChessFramework
//
//  Created by Santhos Baala RS on 31/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "Move.h"
#import "GameState.h"
#import "MoveFactory.h"

using namespace sfc::cfw;

@interface MoveFactory_Tests : XCTestCase

@end

@implementation MoveFactory_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown {
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testVacantFromSquareReturnsIllegalMove {
	std::shared_ptr<GameState> g = std::make_shared<GameState>("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR");

	for (unsigned short i = 16; i < 48; i++) {
		XCTAssertFalse(MoveFactory::legalMove(g, i, 50), @"Move is illegal if fromSquare is vacant");
	}
}

- (void)testToSquareOccupiedBySameColorPieceReturnsIllegalMove {
	std::shared_ptr<GameState> g = std::make_shared<GameState>("rnbqkbnr/pppppppp/8/8/8/5N2/PPPPPPPP/RNBQKB1R");
	
	XCTAssertFalse(MoveFactory::legalMove(g, Square("f2"), Square("f3")), @"Move is illegal if toSquare has same color piece");
}

// Rest of the stuff is checked by the legal move generator, compared with legal moves from stockfish engine.

@end
