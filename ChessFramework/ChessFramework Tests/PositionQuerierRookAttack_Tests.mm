//
//  PositionQuerierRookAttack_Tests.m
//  ChessFramework
//
//  Created by Santhos Baala RS on 29/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <set>
#import "Square.h"
#import "Position.h"
#import "PositionQuerier.h"

using namespace sfc::cfw;

@interface PositionQuerierRookAttack_Tests : XCTestCase

@end

@implementation PositionQuerierRookAttack_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown {
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}


- (void)testAttacksFromA1WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/R7");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a2"), Square("a3"), Square("a4"), Square("a5"), Square("a6"), Square("a7"), Square("a8"), Square("b1"), Square("c1"), Square("d1"), Square("e1"), Square("f1"), Square("g1"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB1WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/1R6");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("b3"), Square("b4"), Square("b5"), Square("b6"), Square("b7"), Square("b8"), Square("c1"), Square("d1"), Square("e1"), Square("f1"), Square("g1"), Square("h1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC1WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/2R5");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c2"), Square("c3"), Square("c4"), Square("c5"), Square("c6"), Square("c7"), Square("c8"), Square("d1"), Square("e1"), Square("f1"), Square("g1"), Square("h1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD1WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/3R4");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d2"), Square("d3"), Square("d4"), Square("d5"), Square("d6"), Square("d7"), Square("d8"), Square("e1"), Square("f1"), Square("g1"), Square("h1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE1WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/4R3");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e2"), Square("e3"), Square("e4"), Square("e5"), Square("e6"), Square("e7"), Square("e8"), Square("f1"), Square("g1"), Square("h1"), Square("d1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF1WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/5R2");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f2"), Square("f3"), Square("f4"), Square("f5"), Square("f6"), Square("f7"), Square("f8"), Square("g1"), Square("h1"), Square("e1"), Square("d1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG1WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/6R1");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g2"), Square("g3"), Square("g4"), Square("g5"), Square("g6"), Square("g7"), Square("g8"), Square("h1"), Square("f1"), Square("e1"), Square("d1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH1WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/7R");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h2"), Square("h3"), Square("h4"), Square("h5"), Square("h6"), Square("h7"), Square("h8"), Square("g1"), Square("f1"), Square("e1"), Square("d1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA2WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/R7/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a3"), Square("a4"), Square("a5"), Square("a6"), Square("a7"), Square("a8"), Square("b2"), Square("c2"), Square("d2"), Square("e2"), Square("f2"), Square("g2"), Square("h2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB2WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/1R6/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3"), Square("b4"), Square("b5"), Square("b6"), Square("b7"), Square("b8"), Square("c2"), Square("d2"), Square("e2"), Square("f2"), Square("g2"), Square("h2"), Square("b1"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC2WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/2R5/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c3"), Square("c4"), Square("c5"), Square("c6"), Square("c7"), Square("c8"), Square("d2"), Square("e2"), Square("f2"), Square("g2"), Square("h2"), Square("c1"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD2WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/3R4/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d3"), Square("d4"), Square("d5"), Square("d6"), Square("d7"), Square("d8"), Square("e2"), Square("f2"), Square("g2"), Square("h2"), Square("d1"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE2WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/4R3/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e3"), Square("e4"), Square("e5"), Square("e6"), Square("e7"), Square("e8"), Square("f2"), Square("g2"), Square("h2"), Square("e1"), Square("d2"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF2WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/5R2/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f3"), Square("f4"), Square("f5"), Square("f6"), Square("f7"), Square("f8"), Square("g2"), Square("h2"), Square("f1"), Square("e2"), Square("d2"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG2WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/6R1/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g3"), Square("g4"), Square("g5"), Square("g6"), Square("g7"), Square("g8"), Square("h2"), Square("g1"), Square("f2"), Square("e2"), Square("d2"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH2WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/7R/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h3"), Square("h4"), Square("h5"), Square("h6"), Square("h7"), Square("h8"), Square("h1"), Square("g2"), Square("f2"), Square("e2"), Square("d2"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA3WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/R7/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a4"), Square("a5"), Square("a6"), Square("a7"), Square("a8"), Square("b3"), Square("c3"), Square("d3"), Square("e3"), Square("f3"), Square("g3"), Square("h3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB3WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/1R6/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b4"), Square("b5"), Square("b6"), Square("b7"), Square("b8"), Square("c3"), Square("d3"), Square("e3"), Square("f3"), Square("g3"), Square("h3"), Square("b2"), Square("b1"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC3WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/2R5/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c4"), Square("c5"), Square("c6"), Square("c7"), Square("c8"), Square("d3"), Square("e3"), Square("f3"), Square("g3"), Square("h3"), Square("c2"), Square("c1"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD3WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/3R4/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d4"), Square("d5"), Square("d6"), Square("d7"), Square("d8"), Square("e3"), Square("f3"), Square("g3"), Square("h3"), Square("d2"), Square("d1"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE3WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/4R3/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e4"), Square("e5"), Square("e6"), Square("e7"), Square("e8"), Square("f3"), Square("g3"), Square("h3"), Square("e2"), Square("e1"), Square("d3"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF3WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/5R2/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f4"), Square("f5"), Square("f6"), Square("f7"), Square("f8"), Square("g3"), Square("h3"), Square("f2"), Square("f1"), Square("e3"), Square("d3"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG3WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/6R1/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g4"), Square("g5"), Square("g6"), Square("g7"), Square("g8"), Square("h3"), Square("g2"), Square("g1"), Square("f3"), Square("e3"), Square("d3"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH3WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/7R/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h4"), Square("h5"), Square("h6"), Square("h7"), Square("h8"), Square("h2"), Square("h1"), Square("g3"), Square("f3"), Square("e3"), Square("d3"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA4WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/R7/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a5"), Square("a6"), Square("a7"), Square("a8"), Square("b4"), Square("c4"), Square("d4"), Square("e4"), Square("f4"), Square("g4"), Square("h4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB4WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/1R6/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b5"), Square("b6"), Square("b7"), Square("b8"), Square("c4"), Square("d4"), Square("e4"), Square("f4"), Square("g4"), Square("h4"), Square("b3"), Square("b2"), Square("b1"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC4WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/2R5/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c5"), Square("c6"), Square("c7"), Square("c8"), Square("d4"), Square("e4"), Square("f4"), Square("g4"), Square("h4"), Square("c3"), Square("c2"), Square("c1"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD4WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/3R4/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d5"), Square("d6"), Square("d7"), Square("d8"), Square("e4"), Square("f4"), Square("g4"), Square("h4"), Square("d3"), Square("d2"), Square("d1"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE4WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/4R3/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e5"), Square("e6"), Square("e7"), Square("e8"), Square("f4"), Square("g4"), Square("h4"), Square("e3"), Square("e2"), Square("e1"), Square("d4"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF4WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/5R2/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f5"), Square("f6"), Square("f7"), Square("f8"), Square("g4"), Square("h4"), Square("f3"), Square("f2"), Square("f1"), Square("e4"), Square("d4"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG4WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/6R1/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g5"), Square("g6"), Square("g7"), Square("g8"), Square("h4"), Square("g3"), Square("g2"), Square("g1"), Square("f4"), Square("e4"), Square("d4"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH4WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/7R/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h5"), Square("h6"), Square("h7"), Square("h8"), Square("h3"), Square("h2"), Square("h1"), Square("g4"), Square("f4"), Square("e4"), Square("d4"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA5WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/R7/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a6"), Square("a7"), Square("a8"), Square("b5"), Square("c5"), Square("d5"), Square("e5"), Square("f5"), Square("g5"), Square("h5"), Square("a4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB5WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/1R6/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b6"), Square("b7"), Square("b8"), Square("c5"), Square("d5"), Square("e5"), Square("f5"), Square("g5"), Square("h5"), Square("b4"), Square("b3"), Square("b2"), Square("b1"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC5WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/2R5/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c6"), Square("c7"), Square("c8"), Square("d5"), Square("e5"), Square("f5"), Square("g5"), Square("h5"), Square("c4"), Square("c3"), Square("c2"), Square("c1"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD5WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/3R4/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d6"), Square("d7"), Square("d8"), Square("e5"), Square("f5"), Square("g5"), Square("h5"), Square("d4"), Square("d3"), Square("d2"), Square("d1"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE5WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/4R3/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e6"), Square("e7"), Square("e8"), Square("f5"), Square("g5"), Square("h5"), Square("e4"), Square("e3"), Square("e2"), Square("e1"), Square("d5"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF5WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/5R2/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f6"), Square("f7"), Square("f8"), Square("g5"), Square("h5"), Square("f4"), Square("f3"), Square("f2"), Square("f1"), Square("e5"), Square("d5"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG5WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/6R1/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g6"), Square("g7"), Square("g8"), Square("h5"), Square("g4"), Square("g3"), Square("g2"), Square("g1"), Square("f5"), Square("e5"), Square("d5"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH5WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/7R/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h6"), Square("h7"), Square("h8"), Square("h4"), Square("h3"), Square("h2"), Square("h1"), Square("g5"), Square("f5"), Square("e5"), Square("d5"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA6WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/R7/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a7"), Square("a8"), Square("b6"), Square("c6"), Square("d6"), Square("e6"), Square("f6"), Square("g6"), Square("h6"), Square("a5"), Square("a4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB6WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/1R6/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b7"), Square("b8"), Square("c6"), Square("d6"), Square("e6"), Square("f6"), Square("g6"), Square("h6"), Square("b5"), Square("b4"), Square("b3"), Square("b2"), Square("b1"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC6WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/2R5/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c7"), Square("c8"), Square("d6"), Square("e6"), Square("f6"), Square("g6"), Square("h6"), Square("c5"), Square("c4"), Square("c3"), Square("c2"), Square("c1"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD6WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/3R4/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d7"), Square("d8"), Square("e6"), Square("f6"), Square("g6"), Square("h6"), Square("d5"), Square("d4"), Square("d3"), Square("d2"), Square("d1"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE6WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/4R3/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e7"), Square("e8"), Square("f6"), Square("g6"), Square("h6"), Square("e5"), Square("e4"), Square("e3"), Square("e2"), Square("e1"), Square("d6"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF6WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/5R2/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f7"), Square("f8"), Square("g6"), Square("h6"), Square("f5"), Square("f4"), Square("f3"), Square("f2"), Square("f1"), Square("e6"), Square("d6"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG6WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/6R1/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g7"), Square("g8"), Square("h6"), Square("g5"), Square("g4"), Square("g3"), Square("g2"), Square("g1"), Square("f6"), Square("e6"), Square("d6"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH6WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/7R/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h7"), Square("h8"), Square("h5"), Square("h4"), Square("h3"), Square("h2"), Square("h1"), Square("g6"), Square("f6"), Square("e6"), Square("d6"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA7WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/R7/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a8"), Square("b7"), Square("c7"), Square("d7"), Square("e7"), Square("f7"), Square("g7"), Square("h7"), Square("a6"), Square("a5"), Square("a4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB7WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/1R6/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b8"), Square("c7"), Square("d7"), Square("e7"), Square("f7"), Square("g7"), Square("h7"), Square("b6"), Square("b5"), Square("b4"), Square("b3"), Square("b2"), Square("b1"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC7WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/2R5/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c8"), Square("d7"), Square("e7"), Square("f7"), Square("g7"), Square("h7"), Square("c6"), Square("c5"), Square("c4"), Square("c3"), Square("c2"), Square("c1"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD7WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/3R4/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d8"), Square("e7"), Square("f7"), Square("g7"), Square("h7"), Square("d6"), Square("d5"), Square("d4"), Square("d3"), Square("d2"), Square("d1"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE7WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/4R3/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e8"), Square("f7"), Square("g7"), Square("h7"), Square("e6"), Square("e5"), Square("e4"), Square("e3"), Square("e2"), Square("e1"), Square("d7"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF7WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/5R2/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f8"), Square("g7"), Square("h7"), Square("f6"), Square("f5"), Square("f4"), Square("f3"), Square("f2"), Square("f1"), Square("e7"), Square("d7"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG7WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/6R1/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g8"), Square("h7"), Square("g6"), Square("g5"), Square("g4"), Square("g3"), Square("g2"), Square("g1"), Square("f7"), Square("e7"), Square("d7"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH7WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/7R/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h8"), Square("h6"), Square("h5"), Square("h4"), Square("h3"), Square("h2"), Square("h1"), Square("g7"), Square("f7"), Square("e7"), Square("d7"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA8WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("R7/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b8"), Square("c8"), Square("d8"), Square("e8"), Square("f8"), Square("g8"), Square("h8"), Square("a7"), Square("a6"), Square("a5"), Square("a4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB8WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("1R6/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c8"), Square("d8"), Square("e8"), Square("f8"), Square("g8"), Square("h8"), Square("b7"), Square("b6"), Square("b5"), Square("b4"), Square("b3"), Square("b2"), Square("b1"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC8WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("2R5/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d8"), Square("e8"), Square("f8"), Square("g8"), Square("h8"), Square("c7"), Square("c6"), Square("c5"), Square("c4"), Square("c3"), Square("c2"), Square("c1"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD8WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("3R4/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e8"), Square("f8"), Square("g8"), Square("h8"), Square("d7"), Square("d6"), Square("d5"), Square("d4"), Square("d3"), Square("d2"), Square("d1"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE8WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("4R3/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f8"), Square("g8"), Square("h8"), Square("e7"), Square("e6"), Square("e5"), Square("e4"), Square("e3"), Square("e2"), Square("e1"), Square("d8"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF8WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("5R2/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g8"), Square("h8"), Square("f7"), Square("f6"), Square("f5"), Square("f4"), Square("f3"), Square("f2"), Square("f1"), Square("e8"), Square("d8"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG8WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("6R1/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h8"), Square("g7"), Square("g6"), Square("g5"), Square("g4"), Square("g3"), Square("g2"), Square("g1"), Square("f8"), Square("e8"), Square("d8"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH8WhiteRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("7R/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h7"), Square("h6"), Square("h5"), Square("h4"), Square("h3"), Square("h2"), Square("h1"), Square("g8"), Square("f8"), Square("e8"), Square("d8"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA1BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/r7");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a2"), Square("a3"), Square("a4"), Square("a5"), Square("a6"), Square("a7"), Square("a8"), Square("b1"), Square("c1"), Square("d1"), Square("e1"), Square("f1"), Square("g1"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB1BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/1r6");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("b3"), Square("b4"), Square("b5"), Square("b6"), Square("b7"), Square("b8"), Square("c1"), Square("d1"), Square("e1"), Square("f1"), Square("g1"), Square("h1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC1BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/2r5");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c2"), Square("c3"), Square("c4"), Square("c5"), Square("c6"), Square("c7"), Square("c8"), Square("d1"), Square("e1"), Square("f1"), Square("g1"), Square("h1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD1BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/3r4");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d2"), Square("d3"), Square("d4"), Square("d5"), Square("d6"), Square("d7"), Square("d8"), Square("e1"), Square("f1"), Square("g1"), Square("h1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE1BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/4r3");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e2"), Square("e3"), Square("e4"), Square("e5"), Square("e6"), Square("e7"), Square("e8"), Square("f1"), Square("g1"), Square("h1"), Square("d1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF1BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/5r2");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f2"), Square("f3"), Square("f4"), Square("f5"), Square("f6"), Square("f7"), Square("f8"), Square("g1"), Square("h1"), Square("e1"), Square("d1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG1BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/6r1");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g2"), Square("g3"), Square("g4"), Square("g5"), Square("g6"), Square("g7"), Square("g8"), Square("h1"), Square("f1"), Square("e1"), Square("d1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH1BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/7r");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h2"), Square("h3"), Square("h4"), Square("h5"), Square("h6"), Square("h7"), Square("h8"), Square("g1"), Square("f1"), Square("e1"), Square("d1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA2BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/r7/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a3"), Square("a4"), Square("a5"), Square("a6"), Square("a7"), Square("a8"), Square("b2"), Square("c2"), Square("d2"), Square("e2"), Square("f2"), Square("g2"), Square("h2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB2BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/1r6/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3"), Square("b4"), Square("b5"), Square("b6"), Square("b7"), Square("b8"), Square("c2"), Square("d2"), Square("e2"), Square("f2"), Square("g2"), Square("h2"), Square("b1"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC2BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/2r5/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c3"), Square("c4"), Square("c5"), Square("c6"), Square("c7"), Square("c8"), Square("d2"), Square("e2"), Square("f2"), Square("g2"), Square("h2"), Square("c1"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD2BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/3r4/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d3"), Square("d4"), Square("d5"), Square("d6"), Square("d7"), Square("d8"), Square("e2"), Square("f2"), Square("g2"), Square("h2"), Square("d1"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE2BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/4r3/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e3"), Square("e4"), Square("e5"), Square("e6"), Square("e7"), Square("e8"), Square("f2"), Square("g2"), Square("h2"), Square("e1"), Square("d2"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF2BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/5r2/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f3"), Square("f4"), Square("f5"), Square("f6"), Square("f7"), Square("f8"), Square("g2"), Square("h2"), Square("f1"), Square("e2"), Square("d2"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG2BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/6r1/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g3"), Square("g4"), Square("g5"), Square("g6"), Square("g7"), Square("g8"), Square("h2"), Square("g1"), Square("f2"), Square("e2"), Square("d2"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH2BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/7r/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h3"), Square("h4"), Square("h5"), Square("h6"), Square("h7"), Square("h8"), Square("h1"), Square("g2"), Square("f2"), Square("e2"), Square("d2"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA3BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/r7/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a4"), Square("a5"), Square("a6"), Square("a7"), Square("a8"), Square("b3"), Square("c3"), Square("d3"), Square("e3"), Square("f3"), Square("g3"), Square("h3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB3BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/1r6/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b4"), Square("b5"), Square("b6"), Square("b7"), Square("b8"), Square("c3"), Square("d3"), Square("e3"), Square("f3"), Square("g3"), Square("h3"), Square("b2"), Square("b1"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC3BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/2r5/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c4"), Square("c5"), Square("c6"), Square("c7"), Square("c8"), Square("d3"), Square("e3"), Square("f3"), Square("g3"), Square("h3"), Square("c2"), Square("c1"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD3BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/3r4/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d4"), Square("d5"), Square("d6"), Square("d7"), Square("d8"), Square("e3"), Square("f3"), Square("g3"), Square("h3"), Square("d2"), Square("d1"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE3BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/4r3/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e4"), Square("e5"), Square("e6"), Square("e7"), Square("e8"), Square("f3"), Square("g3"), Square("h3"), Square("e2"), Square("e1"), Square("d3"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF3BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/5r2/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f4"), Square("f5"), Square("f6"), Square("f7"), Square("f8"), Square("g3"), Square("h3"), Square("f2"), Square("f1"), Square("e3"), Square("d3"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG3BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/6r1/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g4"), Square("g5"), Square("g6"), Square("g7"), Square("g8"), Square("h3"), Square("g2"), Square("g1"), Square("f3"), Square("e3"), Square("d3"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH3BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/7r/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h4"), Square("h5"), Square("h6"), Square("h7"), Square("h8"), Square("h2"), Square("h1"), Square("g3"), Square("f3"), Square("e3"), Square("d3"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA4BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/r7/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a5"), Square("a6"), Square("a7"), Square("a8"), Square("b4"), Square("c4"), Square("d4"), Square("e4"), Square("f4"), Square("g4"), Square("h4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB4BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/1r6/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b5"), Square("b6"), Square("b7"), Square("b8"), Square("c4"), Square("d4"), Square("e4"), Square("f4"), Square("g4"), Square("h4"), Square("b3"), Square("b2"), Square("b1"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC4BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/2r5/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c5"), Square("c6"), Square("c7"), Square("c8"), Square("d4"), Square("e4"), Square("f4"), Square("g4"), Square("h4"), Square("c3"), Square("c2"), Square("c1"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD4BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/3r4/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d5"), Square("d6"), Square("d7"), Square("d8"), Square("e4"), Square("f4"), Square("g4"), Square("h4"), Square("d3"), Square("d2"), Square("d1"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE4BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/4r3/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e5"), Square("e6"), Square("e7"), Square("e8"), Square("f4"), Square("g4"), Square("h4"), Square("e3"), Square("e2"), Square("e1"), Square("d4"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF4BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/5r2/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f5"), Square("f6"), Square("f7"), Square("f8"), Square("g4"), Square("h4"), Square("f3"), Square("f2"), Square("f1"), Square("e4"), Square("d4"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG4BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/6r1/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g5"), Square("g6"), Square("g7"), Square("g8"), Square("h4"), Square("g3"), Square("g2"), Square("g1"), Square("f4"), Square("e4"), Square("d4"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH4BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/7r/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h5"), Square("h6"), Square("h7"), Square("h8"), Square("h3"), Square("h2"), Square("h1"), Square("g4"), Square("f4"), Square("e4"), Square("d4"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA5BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/r7/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a6"), Square("a7"), Square("a8"), Square("b5"), Square("c5"), Square("d5"), Square("e5"), Square("f5"), Square("g5"), Square("h5"), Square("a4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB5BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/1r6/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b6"), Square("b7"), Square("b8"), Square("c5"), Square("d5"), Square("e5"), Square("f5"), Square("g5"), Square("h5"), Square("b4"), Square("b3"), Square("b2"), Square("b1"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC5BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/2r5/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c6"), Square("c7"), Square("c8"), Square("d5"), Square("e5"), Square("f5"), Square("g5"), Square("h5"), Square("c4"), Square("c3"), Square("c2"), Square("c1"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD5BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/3r4/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d6"), Square("d7"), Square("d8"), Square("e5"), Square("f5"), Square("g5"), Square("h5"), Square("d4"), Square("d3"), Square("d2"), Square("d1"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE5BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/4r3/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e6"), Square("e7"), Square("e8"), Square("f5"), Square("g5"), Square("h5"), Square("e4"), Square("e3"), Square("e2"), Square("e1"), Square("d5"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF5BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/5r2/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f6"), Square("f7"), Square("f8"), Square("g5"), Square("h5"), Square("f4"), Square("f3"), Square("f2"), Square("f1"), Square("e5"), Square("d5"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG5BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/6r1/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g6"), Square("g7"), Square("g8"), Square("h5"), Square("g4"), Square("g3"), Square("g2"), Square("g1"), Square("f5"), Square("e5"), Square("d5"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH5BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/7r/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h6"), Square("h7"), Square("h8"), Square("h4"), Square("h3"), Square("h2"), Square("h1"), Square("g5"), Square("f5"), Square("e5"), Square("d5"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA6BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/r7/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a7"), Square("a8"), Square("b6"), Square("c6"), Square("d6"), Square("e6"), Square("f6"), Square("g6"), Square("h6"), Square("a5"), Square("a4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB6BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/1r6/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b7"), Square("b8"), Square("c6"), Square("d6"), Square("e6"), Square("f6"), Square("g6"), Square("h6"), Square("b5"), Square("b4"), Square("b3"), Square("b2"), Square("b1"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC6BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/2r5/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c7"), Square("c8"), Square("d6"), Square("e6"), Square("f6"), Square("g6"), Square("h6"), Square("c5"), Square("c4"), Square("c3"), Square("c2"), Square("c1"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD6BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/3r4/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d7"), Square("d8"), Square("e6"), Square("f6"), Square("g6"), Square("h6"), Square("d5"), Square("d4"), Square("d3"), Square("d2"), Square("d1"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE6BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/4r3/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e7"), Square("e8"), Square("f6"), Square("g6"), Square("h6"), Square("e5"), Square("e4"), Square("e3"), Square("e2"), Square("e1"), Square("d6"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF6BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/5r2/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f7"), Square("f8"), Square("g6"), Square("h6"), Square("f5"), Square("f4"), Square("f3"), Square("f2"), Square("f1"), Square("e6"), Square("d6"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG6BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/6r1/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g7"), Square("g8"), Square("h6"), Square("g5"), Square("g4"), Square("g3"), Square("g2"), Square("g1"), Square("f6"), Square("e6"), Square("d6"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH6BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/7r/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h7"), Square("h8"), Square("h5"), Square("h4"), Square("h3"), Square("h2"), Square("h1"), Square("g6"), Square("f6"), Square("e6"), Square("d6"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA7BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/r7/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a8"), Square("b7"), Square("c7"), Square("d7"), Square("e7"), Square("f7"), Square("g7"), Square("h7"), Square("a6"), Square("a5"), Square("a4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB7BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/1r6/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b8"), Square("c7"), Square("d7"), Square("e7"), Square("f7"), Square("g7"), Square("h7"), Square("b6"), Square("b5"), Square("b4"), Square("b3"), Square("b2"), Square("b1"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC7BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/2r5/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c8"), Square("d7"), Square("e7"), Square("f7"), Square("g7"), Square("h7"), Square("c6"), Square("c5"), Square("c4"), Square("c3"), Square("c2"), Square("c1"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD7BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/3r4/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d8"), Square("e7"), Square("f7"), Square("g7"), Square("h7"), Square("d6"), Square("d5"), Square("d4"), Square("d3"), Square("d2"), Square("d1"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE7BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/4r3/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e8"), Square("f7"), Square("g7"), Square("h7"), Square("e6"), Square("e5"), Square("e4"), Square("e3"), Square("e2"), Square("e1"), Square("d7"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF7BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/5r2/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f8"), Square("g7"), Square("h7"), Square("f6"), Square("f5"), Square("f4"), Square("f3"), Square("f2"), Square("f1"), Square("e7"), Square("d7"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG7BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/6r1/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g8"), Square("h7"), Square("g6"), Square("g5"), Square("g4"), Square("g3"), Square("g2"), Square("g1"), Square("f7"), Square("e7"), Square("d7"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH7BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/7r/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h8"), Square("h6"), Square("h5"), Square("h4"), Square("h3"), Square("h2"), Square("h1"), Square("g7"), Square("f7"), Square("e7"), Square("d7"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA8BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("r7/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b8"), Square("c8"), Square("d8"), Square("e8"), Square("f8"), Square("g8"), Square("h8"), Square("a7"), Square("a6"), Square("a5"), Square("a4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB8BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("1r6/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c8"), Square("d8"), Square("e8"), Square("f8"), Square("g8"), Square("h8"), Square("b7"), Square("b6"), Square("b5"), Square("b4"), Square("b3"), Square("b2"), Square("b1"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC8BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("2r5/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d8"), Square("e8"), Square("f8"), Square("g8"), Square("h8"), Square("c7"), Square("c6"), Square("c5"), Square("c4"), Square("c3"), Square("c2"), Square("c1"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD8BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("3r4/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e8"), Square("f8"), Square("g8"), Square("h8"), Square("d7"), Square("d6"), Square("d5"), Square("d4"), Square("d3"), Square("d2"), Square("d1"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE8BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("4r3/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f8"), Square("g8"), Square("h8"), Square("e7"), Square("e6"), Square("e5"), Square("e4"), Square("e3"), Square("e2"), Square("e1"), Square("d8"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF8BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("5r2/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g8"), Square("h8"), Square("f7"), Square("f6"), Square("f5"), Square("f4"), Square("f3"), Square("f2"), Square("f1"), Square("e8"), Square("d8"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG8BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("6r1/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h8"), Square("g7"), Square("g6"), Square("g5"), Square("g4"), Square("g3"), Square("g2"), Square("g1"), Square("f8"), Square("e8"), Square("d8"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH8BlackRook {
    std::shared_ptr<Position> p = std::make_shared<Position>("7r/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h7"), Square("h6"), Square("h5"), Square("h4"), Square("h3"), Square("h2"), Square("h1"), Square("g8"), Square("f8"), Square("e8"), Square("d8"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

@end
