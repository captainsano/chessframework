//
//  PositionQuerierQueenAttack_Tests.m
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

@interface PositionQuerierQueenAttack_Tests : XCTestCase

@end

@implementation PositionQuerierQueenAttack_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown {
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}


- (void)testAttacksFromA1WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/Q7");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("c3"), Square("d4"), Square("e5"), Square("f6"), Square("g7"), Square("h8"), Square("a2"), Square("a3"), Square("a4"), Square("a5"), Square("a6"), Square("a7"), Square("a8"), Square("b1"), Square("c1"), Square("d1"), Square("e1"), Square("f1"), Square("g1"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB1WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/1Q6");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a2"), Square("c2"), Square("d3"), Square("e4"), Square("f5"), Square("g6"), Square("h7"), Square("b2"), Square("b3"), Square("b4"), Square("b5"), Square("b6"), Square("b7"), Square("b8"), Square("c1"), Square("d1"), Square("e1"), Square("f1"), Square("g1"), Square("h1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC1WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/2Q5");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("a3"), Square("d2"), Square("e3"), Square("f4"), Square("g5"), Square("h6"), Square("c2"), Square("c3"), Square("c4"), Square("c5"), Square("c6"), Square("c7"), Square("c8"), Square("d1"), Square("e1"), Square("f1"), Square("g1"), Square("h1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD1WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/3Q4");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c2"), Square("b3"), Square("a4"), Square("e2"), Square("f3"), Square("g4"), Square("h5"), Square("d2"), Square("d3"), Square("d4"), Square("d5"), Square("d6"), Square("d7"), Square("d8"), Square("e1"), Square("f1"), Square("g1"), Square("h1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE1WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/4Q3");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d2"), Square("c3"), Square("b4"), Square("a5"), Square("f2"), Square("g3"), Square("h4"), Square("e2"), Square("e3"), Square("e4"), Square("e5"), Square("e6"), Square("e7"), Square("e8"), Square("f1"), Square("g1"), Square("h1"), Square("d1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF1WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/5Q2");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e2"), Square("d3"), Square("c4"), Square("b5"), Square("a6"), Square("g2"), Square("h3"), Square("f2"), Square("f3"), Square("f4"), Square("f5"), Square("f6"), Square("f7"), Square("f8"), Square("g1"), Square("h1"), Square("e1"), Square("d1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG1WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/6Q1");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f2"), Square("e3"), Square("d4"), Square("c5"), Square("b6"), Square("a7"), Square("h2"), Square("g2"), Square("g3"), Square("g4"), Square("g5"), Square("g6"), Square("g7"), Square("g8"), Square("h1"), Square("f1"), Square("e1"), Square("d1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH1WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/7Q");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g2"), Square("f3"), Square("e4"), Square("d5"), Square("c6"), Square("b7"), Square("a8"), Square("h2"), Square("h3"), Square("h4"), Square("h5"), Square("h6"), Square("h7"), Square("h8"), Square("g1"), Square("f1"), Square("e1"), Square("d1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA2WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/Q7/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3"), Square("c4"), Square("d5"), Square("e6"), Square("f7"), Square("g8"), Square("b1"), Square("a3"), Square("a4"), Square("a5"), Square("a6"), Square("a7"), Square("a8"), Square("b2"), Square("c2"), Square("d2"), Square("e2"), Square("f2"), Square("g2"), Square("h2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB2WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/1Q6/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a1"), Square("a3"), Square("c3"), Square("d4"), Square("e5"), Square("f6"), Square("g7"), Square("h8"), Square("c1"), Square("b3"), Square("b4"), Square("b5"), Square("b6"), Square("b7"), Square("b8"), Square("c2"), Square("d2"), Square("e2"), Square("f2"), Square("g2"), Square("h2"), Square("b1"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC2WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/2Q5/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b1"), Square("b3"), Square("a4"), Square("d3"), Square("e4"), Square("f5"), Square("g6"), Square("h7"), Square("d1"), Square("c3"), Square("c4"), Square("c5"), Square("c6"), Square("c7"), Square("c8"), Square("d2"), Square("e2"), Square("f2"), Square("g2"), Square("h2"), Square("c1"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD2WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/3Q4/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c1"), Square("c3"), Square("b4"), Square("a5"), Square("e3"), Square("f4"), Square("g5"), Square("h6"), Square("e1"), Square("d3"), Square("d4"), Square("d5"), Square("d6"), Square("d7"), Square("d8"), Square("e2"), Square("f2"), Square("g2"), Square("h2"), Square("d1"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE2WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/4Q3/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d1"), Square("d3"), Square("c4"), Square("b5"), Square("a6"), Square("f3"), Square("g4"), Square("h5"), Square("f1"), Square("e3"), Square("e4"), Square("e5"), Square("e6"), Square("e7"), Square("e8"), Square("f2"), Square("g2"), Square("h2"), Square("e1"), Square("d2"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF2WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/5Q2/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e1"), Square("e3"), Square("d4"), Square("c5"), Square("b6"), Square("a7"), Square("g3"), Square("h4"), Square("g1"), Square("f3"), Square("f4"), Square("f5"), Square("f6"), Square("f7"), Square("f8"), Square("g2"), Square("h2"), Square("f1"), Square("e2"), Square("d2"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG2WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/6Q1/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f1"), Square("f3"), Square("e4"), Square("d5"), Square("c6"), Square("b7"), Square("a8"), Square("h3"), Square("h1"), Square("g3"), Square("g4"), Square("g5"), Square("g6"), Square("g7"), Square("g8"), Square("h2"), Square("g1"), Square("f2"), Square("e2"), Square("d2"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH2WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/7Q/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g1"), Square("g3"), Square("f4"), Square("e5"), Square("d6"), Square("c7"), Square("b8"), Square("h3"), Square("h4"), Square("h5"), Square("h6"), Square("h7"), Square("h8"), Square("h1"), Square("g2"), Square("f2"), Square("e2"), Square("d2"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA3WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/Q7/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b4"), Square("c5"), Square("d6"), Square("e7"), Square("f8"), Square("b2"), Square("c1"), Square("a4"), Square("a5"), Square("a6"), Square("a7"), Square("a8"), Square("b3"), Square("c3"), Square("d3"), Square("e3"), Square("f3"), Square("g3"), Square("h3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB3WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/1Q6/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a2"), Square("a4"), Square("c4"), Square("d5"), Square("e6"), Square("f7"), Square("g8"), Square("c2"), Square("d1"), Square("b4"), Square("b5"), Square("b6"), Square("b7"), Square("b8"), Square("c3"), Square("d3"), Square("e3"), Square("f3"), Square("g3"), Square("h3"), Square("b2"), Square("b1"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC3WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/2Q5/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("a1"), Square("b4"), Square("a5"), Square("d4"), Square("e5"), Square("f6"), Square("g7"), Square("h8"), Square("d2"), Square("e1"), Square("c4"), Square("c5"), Square("c6"), Square("c7"), Square("c8"), Square("d3"), Square("e3"), Square("f3"), Square("g3"), Square("h3"), Square("c2"), Square("c1"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD3WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/3Q4/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c2"), Square("b1"), Square("c4"), Square("b5"), Square("a6"), Square("e4"), Square("f5"), Square("g6"), Square("h7"), Square("e2"), Square("f1"), Square("d4"), Square("d5"), Square("d6"), Square("d7"), Square("d8"), Square("e3"), Square("f3"), Square("g3"), Square("h3"), Square("d2"), Square("d1"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE3WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/4Q3/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d2"), Square("c1"), Square("d4"), Square("c5"), Square("b6"), Square("a7"), Square("f4"), Square("g5"), Square("h6"), Square("f2"), Square("g1"), Square("e4"), Square("e5"), Square("e6"), Square("e7"), Square("e8"), Square("f3"), Square("g3"), Square("h3"), Square("e2"), Square("e1"), Square("d3"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF3WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/5Q2/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e2"), Square("d1"), Square("e4"), Square("d5"), Square("c6"), Square("b7"), Square("a8"), Square("g4"), Square("h5"), Square("g2"), Square("h1"), Square("f4"), Square("f5"), Square("f6"), Square("f7"), Square("f8"), Square("g3"), Square("h3"), Square("f2"), Square("f1"), Square("e3"), Square("d3"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG3WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/6Q1/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f2"), Square("e1"), Square("f4"), Square("e5"), Square("d6"), Square("c7"), Square("b8"), Square("h4"), Square("h2"), Square("g4"), Square("g5"), Square("g6"), Square("g7"), Square("g8"), Square("h3"), Square("g2"), Square("g1"), Square("f3"), Square("e3"), Square("d3"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH3WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/7Q/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g2"), Square("f1"), Square("g4"), Square("f5"), Square("e6"), Square("d7"), Square("c8"), Square("h4"), Square("h5"), Square("h6"), Square("h7"), Square("h8"), Square("h2"), Square("h1"), Square("g3"), Square("f3"), Square("e3"), Square("d3"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA4WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/Q7/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b5"), Square("c6"), Square("d7"), Square("e8"), Square("b3"), Square("c2"), Square("d1"), Square("a5"), Square("a6"), Square("a7"), Square("a8"), Square("b4"), Square("c4"), Square("d4"), Square("e4"), Square("f4"), Square("g4"), Square("h4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB4WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/1Q6/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a3"), Square("a5"), Square("c5"), Square("d6"), Square("e7"), Square("f8"), Square("c3"), Square("d2"), Square("e1"), Square("b5"), Square("b6"), Square("b7"), Square("b8"), Square("c4"), Square("d4"), Square("e4"), Square("f4"), Square("g4"), Square("h4"), Square("b3"), Square("b2"), Square("b1"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC4WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/2Q5/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3"), Square("a2"), Square("b5"), Square("a6"), Square("d5"), Square("e6"), Square("f7"), Square("g8"), Square("d3"), Square("e2"), Square("f1"), Square("c5"), Square("c6"), Square("c7"), Square("c8"), Square("d4"), Square("e4"), Square("f4"), Square("g4"), Square("h4"), Square("c3"), Square("c2"), Square("c1"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD4WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/3Q4/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c3"), Square("b2"), Square("a1"), Square("c5"), Square("b6"), Square("a7"), Square("e5"), Square("f6"), Square("g7"), Square("h8"), Square("e3"), Square("f2"), Square("g1"), Square("d5"), Square("d6"), Square("d7"), Square("d8"), Square("e4"), Square("f4"), Square("g4"), Square("h4"), Square("d3"), Square("d2"), Square("d1"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE4WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/4Q3/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d3"), Square("c2"), Square("b1"), Square("d5"), Square("c6"), Square("b7"), Square("a8"), Square("f5"), Square("g6"), Square("h7"), Square("f3"), Square("g2"), Square("h1"), Square("e5"), Square("e6"), Square("e7"), Square("e8"), Square("f4"), Square("g4"), Square("h4"), Square("e3"), Square("e2"), Square("e1"), Square("d4"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF4WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/5Q2/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e3"), Square("d2"), Square("c1"), Square("e5"), Square("d6"), Square("c7"), Square("b8"), Square("g5"), Square("h6"), Square("g3"), Square("h2"), Square("f5"), Square("f6"), Square("f7"), Square("f8"), Square("g4"), Square("h4"), Square("f3"), Square("f2"), Square("f1"), Square("e4"), Square("d4"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG4WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/6Q1/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f3"), Square("e2"), Square("d1"), Square("f5"), Square("e6"), Square("d7"), Square("c8"), Square("h5"), Square("h3"), Square("g5"), Square("g6"), Square("g7"), Square("g8"), Square("h4"), Square("g3"), Square("g2"), Square("g1"), Square("f4"), Square("e4"), Square("d4"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH4WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/7Q/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g3"), Square("f2"), Square("e1"), Square("g5"), Square("f6"), Square("e7"), Square("d8"), Square("h5"), Square("h6"), Square("h7"), Square("h8"), Square("h3"), Square("h2"), Square("h1"), Square("g4"), Square("f4"), Square("e4"), Square("d4"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA5WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/Q7/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b6"), Square("c7"), Square("d8"), Square("b4"), Square("c3"), Square("d2"), Square("e1"), Square("a6"), Square("a7"), Square("a8"), Square("b5"), Square("c5"), Square("d5"), Square("e5"), Square("f5"), Square("g5"), Square("h5"), Square("a4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB5WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/1Q6/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a4"), Square("a6"), Square("c6"), Square("d7"), Square("e8"), Square("c4"), Square("d3"), Square("e2"), Square("f1"), Square("b6"), Square("b7"), Square("b8"), Square("c5"), Square("d5"), Square("e5"), Square("f5"), Square("g5"), Square("h5"), Square("b4"), Square("b3"), Square("b2"), Square("b1"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC5WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/2Q5/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b4"), Square("a3"), Square("b6"), Square("a7"), Square("d6"), Square("e7"), Square("f8"), Square("d4"), Square("e3"), Square("f2"), Square("g1"), Square("c6"), Square("c7"), Square("c8"), Square("d5"), Square("e5"), Square("f5"), Square("g5"), Square("h5"), Square("c4"), Square("c3"), Square("c2"), Square("c1"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD5WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/3Q4/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c4"), Square("b3"), Square("a2"), Square("c6"), Square("b7"), Square("a8"), Square("e6"), Square("f7"), Square("g8"), Square("e4"), Square("f3"), Square("g2"), Square("h1"), Square("d6"), Square("d7"), Square("d8"), Square("e5"), Square("f5"), Square("g5"), Square("h5"), Square("d4"), Square("d3"), Square("d2"), Square("d1"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE5WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/4Q3/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d4"), Square("c3"), Square("b2"), Square("a1"), Square("d6"), Square("c7"), Square("b8"), Square("f6"), Square("g7"), Square("h8"), Square("f4"), Square("g3"), Square("h2"), Square("e6"), Square("e7"), Square("e8"), Square("f5"), Square("g5"), Square("h5"), Square("e4"), Square("e3"), Square("e2"), Square("e1"), Square("d5"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF5WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/5Q2/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e4"), Square("d3"), Square("c2"), Square("b1"), Square("e6"), Square("d7"), Square("c8"), Square("g6"), Square("h7"), Square("g4"), Square("h3"), Square("f6"), Square("f7"), Square("f8"), Square("g5"), Square("h5"), Square("f4"), Square("f3"), Square("f2"), Square("f1"), Square("e5"), Square("d5"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG5WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/6Q1/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f4"), Square("e3"), Square("d2"), Square("c1"), Square("f6"), Square("e7"), Square("d8"), Square("h6"), Square("h4"), Square("g6"), Square("g7"), Square("g8"), Square("h5"), Square("g4"), Square("g3"), Square("g2"), Square("g1"), Square("f5"), Square("e5"), Square("d5"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH5WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/7Q/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g4"), Square("f3"), Square("e2"), Square("d1"), Square("g6"), Square("f7"), Square("e8"), Square("h6"), Square("h7"), Square("h8"), Square("h4"), Square("h3"), Square("h2"), Square("h1"), Square("g5"), Square("f5"), Square("e5"), Square("d5"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA6WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/Q7/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b7"), Square("c8"), Square("b5"), Square("c4"), Square("d3"), Square("e2"), Square("f1"), Square("a7"), Square("a8"), Square("b6"), Square("c6"), Square("d6"), Square("e6"), Square("f6"), Square("g6"), Square("h6"), Square("a5"), Square("a4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB6WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/1Q6/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a5"), Square("a7"), Square("c7"), Square("d8"), Square("c5"), Square("d4"), Square("e3"), Square("f2"), Square("g1"), Square("b7"), Square("b8"), Square("c6"), Square("d6"), Square("e6"), Square("f6"), Square("g6"), Square("h6"), Square("b5"), Square("b4"), Square("b3"), Square("b2"), Square("b1"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC6WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/2Q5/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b5"), Square("a4"), Square("b7"), Square("a8"), Square("d7"), Square("e8"), Square("d5"), Square("e4"), Square("f3"), Square("g2"), Square("h1"), Square("c7"), Square("c8"), Square("d6"), Square("e6"), Square("f6"), Square("g6"), Square("h6"), Square("c5"), Square("c4"), Square("c3"), Square("c2"), Square("c1"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD6WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/3Q4/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c5"), Square("b4"), Square("a3"), Square("c7"), Square("b8"), Square("e7"), Square("f8"), Square("e5"), Square("f4"), Square("g3"), Square("h2"), Square("d7"), Square("d8"), Square("e6"), Square("f6"), Square("g6"), Square("h6"), Square("d5"), Square("d4"), Square("d3"), Square("d2"), Square("d1"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE6WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/4Q3/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d5"), Square("c4"), Square("b3"), Square("a2"), Square("d7"), Square("c8"), Square("f7"), Square("g8"), Square("f5"), Square("g4"), Square("h3"), Square("e7"), Square("e8"), Square("f6"), Square("g6"), Square("h6"), Square("e5"), Square("e4"), Square("e3"), Square("e2"), Square("e1"), Square("d6"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF6WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/5Q2/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e5"), Square("d4"), Square("c3"), Square("b2"), Square("a1"), Square("e7"), Square("d8"), Square("g7"), Square("h8"), Square("g5"), Square("h4"), Square("f7"), Square("f8"), Square("g6"), Square("h6"), Square("f5"), Square("f4"), Square("f3"), Square("f2"), Square("f1"), Square("e6"), Square("d6"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG6WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/6Q1/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f5"), Square("e4"), Square("d3"), Square("c2"), Square("b1"), Square("f7"), Square("e8"), Square("h7"), Square("h5"), Square("g7"), Square("g8"), Square("h6"), Square("g5"), Square("g4"), Square("g3"), Square("g2"), Square("g1"), Square("f6"), Square("e6"), Square("d6"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH6WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/7Q/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g5"), Square("f4"), Square("e3"), Square("d2"), Square("c1"), Square("g7"), Square("f8"), Square("h7"), Square("h8"), Square("h5"), Square("h4"), Square("h3"), Square("h2"), Square("h1"), Square("g6"), Square("f6"), Square("e6"), Square("d6"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA7WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/Q7/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b8"), Square("b6"), Square("c5"), Square("d4"), Square("e3"), Square("f2"), Square("g1"), Square("a8"), Square("b7"), Square("c7"), Square("d7"), Square("e7"), Square("f7"), Square("g7"), Square("h7"), Square("a6"), Square("a5"), Square("a4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB7WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/1Q6/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a6"), Square("a8"), Square("c8"), Square("c6"), Square("d5"), Square("e4"), Square("f3"), Square("g2"), Square("h1"), Square("b8"), Square("c7"), Square("d7"), Square("e7"), Square("f7"), Square("g7"), Square("h7"), Square("b6"), Square("b5"), Square("b4"), Square("b3"), Square("b2"), Square("b1"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC7WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/2Q5/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b6"), Square("a5"), Square("b8"), Square("d8"), Square("d6"), Square("e5"), Square("f4"), Square("g3"), Square("h2"), Square("c8"), Square("d7"), Square("e7"), Square("f7"), Square("g7"), Square("h7"), Square("c6"), Square("c5"), Square("c4"), Square("c3"), Square("c2"), Square("c1"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD7WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/3Q4/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c6"), Square("b5"), Square("a4"), Square("c8"), Square("e8"), Square("e6"), Square("f5"), Square("g4"), Square("h3"), Square("d8"), Square("e7"), Square("f7"), Square("g7"), Square("h7"), Square("d6"), Square("d5"), Square("d4"), Square("d3"), Square("d2"), Square("d1"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE7WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/4Q3/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d6"), Square("c5"), Square("b4"), Square("a3"), Square("d8"), Square("f8"), Square("f6"), Square("g5"), Square("h4"), Square("e8"), Square("f7"), Square("g7"), Square("h7"), Square("e6"), Square("e5"), Square("e4"), Square("e3"), Square("e2"), Square("e1"), Square("d7"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF7WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/5Q2/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e6"), Square("d5"), Square("c4"), Square("b3"), Square("a2"), Square("e8"), Square("g8"), Square("g6"), Square("h5"), Square("f8"), Square("g7"), Square("h7"), Square("f6"), Square("f5"), Square("f4"), Square("f3"), Square("f2"), Square("f1"), Square("e7"), Square("d7"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG7WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/6Q1/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f6"), Square("e5"), Square("d4"), Square("c3"), Square("b2"), Square("a1"), Square("f8"), Square("h8"), Square("h6"), Square("g8"), Square("h7"), Square("g6"), Square("g5"), Square("g4"), Square("g3"), Square("g2"), Square("g1"), Square("f7"), Square("e7"), Square("d7"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH7WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/7Q/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g6"), Square("f5"), Square("e4"), Square("d3"), Square("c2"), Square("b1"), Square("g8"), Square("h8"), Square("h6"), Square("h5"), Square("h4"), Square("h3"), Square("h2"), Square("h1"), Square("g7"), Square("f7"), Square("e7"), Square("d7"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA8WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("Q7/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b7"), Square("c6"), Square("d5"), Square("e4"), Square("f3"), Square("g2"), Square("h1"), Square("b8"), Square("c8"), Square("d8"), Square("e8"), Square("f8"), Square("g8"), Square("h8"), Square("a7"), Square("a6"), Square("a5"), Square("a4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB8WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("1Q6/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a7"), Square("c7"), Square("d6"), Square("e5"), Square("f4"), Square("g3"), Square("h2"), Square("c8"), Square("d8"), Square("e8"), Square("f8"), Square("g8"), Square("h8"), Square("b7"), Square("b6"), Square("b5"), Square("b4"), Square("b3"), Square("b2"), Square("b1"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC8WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("2Q5/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b7"), Square("a6"), Square("d7"), Square("e6"), Square("f5"), Square("g4"), Square("h3"), Square("d8"), Square("e8"), Square("f8"), Square("g8"), Square("h8"), Square("c7"), Square("c6"), Square("c5"), Square("c4"), Square("c3"), Square("c2"), Square("c1"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD8WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("3Q4/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c7"), Square("b6"), Square("a5"), Square("e7"), Square("f6"), Square("g5"), Square("h4"), Square("e8"), Square("f8"), Square("g8"), Square("h8"), Square("d7"), Square("d6"), Square("d5"), Square("d4"), Square("d3"), Square("d2"), Square("d1"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE8WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("4Q3/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d7"), Square("c6"), Square("b5"), Square("a4"), Square("f7"), Square("g6"), Square("h5"), Square("f8"), Square("g8"), Square("h8"), Square("e7"), Square("e6"), Square("e5"), Square("e4"), Square("e3"), Square("e2"), Square("e1"), Square("d8"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF8WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("5Q2/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e7"), Square("d6"), Square("c5"), Square("b4"), Square("a3"), Square("g7"), Square("h6"), Square("g8"), Square("h8"), Square("f7"), Square("f6"), Square("f5"), Square("f4"), Square("f3"), Square("f2"), Square("f1"), Square("e8"), Square("d8"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG8WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("6Q1/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f7"), Square("e6"), Square("d5"), Square("c4"), Square("b3"), Square("a2"), Square("h7"), Square("h8"), Square("g7"), Square("g6"), Square("g5"), Square("g4"), Square("g3"), Square("g2"), Square("g1"), Square("f8"), Square("e8"), Square("d8"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH8WhiteQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("7Q/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g7"), Square("f6"), Square("e5"), Square("d4"), Square("c3"), Square("b2"), Square("a1"), Square("h7"), Square("h6"), Square("h5"), Square("h4"), Square("h3"), Square("h2"), Square("h1"), Square("g8"), Square("f8"), Square("e8"), Square("d8"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA1BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/q7");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("c3"), Square("d4"), Square("e5"), Square("f6"), Square("g7"), Square("h8"), Square("a2"), Square("a3"), Square("a4"), Square("a5"), Square("a6"), Square("a7"), Square("a8"), Square("b1"), Square("c1"), Square("d1"), Square("e1"), Square("f1"), Square("g1"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB1BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/1q6");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a2"), Square("c2"), Square("d3"), Square("e4"), Square("f5"), Square("g6"), Square("h7"), Square("b2"), Square("b3"), Square("b4"), Square("b5"), Square("b6"), Square("b7"), Square("b8"), Square("c1"), Square("d1"), Square("e1"), Square("f1"), Square("g1"), Square("h1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC1BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/2q5");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("a3"), Square("d2"), Square("e3"), Square("f4"), Square("g5"), Square("h6"), Square("c2"), Square("c3"), Square("c4"), Square("c5"), Square("c6"), Square("c7"), Square("c8"), Square("d1"), Square("e1"), Square("f1"), Square("g1"), Square("h1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD1BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/3q4");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c2"), Square("b3"), Square("a4"), Square("e2"), Square("f3"), Square("g4"), Square("h5"), Square("d2"), Square("d3"), Square("d4"), Square("d5"), Square("d6"), Square("d7"), Square("d8"), Square("e1"), Square("f1"), Square("g1"), Square("h1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE1BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/4q3");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d2"), Square("c3"), Square("b4"), Square("a5"), Square("f2"), Square("g3"), Square("h4"), Square("e2"), Square("e3"), Square("e4"), Square("e5"), Square("e6"), Square("e7"), Square("e8"), Square("f1"), Square("g1"), Square("h1"), Square("d1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF1BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/5q2");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e2"), Square("d3"), Square("c4"), Square("b5"), Square("a6"), Square("g2"), Square("h3"), Square("f2"), Square("f3"), Square("f4"), Square("f5"), Square("f6"), Square("f7"), Square("f8"), Square("g1"), Square("h1"), Square("e1"), Square("d1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG1BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/6q1");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f2"), Square("e3"), Square("d4"), Square("c5"), Square("b6"), Square("a7"), Square("h2"), Square("g2"), Square("g3"), Square("g4"), Square("g5"), Square("g6"), Square("g7"), Square("g8"), Square("h1"), Square("f1"), Square("e1"), Square("d1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH1BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/7q");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g2"), Square("f3"), Square("e4"), Square("d5"), Square("c6"), Square("b7"), Square("a8"), Square("h2"), Square("h3"), Square("h4"), Square("h5"), Square("h6"), Square("h7"), Square("h8"), Square("g1"), Square("f1"), Square("e1"), Square("d1"), Square("c1"), Square("b1"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA2BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/q7/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3"), Square("c4"), Square("d5"), Square("e6"), Square("f7"), Square("g8"), Square("b1"), Square("a3"), Square("a4"), Square("a5"), Square("a6"), Square("a7"), Square("a8"), Square("b2"), Square("c2"), Square("d2"), Square("e2"), Square("f2"), Square("g2"), Square("h2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB2BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/1q6/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a1"), Square("a3"), Square("c3"), Square("d4"), Square("e5"), Square("f6"), Square("g7"), Square("h8"), Square("c1"), Square("b3"), Square("b4"), Square("b5"), Square("b6"), Square("b7"), Square("b8"), Square("c2"), Square("d2"), Square("e2"), Square("f2"), Square("g2"), Square("h2"), Square("b1"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC2BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/2q5/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b1"), Square("b3"), Square("a4"), Square("d3"), Square("e4"), Square("f5"), Square("g6"), Square("h7"), Square("d1"), Square("c3"), Square("c4"), Square("c5"), Square("c6"), Square("c7"), Square("c8"), Square("d2"), Square("e2"), Square("f2"), Square("g2"), Square("h2"), Square("c1"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD2BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/3q4/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c1"), Square("c3"), Square("b4"), Square("a5"), Square("e3"), Square("f4"), Square("g5"), Square("h6"), Square("e1"), Square("d3"), Square("d4"), Square("d5"), Square("d6"), Square("d7"), Square("d8"), Square("e2"), Square("f2"), Square("g2"), Square("h2"), Square("d1"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE2BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/4q3/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d1"), Square("d3"), Square("c4"), Square("b5"), Square("a6"), Square("f3"), Square("g4"), Square("h5"), Square("f1"), Square("e3"), Square("e4"), Square("e5"), Square("e6"), Square("e7"), Square("e8"), Square("f2"), Square("g2"), Square("h2"), Square("e1"), Square("d2"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF2BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/5q2/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e1"), Square("e3"), Square("d4"), Square("c5"), Square("b6"), Square("a7"), Square("g3"), Square("h4"), Square("g1"), Square("f3"), Square("f4"), Square("f5"), Square("f6"), Square("f7"), Square("f8"), Square("g2"), Square("h2"), Square("f1"), Square("e2"), Square("d2"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG2BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/6q1/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f1"), Square("f3"), Square("e4"), Square("d5"), Square("c6"), Square("b7"), Square("a8"), Square("h3"), Square("h1"), Square("g3"), Square("g4"), Square("g5"), Square("g6"), Square("g7"), Square("g8"), Square("h2"), Square("g1"), Square("f2"), Square("e2"), Square("d2"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH2BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/7q/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g1"), Square("g3"), Square("f4"), Square("e5"), Square("d6"), Square("c7"), Square("b8"), Square("h3"), Square("h4"), Square("h5"), Square("h6"), Square("h7"), Square("h8"), Square("h1"), Square("g2"), Square("f2"), Square("e2"), Square("d2"), Square("c2"), Square("b2"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA3BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/q7/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b4"), Square("c5"), Square("d6"), Square("e7"), Square("f8"), Square("b2"), Square("c1"), Square("a4"), Square("a5"), Square("a6"), Square("a7"), Square("a8"), Square("b3"), Square("c3"), Square("d3"), Square("e3"), Square("f3"), Square("g3"), Square("h3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB3BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/1q6/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a2"), Square("a4"), Square("c4"), Square("d5"), Square("e6"), Square("f7"), Square("g8"), Square("c2"), Square("d1"), Square("b4"), Square("b5"), Square("b6"), Square("b7"), Square("b8"), Square("c3"), Square("d3"), Square("e3"), Square("f3"), Square("g3"), Square("h3"), Square("b2"), Square("b1"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC3BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/2q5/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("a1"), Square("b4"), Square("a5"), Square("d4"), Square("e5"), Square("f6"), Square("g7"), Square("h8"), Square("d2"), Square("e1"), Square("c4"), Square("c5"), Square("c6"), Square("c7"), Square("c8"), Square("d3"), Square("e3"), Square("f3"), Square("g3"), Square("h3"), Square("c2"), Square("c1"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD3BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/3q4/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c2"), Square("b1"), Square("c4"), Square("b5"), Square("a6"), Square("e4"), Square("f5"), Square("g6"), Square("h7"), Square("e2"), Square("f1"), Square("d4"), Square("d5"), Square("d6"), Square("d7"), Square("d8"), Square("e3"), Square("f3"), Square("g3"), Square("h3"), Square("d2"), Square("d1"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE3BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/4q3/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d2"), Square("c1"), Square("d4"), Square("c5"), Square("b6"), Square("a7"), Square("f4"), Square("g5"), Square("h6"), Square("f2"), Square("g1"), Square("e4"), Square("e5"), Square("e6"), Square("e7"), Square("e8"), Square("f3"), Square("g3"), Square("h3"), Square("e2"), Square("e1"), Square("d3"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF3BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/5q2/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e2"), Square("d1"), Square("e4"), Square("d5"), Square("c6"), Square("b7"), Square("a8"), Square("g4"), Square("h5"), Square("g2"), Square("h1"), Square("f4"), Square("f5"), Square("f6"), Square("f7"), Square("f8"), Square("g3"), Square("h3"), Square("f2"), Square("f1"), Square("e3"), Square("d3"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG3BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/6q1/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f2"), Square("e1"), Square("f4"), Square("e5"), Square("d6"), Square("c7"), Square("b8"), Square("h4"), Square("h2"), Square("g4"), Square("g5"), Square("g6"), Square("g7"), Square("g8"), Square("h3"), Square("g2"), Square("g1"), Square("f3"), Square("e3"), Square("d3"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH3BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/7q/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g2"), Square("f1"), Square("g4"), Square("f5"), Square("e6"), Square("d7"), Square("c8"), Square("h4"), Square("h5"), Square("h6"), Square("h7"), Square("h8"), Square("h2"), Square("h1"), Square("g3"), Square("f3"), Square("e3"), Square("d3"), Square("c3"), Square("b3"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA4BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/q7/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b5"), Square("c6"), Square("d7"), Square("e8"), Square("b3"), Square("c2"), Square("d1"), Square("a5"), Square("a6"), Square("a7"), Square("a8"), Square("b4"), Square("c4"), Square("d4"), Square("e4"), Square("f4"), Square("g4"), Square("h4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB4BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/1q6/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a3"), Square("a5"), Square("c5"), Square("d6"), Square("e7"), Square("f8"), Square("c3"), Square("d2"), Square("e1"), Square("b5"), Square("b6"), Square("b7"), Square("b8"), Square("c4"), Square("d4"), Square("e4"), Square("f4"), Square("g4"), Square("h4"), Square("b3"), Square("b2"), Square("b1"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC4BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/2q5/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3"), Square("a2"), Square("b5"), Square("a6"), Square("d5"), Square("e6"), Square("f7"), Square("g8"), Square("d3"), Square("e2"), Square("f1"), Square("c5"), Square("c6"), Square("c7"), Square("c8"), Square("d4"), Square("e4"), Square("f4"), Square("g4"), Square("h4"), Square("c3"), Square("c2"), Square("c1"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD4BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/3q4/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c3"), Square("b2"), Square("a1"), Square("c5"), Square("b6"), Square("a7"), Square("e5"), Square("f6"), Square("g7"), Square("h8"), Square("e3"), Square("f2"), Square("g1"), Square("d5"), Square("d6"), Square("d7"), Square("d8"), Square("e4"), Square("f4"), Square("g4"), Square("h4"), Square("d3"), Square("d2"), Square("d1"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE4BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/4q3/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d3"), Square("c2"), Square("b1"), Square("d5"), Square("c6"), Square("b7"), Square("a8"), Square("f5"), Square("g6"), Square("h7"), Square("f3"), Square("g2"), Square("h1"), Square("e5"), Square("e6"), Square("e7"), Square("e8"), Square("f4"), Square("g4"), Square("h4"), Square("e3"), Square("e2"), Square("e1"), Square("d4"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF4BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/5q2/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e3"), Square("d2"), Square("c1"), Square("e5"), Square("d6"), Square("c7"), Square("b8"), Square("g5"), Square("h6"), Square("g3"), Square("h2"), Square("f5"), Square("f6"), Square("f7"), Square("f8"), Square("g4"), Square("h4"), Square("f3"), Square("f2"), Square("f1"), Square("e4"), Square("d4"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG4BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/6q1/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f3"), Square("e2"), Square("d1"), Square("f5"), Square("e6"), Square("d7"), Square("c8"), Square("h5"), Square("h3"), Square("g5"), Square("g6"), Square("g7"), Square("g8"), Square("h4"), Square("g3"), Square("g2"), Square("g1"), Square("f4"), Square("e4"), Square("d4"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH4BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/7q/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g3"), Square("f2"), Square("e1"), Square("g5"), Square("f6"), Square("e7"), Square("d8"), Square("h5"), Square("h6"), Square("h7"), Square("h8"), Square("h3"), Square("h2"), Square("h1"), Square("g4"), Square("f4"), Square("e4"), Square("d4"), Square("c4"), Square("b4"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA5BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/q7/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b6"), Square("c7"), Square("d8"), Square("b4"), Square("c3"), Square("d2"), Square("e1"), Square("a6"), Square("a7"), Square("a8"), Square("b5"), Square("c5"), Square("d5"), Square("e5"), Square("f5"), Square("g5"), Square("h5"), Square("a4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB5BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/1q6/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a4"), Square("a6"), Square("c6"), Square("d7"), Square("e8"), Square("c4"), Square("d3"), Square("e2"), Square("f1"), Square("b6"), Square("b7"), Square("b8"), Square("c5"), Square("d5"), Square("e5"), Square("f5"), Square("g5"), Square("h5"), Square("b4"), Square("b3"), Square("b2"), Square("b1"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC5BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/2q5/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b4"), Square("a3"), Square("b6"), Square("a7"), Square("d6"), Square("e7"), Square("f8"), Square("d4"), Square("e3"), Square("f2"), Square("g1"), Square("c6"), Square("c7"), Square("c8"), Square("d5"), Square("e5"), Square("f5"), Square("g5"), Square("h5"), Square("c4"), Square("c3"), Square("c2"), Square("c1"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD5BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/3q4/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c4"), Square("b3"), Square("a2"), Square("c6"), Square("b7"), Square("a8"), Square("e6"), Square("f7"), Square("g8"), Square("e4"), Square("f3"), Square("g2"), Square("h1"), Square("d6"), Square("d7"), Square("d8"), Square("e5"), Square("f5"), Square("g5"), Square("h5"), Square("d4"), Square("d3"), Square("d2"), Square("d1"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE5BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/4q3/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d4"), Square("c3"), Square("b2"), Square("a1"), Square("d6"), Square("c7"), Square("b8"), Square("f6"), Square("g7"), Square("h8"), Square("f4"), Square("g3"), Square("h2"), Square("e6"), Square("e7"), Square("e8"), Square("f5"), Square("g5"), Square("h5"), Square("e4"), Square("e3"), Square("e2"), Square("e1"), Square("d5"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF5BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/5q2/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e4"), Square("d3"), Square("c2"), Square("b1"), Square("e6"), Square("d7"), Square("c8"), Square("g6"), Square("h7"), Square("g4"), Square("h3"), Square("f6"), Square("f7"), Square("f8"), Square("g5"), Square("h5"), Square("f4"), Square("f3"), Square("f2"), Square("f1"), Square("e5"), Square("d5"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG5BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/6q1/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f4"), Square("e3"), Square("d2"), Square("c1"), Square("f6"), Square("e7"), Square("d8"), Square("h6"), Square("h4"), Square("g6"), Square("g7"), Square("g8"), Square("h5"), Square("g4"), Square("g3"), Square("g2"), Square("g1"), Square("f5"), Square("e5"), Square("d5"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH5BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/7q/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g4"), Square("f3"), Square("e2"), Square("d1"), Square("g6"), Square("f7"), Square("e8"), Square("h6"), Square("h7"), Square("h8"), Square("h4"), Square("h3"), Square("h2"), Square("h1"), Square("g5"), Square("f5"), Square("e5"), Square("d5"), Square("c5"), Square("b5"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA6BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/q7/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b7"), Square("c8"), Square("b5"), Square("c4"), Square("d3"), Square("e2"), Square("f1"), Square("a7"), Square("a8"), Square("b6"), Square("c6"), Square("d6"), Square("e6"), Square("f6"), Square("g6"), Square("h6"), Square("a5"), Square("a4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB6BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/1q6/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a5"), Square("a7"), Square("c7"), Square("d8"), Square("c5"), Square("d4"), Square("e3"), Square("f2"), Square("g1"), Square("b7"), Square("b8"), Square("c6"), Square("d6"), Square("e6"), Square("f6"), Square("g6"), Square("h6"), Square("b5"), Square("b4"), Square("b3"), Square("b2"), Square("b1"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC6BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/2q5/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b5"), Square("a4"), Square("b7"), Square("a8"), Square("d7"), Square("e8"), Square("d5"), Square("e4"), Square("f3"), Square("g2"), Square("h1"), Square("c7"), Square("c8"), Square("d6"), Square("e6"), Square("f6"), Square("g6"), Square("h6"), Square("c5"), Square("c4"), Square("c3"), Square("c2"), Square("c1"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD6BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/3q4/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c5"), Square("b4"), Square("a3"), Square("c7"), Square("b8"), Square("e7"), Square("f8"), Square("e5"), Square("f4"), Square("g3"), Square("h2"), Square("d7"), Square("d8"), Square("e6"), Square("f6"), Square("g6"), Square("h6"), Square("d5"), Square("d4"), Square("d3"), Square("d2"), Square("d1"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE6BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/4q3/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d5"), Square("c4"), Square("b3"), Square("a2"), Square("d7"), Square("c8"), Square("f7"), Square("g8"), Square("f5"), Square("g4"), Square("h3"), Square("e7"), Square("e8"), Square("f6"), Square("g6"), Square("h6"), Square("e5"), Square("e4"), Square("e3"), Square("e2"), Square("e1"), Square("d6"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF6BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/5q2/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e5"), Square("d4"), Square("c3"), Square("b2"), Square("a1"), Square("e7"), Square("d8"), Square("g7"), Square("h8"), Square("g5"), Square("h4"), Square("f7"), Square("f8"), Square("g6"), Square("h6"), Square("f5"), Square("f4"), Square("f3"), Square("f2"), Square("f1"), Square("e6"), Square("d6"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG6BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/6q1/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f5"), Square("e4"), Square("d3"), Square("c2"), Square("b1"), Square("f7"), Square("e8"), Square("h7"), Square("h5"), Square("g7"), Square("g8"), Square("h6"), Square("g5"), Square("g4"), Square("g3"), Square("g2"), Square("g1"), Square("f6"), Square("e6"), Square("d6"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH6BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/7q/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g5"), Square("f4"), Square("e3"), Square("d2"), Square("c1"), Square("g7"), Square("f8"), Square("h7"), Square("h8"), Square("h5"), Square("h4"), Square("h3"), Square("h2"), Square("h1"), Square("g6"), Square("f6"), Square("e6"), Square("d6"), Square("c6"), Square("b6"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA7BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/q7/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b8"), Square("b6"), Square("c5"), Square("d4"), Square("e3"), Square("f2"), Square("g1"), Square("a8"), Square("b7"), Square("c7"), Square("d7"), Square("e7"), Square("f7"), Square("g7"), Square("h7"), Square("a6"), Square("a5"), Square("a4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB7BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/1q6/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a6"), Square("a8"), Square("c8"), Square("c6"), Square("d5"), Square("e4"), Square("f3"), Square("g2"), Square("h1"), Square("b8"), Square("c7"), Square("d7"), Square("e7"), Square("f7"), Square("g7"), Square("h7"), Square("b6"), Square("b5"), Square("b4"), Square("b3"), Square("b2"), Square("b1"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC7BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/2q5/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b6"), Square("a5"), Square("b8"), Square("d8"), Square("d6"), Square("e5"), Square("f4"), Square("g3"), Square("h2"), Square("c8"), Square("d7"), Square("e7"), Square("f7"), Square("g7"), Square("h7"), Square("c6"), Square("c5"), Square("c4"), Square("c3"), Square("c2"), Square("c1"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD7BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/3q4/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c6"), Square("b5"), Square("a4"), Square("c8"), Square("e8"), Square("e6"), Square("f5"), Square("g4"), Square("h3"), Square("d8"), Square("e7"), Square("f7"), Square("g7"), Square("h7"), Square("d6"), Square("d5"), Square("d4"), Square("d3"), Square("d2"), Square("d1"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE7BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/4q3/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d6"), Square("c5"), Square("b4"), Square("a3"), Square("d8"), Square("f8"), Square("f6"), Square("g5"), Square("h4"), Square("e8"), Square("f7"), Square("g7"), Square("h7"), Square("e6"), Square("e5"), Square("e4"), Square("e3"), Square("e2"), Square("e1"), Square("d7"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF7BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/5q2/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e6"), Square("d5"), Square("c4"), Square("b3"), Square("a2"), Square("e8"), Square("g8"), Square("g6"), Square("h5"), Square("f8"), Square("g7"), Square("h7"), Square("f6"), Square("f5"), Square("f4"), Square("f3"), Square("f2"), Square("f1"), Square("e7"), Square("d7"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG7BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/6q1/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f6"), Square("e5"), Square("d4"), Square("c3"), Square("b2"), Square("a1"), Square("f8"), Square("h8"), Square("h6"), Square("g8"), Square("h7"), Square("g6"), Square("g5"), Square("g4"), Square("g3"), Square("g2"), Square("g1"), Square("f7"), Square("e7"), Square("d7"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH7BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/7q/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g6"), Square("f5"), Square("e4"), Square("d3"), Square("c2"), Square("b1"), Square("g8"), Square("h8"), Square("h6"), Square("h5"), Square("h4"), Square("h3"), Square("h2"), Square("h1"), Square("g7"), Square("f7"), Square("e7"), Square("d7"), Square("c7"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA8BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("q7/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b7"), Square("c6"), Square("d5"), Square("e4"), Square("f3"), Square("g2"), Square("h1"), Square("b8"), Square("c8"), Square("d8"), Square("e8"), Square("f8"), Square("g8"), Square("h8"), Square("a7"), Square("a6"), Square("a5"), Square("a4"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB8BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("1q6/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a7"), Square("c7"), Square("d6"), Square("e5"), Square("f4"), Square("g3"), Square("h2"), Square("c8"), Square("d8"), Square("e8"), Square("f8"), Square("g8"), Square("h8"), Square("b7"), Square("b6"), Square("b5"), Square("b4"), Square("b3"), Square("b2"), Square("b1"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC8BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("2q5/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b7"), Square("a6"), Square("d7"), Square("e6"), Square("f5"), Square("g4"), Square("h3"), Square("d8"), Square("e8"), Square("f8"), Square("g8"), Square("h8"), Square("c7"), Square("c6"), Square("c5"), Square("c4"), Square("c3"), Square("c2"), Square("c1"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD8BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("3q4/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c7"), Square("b6"), Square("a5"), Square("e7"), Square("f6"), Square("g5"), Square("h4"), Square("e8"), Square("f8"), Square("g8"), Square("h8"), Square("d7"), Square("d6"), Square("d5"), Square("d4"), Square("d3"), Square("d2"), Square("d1"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE8BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("4q3/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d7"), Square("c6"), Square("b5"), Square("a4"), Square("f7"), Square("g6"), Square("h5"), Square("f8"), Square("g8"), Square("h8"), Square("e7"), Square("e6"), Square("e5"), Square("e4"), Square("e3"), Square("e2"), Square("e1"), Square("d8"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF8BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("5q2/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e7"), Square("d6"), Square("c5"), Square("b4"), Square("a3"), Square("g7"), Square("h6"), Square("g8"), Square("h8"), Square("f7"), Square("f6"), Square("f5"), Square("f4"), Square("f3"), Square("f2"), Square("f1"), Square("e8"), Square("d8"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG8BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("6q1/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f7"), Square("e6"), Square("d5"), Square("c4"), Square("b3"), Square("a2"), Square("h7"), Square("h8"), Square("g7"), Square("g6"), Square("g5"), Square("g4"), Square("g3"), Square("g2"), Square("g1"), Square("f8"), Square("e8"), Square("d8"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH8BlackQueen {
    std::shared_ptr<Position> p = std::make_shared<Position>("7q/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g7"), Square("f6"), Square("e5"), Square("d4"), Square("c3"), Square("b2"), Square("a1"), Square("h7"), Square("h6"), Square("h5"), Square("h4"), Square("h3"), Square("h2"), Square("h1"), Square("g8"), Square("f8"), Square("e8"), Square("d8"), Square("c8"), Square("b8"), Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

@end
