//
//  PositionQuerierKnightAttack_Tests.m
//  ChessFramework
//
//  Created by Santhos Baala RS on 29/07/13.
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

@interface PositionQuerierKnightAttack_Tests : XCTestCase

@end

@implementation PositionQuerierKnightAttack_Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

// Below tests generated from script

/*------------------ Tests on clear board ------------------*/

- (void)testAttacksFromA1 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/7N");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3"), Square("c2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB1 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/6N1");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a3"), Square("c3"), Square("d2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC1 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/5N2");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a2"), Square("b3"), Square("d3"), Square("e2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD1 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/4N3");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("c3"), Square("e3"), Square("f2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE1 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/3N4");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c2"), Square("d3"), Square("f3"), Square("g2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF1 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/2N5");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d2"), Square("e3"), Square("g3"), Square("h2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG1 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/1N6");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e2"), Square("f3"), Square("h3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH1 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/N7");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f2"), Square("g3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA2 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/7N/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b4"), Square("c1"), Square("c3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB2 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/6N1/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a4"), Square("c4"), Square("d1"), Square("d3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC2 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/5N2/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a1"), Square("a3"), Square("b4"), Square("d4"), Square("e1"), Square("e3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD2 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/4N3/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b1"), Square("b3"), Square("c4"), Square("e4"), Square("f1"), Square("f3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE2 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/3N4/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c1"), Square("c3"), Square("d4"), Square("f4"), Square("g1"), Square("g3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF2 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/2N5/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d1"), Square("d3"), Square("e4"), Square("g4"), Square("h1"), Square("h3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG2 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/1N6/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e1"), Square("e3"), Square("f4"), Square("h4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH2 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/N7/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f1"), Square("f3"), Square("g4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA3 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/7N/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b1"), Square("b5"), Square("c2"), Square("c4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB3 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/6N1/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a1"), Square("a5"), Square("c1"), Square("c5"), Square("d2"), Square("d4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC3 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/5N2/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a2"), Square("a4"), Square("b1"), Square("b5"), Square("d1"), Square("d5"), Square("e2"), Square("e4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD3 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/4N3/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("b4"), Square("c1"), Square("c5"), Square("e1"), Square("e5"), Square("f2"), Square("f4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE3 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/3N4/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c2"), Square("c4"), Square("d1"), Square("d5"), Square("f1"), Square("f5"), Square("g2"), Square("g4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF3 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/2N5/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d2"), Square("d4"), Square("e1"), Square("e5"), Square("g1"), Square("g5"), Square("h2"), Square("h4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG3 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/1N6/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e2"), Square("e4"), Square("f1"), Square("f5"), Square("h1"), Square("h5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH3 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/N7/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f2"), Square("f4"), Square("g1"), Square("g5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA4 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/7N/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("b6"), Square("c3"), Square("c5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB4 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/6N1/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a2"), Square("a6"), Square("c2"), Square("c6"), Square("d3"), Square("d5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC4 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/5N2/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a3"), Square("a5"), Square("b2"), Square("b6"), Square("d2"), Square("d6"), Square("e3"), Square("e5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD4 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/4N3/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3"), Square("b5"), Square("c2"), Square("c6"), Square("e2"), Square("e6"), Square("f3"), Square("f5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE4 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/3N4/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c3"), Square("c5"), Square("d2"), Square("d6"), Square("f2"), Square("f6"), Square("g3"), Square("g5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF4 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/2N5/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d3"), Square("d5"), Square("e2"), Square("e6"), Square("g2"), Square("g6"), Square("h3"), Square("h5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG4 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/1N6/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e3"), Square("e5"), Square("f2"), Square("f6"), Square("h2"), Square("h6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH4 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/N7/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f3"), Square("f5"), Square("g2"), Square("g6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA5 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/7N/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3"), Square("b7"), Square("c4"), Square("c6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB5 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/6N1/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a3"), Square("a7"), Square("c3"), Square("c7"), Square("d4"), Square("d6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC5 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/5N2/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a4"), Square("a6"), Square("b3"), Square("b7"), Square("d3"), Square("d7"), Square("e4"), Square("e6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD5 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/4N3/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b4"), Square("b6"), Square("c3"), Square("c7"), Square("e3"), Square("e7"), Square("f4"), Square("f6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE5 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/3N4/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c4"), Square("c6"), Square("d3"), Square("d7"), Square("f3"), Square("f7"), Square("g4"), Square("g6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF5 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/2N5/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d4"), Square("d6"), Square("e3"), Square("e7"), Square("g3"), Square("g7"), Square("h4"), Square("h6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG5 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/1N6/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e4"), Square("e6"), Square("f3"), Square("f7"), Square("h3"), Square("h7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH5 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/N7/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f4"), Square("f6"), Square("g3"), Square("g7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA6 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/7N/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b4"), Square("b8"), Square("c5"), Square("c7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB6 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/6N1/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a4"), Square("a8"), Square("c4"), Square("c8"), Square("d5"), Square("d7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC6 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/5N2/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a5"), Square("a7"), Square("b4"), Square("b8"), Square("d4"), Square("d8"), Square("e5"), Square("e7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD6 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/4N3/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b5"), Square("b7"), Square("c4"), Square("c8"), Square("e4"), Square("e8"), Square("f5"), Square("f7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE6 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/3N4/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c5"), Square("c7"), Square("d4"), Square("d8"), Square("f4"), Square("f8"), Square("g5"), Square("g7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF6 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/2N5/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d5"), Square("d7"), Square("e4"), Square("e8"), Square("g4"), Square("g8"), Square("h5"), Square("h7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG6 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/1N6/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e5"), Square("e7"), Square("f4"), Square("f8"), Square("h4"), Square("h8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH6 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/N7/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f5"), Square("f7"), Square("g4"), Square("g8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA7 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/7N/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b5"), Square("c6"), Square("c8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB7 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/6N1/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a5"), Square("c5"), Square("d6"), Square("d8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC7 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/5N2/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a6"), Square("a8"), Square("b5"), Square("d5"), Square("e6"), Square("e8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD7 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/4N3/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b6"), Square("b8"), Square("c5"), Square("e5"), Square("f6"), Square("f8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE7 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/3N4/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c6"), Square("c8"), Square("d5"), Square("f5"), Square("g6"), Square("g8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF7 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/2N5/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d6"), Square("d8"), Square("e5"), Square("g5"), Square("h6"), Square("h8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG7 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/1N6/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e6"), Square("e8"), Square("f5"), Square("h5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH7 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/N7/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f6"), Square("f8"), Square("g5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA8 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("7N/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b6"), Square("c7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB8 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("6N1/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a6"), Square("c6"), Square("d7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC8 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("5N2/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a7"), Square("b6"), Square("d6"), Square("e7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD8 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("4N3/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b7"), Square("c6"), Square("e6"), Square("f7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE8 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("3N4/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c7"), Square("d6"), Square("f6"), Square("g7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF8 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("2N5/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d7"), Square("e6"), Square("g6"), Square("h7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG8 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("1N6/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e7"), Square("f6"), Square("h6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH8 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("N7/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f7"), Square("g6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

/*------------------ Tests on occupied white occupied board, white knight ------------------*/

/*------------------ Tests on occupied white occupied board, black knight ------------------*/

/*------------------ Tests on occupied black occupied board, white knight ------------------*/

/*------------------ Tests on occupied black occupied board, black knight ------------------*/

@end
