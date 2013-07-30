//
//  PositionQuerierBishopAttack_Tests.m
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

@interface PositionQuerierBishopAttack_Tests : XCTestCase

@end

@implementation PositionQuerierBishopAttack_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown {
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testAttacksFromA1WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/B7");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("c3"), Square("d4"), Square("e5"), Square("f6"), Square("g7"), Square("h8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB1WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/1B6");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a2"), Square("c2"), Square("d3"), Square("e4"), Square("f5"), Square("g6"), Square("h7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC1WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/2B5");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("a3"), Square("d2"), Square("e3"), Square("f4"), Square("g5"), Square("h6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD1WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/3B4");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c2"), Square("b3"), Square("a4"), Square("e2"), Square("f3"), Square("g4"), Square("h5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE1WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/4B3");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d2"), Square("c3"), Square("b4"), Square("a5"), Square("f2"), Square("g3"), Square("h4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF1WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/5B2");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e2"), Square("d3"), Square("c4"), Square("b5"), Square("a6"), Square("g2"), Square("h3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG1WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/6B1");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f2"), Square("e3"), Square("d4"), Square("c5"), Square("b6"), Square("a7"), Square("h2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH1WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/7B");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g2"), Square("f3"), Square("e4"), Square("d5"), Square("c6"), Square("b7"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA2WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/B7/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3"), Square("c4"), Square("d5"), Square("e6"), Square("f7"), Square("g8"), Square("b1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB2WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/1B6/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a1"), Square("a3"), Square("c3"), Square("d4"), Square("e5"), Square("f6"), Square("g7"), Square("h8"), Square("c1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC2WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/2B5/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b1"), Square("b3"), Square("a4"), Square("d3"), Square("e4"), Square("f5"), Square("g6"), Square("h7"), Square("d1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD2WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/3B4/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c1"), Square("c3"), Square("b4"), Square("a5"), Square("e3"), Square("f4"), Square("g5"), Square("h6"), Square("e1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE2WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/4B3/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d1"), Square("d3"), Square("c4"), Square("b5"), Square("a6"), Square("f3"), Square("g4"), Square("h5"), Square("f1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF2WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/5B2/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e1"), Square("e3"), Square("d4"), Square("c5"), Square("b6"), Square("a7"), Square("g3"), Square("h4"), Square("g1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG2WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/6B1/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f1"), Square("f3"), Square("e4"), Square("d5"), Square("c6"), Square("b7"), Square("a8"), Square("h3"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH2WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/7B/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g1"), Square("g3"), Square("f4"), Square("e5"), Square("d6"), Square("c7"), Square("b8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA3WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/B7/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b4"), Square("c5"), Square("d6"), Square("e7"), Square("f8"), Square("b2"), Square("c1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB3WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/1B6/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a2"), Square("a4"), Square("c4"), Square("d5"), Square("e6"), Square("f7"), Square("g8"), Square("c2"), Square("d1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC3WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/2B5/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("a1"), Square("b4"), Square("a5"), Square("d4"), Square("e5"), Square("f6"), Square("g7"), Square("h8"), Square("d2"), Square("e1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD3WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/3B4/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c2"), Square("b1"), Square("c4"), Square("b5"), Square("a6"), Square("e4"), Square("f5"), Square("g6"), Square("h7"), Square("e2"), Square("f1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE3WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/4B3/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d2"), Square("c1"), Square("d4"), Square("c5"), Square("b6"), Square("a7"), Square("f4"), Square("g5"), Square("h6"), Square("f2"), Square("g1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF3WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/5B2/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e2"), Square("d1"), Square("e4"), Square("d5"), Square("c6"), Square("b7"), Square("a8"), Square("g4"), Square("h5"), Square("g2"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG3WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/6B1/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f2"), Square("e1"), Square("f4"), Square("e5"), Square("d6"), Square("c7"), Square("b8"), Square("h4"), Square("h2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH3WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/7B/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g2"), Square("f1"), Square("g4"), Square("f5"), Square("e6"), Square("d7"), Square("c8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA4WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/B7/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b5"), Square("c6"), Square("d7"), Square("e8"), Square("b3"), Square("c2"), Square("d1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB4WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/1B6/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a3"), Square("a5"), Square("c5"), Square("d6"), Square("e7"), Square("f8"), Square("c3"), Square("d2"), Square("e1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC4WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/2B5/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3"), Square("a2"), Square("b5"), Square("a6"), Square("d5"), Square("e6"), Square("f7"), Square("g8"), Square("d3"), Square("e2"), Square("f1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD4WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/3B4/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c3"), Square("b2"), Square("a1"), Square("c5"), Square("b6"), Square("a7"), Square("e5"), Square("f6"), Square("g7"), Square("h8"), Square("e3"), Square("f2"), Square("g1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE4WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/4B3/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d3"), Square("c2"), Square("b1"), Square("d5"), Square("c6"), Square("b7"), Square("a8"), Square("f5"), Square("g6"), Square("h7"), Square("f3"), Square("g2"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF4WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/5B2/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e3"), Square("d2"), Square("c1"), Square("e5"), Square("d6"), Square("c7"), Square("b8"), Square("g5"), Square("h6"), Square("g3"), Square("h2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG4WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/6B1/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f3"), Square("e2"), Square("d1"), Square("f5"), Square("e6"), Square("d7"), Square("c8"), Square("h5"), Square("h3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH4WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/7B/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g3"), Square("f2"), Square("e1"), Square("g5"), Square("f6"), Square("e7"), Square("d8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA5WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/B7/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b6"), Square("c7"), Square("d8"), Square("b4"), Square("c3"), Square("d2"), Square("e1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB5WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/1B6/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a4"), Square("a6"), Square("c6"), Square("d7"), Square("e8"), Square("c4"), Square("d3"), Square("e2"), Square("f1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC5WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/2B5/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b4"), Square("a3"), Square("b6"), Square("a7"), Square("d6"), Square("e7"), Square("f8"), Square("d4"), Square("e3"), Square("f2"), Square("g1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD5WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/3B4/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c4"), Square("b3"), Square("a2"), Square("c6"), Square("b7"), Square("a8"), Square("e6"), Square("f7"), Square("g8"), Square("e4"), Square("f3"), Square("g2"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE5WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/4B3/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d4"), Square("c3"), Square("b2"), Square("a1"), Square("d6"), Square("c7"), Square("b8"), Square("f6"), Square("g7"), Square("h8"), Square("f4"), Square("g3"), Square("h2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF5WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/5B2/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e4"), Square("d3"), Square("c2"), Square("b1"), Square("e6"), Square("d7"), Square("c8"), Square("g6"), Square("h7"), Square("g4"), Square("h3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG5WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/6B1/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f4"), Square("e3"), Square("d2"), Square("c1"), Square("f6"), Square("e7"), Square("d8"), Square("h6"), Square("h4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH5WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/7B/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g4"), Square("f3"), Square("e2"), Square("d1"), Square("g6"), Square("f7"), Square("e8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA6WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/B7/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b7"), Square("c8"), Square("b5"), Square("c4"), Square("d3"), Square("e2"), Square("f1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB6WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/1B6/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a5"), Square("a7"), Square("c7"), Square("d8"), Square("c5"), Square("d4"), Square("e3"), Square("f2"), Square("g1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC6WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/2B5/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b5"), Square("a4"), Square("b7"), Square("a8"), Square("d7"), Square("e8"), Square("d5"), Square("e4"), Square("f3"), Square("g2"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD6WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/3B4/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c5"), Square("b4"), Square("a3"), Square("c7"), Square("b8"), Square("e7"), Square("f8"), Square("e5"), Square("f4"), Square("g3"), Square("h2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE6WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/4B3/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d5"), Square("c4"), Square("b3"), Square("a2"), Square("d7"), Square("c8"), Square("f7"), Square("g8"), Square("f5"), Square("g4"), Square("h3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF6WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/5B2/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e5"), Square("d4"), Square("c3"), Square("b2"), Square("a1"), Square("e7"), Square("d8"), Square("g7"), Square("h8"), Square("g5"), Square("h4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG6WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/6B1/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f5"), Square("e4"), Square("d3"), Square("c2"), Square("b1"), Square("f7"), Square("e8"), Square("h7"), Square("h5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH6WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/7B/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g5"), Square("f4"), Square("e3"), Square("d2"), Square("c1"), Square("g7"), Square("f8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA7WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/B7/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b8"), Square("b6"), Square("c5"), Square("d4"), Square("e3"), Square("f2"), Square("g1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB7WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/1B6/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a6"), Square("a8"), Square("c8"), Square("c6"), Square("d5"), Square("e4"), Square("f3"), Square("g2"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC7WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/2B5/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b6"), Square("a5"), Square("b8"), Square("d8"), Square("d6"), Square("e5"), Square("f4"), Square("g3"), Square("h2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD7WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/3B4/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c6"), Square("b5"), Square("a4"), Square("c8"), Square("e8"), Square("e6"), Square("f5"), Square("g4"), Square("h3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE7WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/4B3/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d6"), Square("c5"), Square("b4"), Square("a3"), Square("d8"), Square("f8"), Square("f6"), Square("g5"), Square("h4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF7WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/5B2/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e6"), Square("d5"), Square("c4"), Square("b3"), Square("a2"), Square("e8"), Square("g8"), Square("g6"), Square("h5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG7WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/6B1/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f6"), Square("e5"), Square("d4"), Square("c3"), Square("b2"), Square("a1"), Square("f8"), Square("h8"), Square("h6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH7WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/7B/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g6"), Square("f5"), Square("e4"), Square("d3"), Square("c2"), Square("b1"), Square("g8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA8WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("B7/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b7"), Square("c6"), Square("d5"), Square("e4"), Square("f3"), Square("g2"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB8WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("1B6/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a7"), Square("c7"), Square("d6"), Square("e5"), Square("f4"), Square("g3"), Square("h2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC8WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("2B5/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b7"), Square("a6"), Square("d7"), Square("e6"), Square("f5"), Square("g4"), Square("h3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD8WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("3B4/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c7"), Square("b6"), Square("a5"), Square("e7"), Square("f6"), Square("g5"), Square("h4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE8WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("4B3/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d7"), Square("c6"), Square("b5"), Square("a4"), Square("f7"), Square("g6"), Square("h5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF8WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("5B2/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e7"), Square("d6"), Square("c5"), Square("b4"), Square("a3"), Square("g7"), Square("h6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG8WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("6B1/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f7"), Square("e6"), Square("d5"), Square("c4"), Square("b3"), Square("a2"), Square("h7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH8WhiteBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("7B/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g7"), Square("f6"), Square("e5"), Square("d4"), Square("c3"), Square("b2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA1BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/b7");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("c3"), Square("d4"), Square("e5"), Square("f6"), Square("g7"), Square("h8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB1BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/1b6");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a2"), Square("c2"), Square("d3"), Square("e4"), Square("f5"), Square("g6"), Square("h7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC1BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/2b5");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("a3"), Square("d2"), Square("e3"), Square("f4"), Square("g5"), Square("h6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD1BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/3b4");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c2"), Square("b3"), Square("a4"), Square("e2"), Square("f3"), Square("g4"), Square("h5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE1BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/4b3");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d2"), Square("c3"), Square("b4"), Square("a5"), Square("f2"), Square("g3"), Square("h4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF1BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/5b2");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e2"), Square("d3"), Square("c4"), Square("b5"), Square("a6"), Square("g2"), Square("h3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG1BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/6b1");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f2"), Square("e3"), Square("d4"), Square("c5"), Square("b6"), Square("a7"), Square("h2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH1BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/7b");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g2"), Square("f3"), Square("e4"), Square("d5"), Square("c6"), Square("b7"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA2BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/b7/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3"), Square("c4"), Square("d5"), Square("e6"), Square("f7"), Square("g8"), Square("b1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB2BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/1b6/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a1"), Square("a3"), Square("c3"), Square("d4"), Square("e5"), Square("f6"), Square("g7"), Square("h8"), Square("c1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC2BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/2b5/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b1"), Square("b3"), Square("a4"), Square("d3"), Square("e4"), Square("f5"), Square("g6"), Square("h7"), Square("d1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD2BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/3b4/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c1"), Square("c3"), Square("b4"), Square("a5"), Square("e3"), Square("f4"), Square("g5"), Square("h6"), Square("e1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE2BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/4b3/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d1"), Square("d3"), Square("c4"), Square("b5"), Square("a6"), Square("f3"), Square("g4"), Square("h5"), Square("f1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF2BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/5b2/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e1"), Square("e3"), Square("d4"), Square("c5"), Square("b6"), Square("a7"), Square("g3"), Square("h4"), Square("g1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG2BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/6b1/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f1"), Square("f3"), Square("e4"), Square("d5"), Square("c6"), Square("b7"), Square("a8"), Square("h3"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH2BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/7b/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g1"), Square("g3"), Square("f4"), Square("e5"), Square("d6"), Square("c7"), Square("b8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA3BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/b7/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b4"), Square("c5"), Square("d6"), Square("e7"), Square("f8"), Square("b2"), Square("c1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB3BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/1b6/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a2"), Square("a4"), Square("c4"), Square("d5"), Square("e6"), Square("f7"), Square("g8"), Square("c2"), Square("d1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC3BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/2b5/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("a1"), Square("b4"), Square("a5"), Square("d4"), Square("e5"), Square("f6"), Square("g7"), Square("h8"), Square("d2"), Square("e1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD3BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/3b4/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c2"), Square("b1"), Square("c4"), Square("b5"), Square("a6"), Square("e4"), Square("f5"), Square("g6"), Square("h7"), Square("e2"), Square("f1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE3BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/4b3/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d2"), Square("c1"), Square("d4"), Square("c5"), Square("b6"), Square("a7"), Square("f4"), Square("g5"), Square("h6"), Square("f2"), Square("g1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF3BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/5b2/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e2"), Square("d1"), Square("e4"), Square("d5"), Square("c6"), Square("b7"), Square("a8"), Square("g4"), Square("h5"), Square("g2"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG3BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/6b1/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f2"), Square("e1"), Square("f4"), Square("e5"), Square("d6"), Square("c7"), Square("b8"), Square("h4"), Square("h2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH3BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/7b/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g2"), Square("f1"), Square("g4"), Square("f5"), Square("e6"), Square("d7"), Square("c8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA4BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/b7/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b5"), Square("c6"), Square("d7"), Square("e8"), Square("b3"), Square("c2"), Square("d1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB4BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/1b6/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a3"), Square("a5"), Square("c5"), Square("d6"), Square("e7"), Square("f8"), Square("c3"), Square("d2"), Square("e1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC4BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/2b5/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3"), Square("a2"), Square("b5"), Square("a6"), Square("d5"), Square("e6"), Square("f7"), Square("g8"), Square("d3"), Square("e2"), Square("f1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD4BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/3b4/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c3"), Square("b2"), Square("a1"), Square("c5"), Square("b6"), Square("a7"), Square("e5"), Square("f6"), Square("g7"), Square("h8"), Square("e3"), Square("f2"), Square("g1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE4BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/4b3/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d3"), Square("c2"), Square("b1"), Square("d5"), Square("c6"), Square("b7"), Square("a8"), Square("f5"), Square("g6"), Square("h7"), Square("f3"), Square("g2"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF4BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/5b2/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e3"), Square("d2"), Square("c1"), Square("e5"), Square("d6"), Square("c7"), Square("b8"), Square("g5"), Square("h6"), Square("g3"), Square("h2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG4BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/6b1/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f3"), Square("e2"), Square("d1"), Square("f5"), Square("e6"), Square("d7"), Square("c8"), Square("h5"), Square("h3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH4BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/7b/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g3"), Square("f2"), Square("e1"), Square("g5"), Square("f6"), Square("e7"), Square("d8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA5BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/b7/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b6"), Square("c7"), Square("d8"), Square("b4"), Square("c3"), Square("d2"), Square("e1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB5BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/1b6/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a4"), Square("a6"), Square("c6"), Square("d7"), Square("e8"), Square("c4"), Square("d3"), Square("e2"), Square("f1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC5BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/2b5/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b4"), Square("a3"), Square("b6"), Square("a7"), Square("d6"), Square("e7"), Square("f8"), Square("d4"), Square("e3"), Square("f2"), Square("g1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD5BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/3b4/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c4"), Square("b3"), Square("a2"), Square("c6"), Square("b7"), Square("a8"), Square("e6"), Square("f7"), Square("g8"), Square("e4"), Square("f3"), Square("g2"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE5BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/4b3/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d4"), Square("c3"), Square("b2"), Square("a1"), Square("d6"), Square("c7"), Square("b8"), Square("f6"), Square("g7"), Square("h8"), Square("f4"), Square("g3"), Square("h2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF5BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/5b2/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e4"), Square("d3"), Square("c2"), Square("b1"), Square("e6"), Square("d7"), Square("c8"), Square("g6"), Square("h7"), Square("g4"), Square("h3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG5BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/6b1/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f4"), Square("e3"), Square("d2"), Square("c1"), Square("f6"), Square("e7"), Square("d8"), Square("h6"), Square("h4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH5BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/7b/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g4"), Square("f3"), Square("e2"), Square("d1"), Square("g6"), Square("f7"), Square("e8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA6BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/b7/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b7"), Square("c8"), Square("b5"), Square("c4"), Square("d3"), Square("e2"), Square("f1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB6BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/1b6/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a5"), Square("a7"), Square("c7"), Square("d8"), Square("c5"), Square("d4"), Square("e3"), Square("f2"), Square("g1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC6BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/2b5/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b5"), Square("a4"), Square("b7"), Square("a8"), Square("d7"), Square("e8"), Square("d5"), Square("e4"), Square("f3"), Square("g2"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD6BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/3b4/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c5"), Square("b4"), Square("a3"), Square("c7"), Square("b8"), Square("e7"), Square("f8"), Square("e5"), Square("f4"), Square("g3"), Square("h2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE6BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/4b3/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d5"), Square("c4"), Square("b3"), Square("a2"), Square("d7"), Square("c8"), Square("f7"), Square("g8"), Square("f5"), Square("g4"), Square("h3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF6BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/5b2/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e5"), Square("d4"), Square("c3"), Square("b2"), Square("a1"), Square("e7"), Square("d8"), Square("g7"), Square("h8"), Square("g5"), Square("h4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG6BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/6b1/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f5"), Square("e4"), Square("d3"), Square("c2"), Square("b1"), Square("f7"), Square("e8"), Square("h7"), Square("h5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH6BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/7b/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g5"), Square("f4"), Square("e3"), Square("d2"), Square("c1"), Square("g7"), Square("f8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA7BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/b7/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b8"), Square("b6"), Square("c5"), Square("d4"), Square("e3"), Square("f2"), Square("g1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB7BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/1b6/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a6"), Square("a8"), Square("c8"), Square("c6"), Square("d5"), Square("e4"), Square("f3"), Square("g2"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC7BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/2b5/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b6"), Square("a5"), Square("b8"), Square("d8"), Square("d6"), Square("e5"), Square("f4"), Square("g3"), Square("h2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD7BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/3b4/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c6"), Square("b5"), Square("a4"), Square("c8"), Square("e8"), Square("e6"), Square("f5"), Square("g4"), Square("h3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE7BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/4b3/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d6"), Square("c5"), Square("b4"), Square("a3"), Square("d8"), Square("f8"), Square("f6"), Square("g5"), Square("h4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF7BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/5b2/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e6"), Square("d5"), Square("c4"), Square("b3"), Square("a2"), Square("e8"), Square("g8"), Square("g6"), Square("h5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG7BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/6b1/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f6"), Square("e5"), Square("d4"), Square("c3"), Square("b2"), Square("a1"), Square("f8"), Square("h8"), Square("h6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH7BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/7b/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g6"), Square("f5"), Square("e4"), Square("d3"), Square("c2"), Square("b1"), Square("g8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA8BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("b7/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b7"), Square("c6"), Square("d5"), Square("e4"), Square("f3"), Square("g2"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB8BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("1b6/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a7"), Square("c7"), Square("d6"), Square("e5"), Square("f4"), Square("g3"), Square("h2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC8BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("2b5/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b7"), Square("a6"), Square("d7"), Square("e6"), Square("f5"), Square("g4"), Square("h3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD8BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("3b4/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c7"), Square("b6"), Square("a5"), Square("e7"), Square("f6"), Square("g5"), Square("h4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE8BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("4b3/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d7"), Square("c6"), Square("b5"), Square("a4"), Square("f7"), Square("g6"), Square("h5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF8BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("5b2/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e7"), Square("d6"), Square("c5"), Square("b4"), Square("a3"), Square("g7"), Square("h6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG8BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("6b1/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f7"), Square("e6"), Square("d5"), Square("c4"), Square("b3"), Square("a2"), Square("h7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH8BlackBishop {
    std::shared_ptr<Position> p = std::make_shared<Position>("7b/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g7"), Square("f6"), Square("e5"), Square("d4"), Square("c3"), Square("b2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}


@end
