//
//  PositionQuerier_Tests.m
//  ChessFramework
//
//  Created by Santhos Baala RS on 28/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#import <XCTest/XCTest.h>

#import <set>
#import "Position.h"
#import "Square.h"
#import "BitboardPosition.h"
#import "PositionQuerier.h"
#import "BitboardPositionQuerier.h"

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
    CPPAssertThrows(BitboardPositionQuerier(nullptr), @"Initializing a position querier with null position should throw");
}

- (void)testInitilizingWithValidPositionDoesNotThrow {
    CPPAssertNoThrow(BitboardPositionQuerier(std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/8")), @"Initializing a position querier with valid position should not throw");
}

- (void)testReturns0AttacksFromOnClearBoard {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    for (unsigned short i = 0; i < 64; i++) {
        std::set<Square> attacksFrom = q->attacksFrom(i);
        XCTAssertTrue(attacksFrom.empty(), @"There should not be any attacks from on an empty board");
    }
}

- (void)testReturns0AttacksToOnClearBoard {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    for (unsigned short i = 0; i < 64; i++) {
        std::set<Square> attacksTo = q->attacksTo(i);
        XCTAssertTrue(attacksTo.empty(), @"There should not be any attacks from on an empty board");
    }
}

@end
