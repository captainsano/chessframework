//
//  Position_Tests.m
//  ChessFramework
//
//  Created by Santhosbaala RS on 23/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#import <XCTest/XCTest.h>

#import <vector>
#import "Square.h"
#import "Position.h"
#import "PositionFactory.h"

using sfc::cfw::Square;
using sfc::cfw::Position;
using sfc::cfw::PositionFactory;

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
	CPPAssertNoThrow(PositionFactory::makePosition(), @"Default instantiation of position does not throw");
}

- (void)testDefaultInstantiationIsClearBoard {
	std::shared_ptr<Position> p = PositionFactory::makePosition();
	XCTAssertEquals(p->getFENString, "8/8/8/8/8/8/8/8", @"Default instantiation of position represents clear board");
}

- (void)testFENInstatiationDoesNotThrow {
	CPPAssertNoThrow(PositionFactory::makePosition("8/8/8/8/8/8/8/8"), @"Sample FEN Instantiation of position does not throw");
}

- (void)testInvalidCharactersInFENThrows {
	CPPAssertThrows(PositionFactory::makePosition("8AKC/dcasf/*)/sdfa9/125/"), @"Invalid characters in FEN throws");
}

- (void)testInvalidFormatFENThrows {
	CPPAssertThrows(PositionFactory::makePosition("8/8/8/8*8/8/8"), @"Invalid FEN format should throw error");
}

- (void)testInvalidSquareCountFENThrows {
	CPPAssertThrows(PositionFactory::makePosition("rnbqkbnr/pppppppp/8/8/4P4/8/PPPP"), @"Invalid FEN format should throw error");
}

- (void)testSampleFENInstantiations {
	std::shared_ptr<Position> p = PositionFactory::makePosition("8/8/8/8/8/8/8/8");
	XCTAssertEquals(p->getFENString(), "8/8/8/8/8/8/8/8", @"Test if clear board is being set");
	
	p.reset(PositionFactory::makePosition("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR"));
	XCTAssertEquals(p->getFENString(), "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", @"Test if the position is being set");
	
	p.reset(PositionFactory::makePosition("8/8/3K5/5k3/8/8/8/8"));
	XCTAssertEquals(p->getFENString(), "8/8/3K5/5k3/8/8/8/8", @"Test if the position is being set")
}

/// @todo Write test for attacksFrom, attacksTo, attacksFromPiece and operator[]

@end
