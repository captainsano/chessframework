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
#import "Square.h"
#import "BitboardPosition.h"

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
	XCTAssertEquals(p->getFEN(), "8/8/8/8/8/8/8/8", @"Default instantiation of position represents clear board");
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
	CPPAssertThrows(new BitboardPosition("rnbqkbnr/pppppppp/8/8/4P4/8/PPPP"), @"Invalid FEN format should throw error");
}

- (void)testSampleFENInstantiations {
	std::shared_ptr<Position> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/8");
	XCTAssertEquals(p->getFEN(), "8/8/8/8/8/8/8/8", @"Test if clear board is being set");
	
	p = std::make_shared<BitboardPosition>("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR");
	XCTAssertEquals(p->getFEN(), "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", @"Test if the position is being set");
	
	p = std::make_shared<BitboardPosition>("8/8/3K4/4k3/8/8/8/8");
	XCTAssertEquals(p->getFEN(), "8/8/4K3/4k3/8/8/8/8", @"Test if the position is being set");
}

/// @todo Write test for attacksFrom, attacksTo, attacksFromPiece and operator[]

@end
