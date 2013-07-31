//
//  MoveFactory_Tests.m
//  ChessFramework
//
//  Created by Santhos Baala RS on 31/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "MoveFactory.h"

using namespace sfc::cfw;

@interface MoveFactory_Tests : XCTestCase

@end

@implementation MoveFactory_Tests {
	
}

- (void)setUp {
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.

    MoveFactory factory = MoveFactory::getInstance();
}

- (void)tearDown {
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testVacantFromSquareReturnsIllegalMove {
	std::shared_ptr<GameState> g = std::make_shared<GameState>("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR");

	for (unsigned short i = 16; i < 48; i++) {
		XCTAssertTrue(factory.legalMove(g, i, 50) == nullptr, @"Move is illegal if fromSquare is vacant");
	}
}

- (void)testToSquareOccupiedBySameColorPieceReturnsIllegalMove {

}

// Rest of the stuff is checked by the legal move generator, compared with legal moves from stockfish engine.

@end
