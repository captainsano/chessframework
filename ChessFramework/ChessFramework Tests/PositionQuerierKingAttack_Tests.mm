//
//  PositionQuerierKingAttack_Tests.mm
//  ChessFramework
//
//  Created by Santhos Baala RS on 30/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <set>
#import "Square.h"
#import "Position.h"
#import "PositionQuerier.h"

using namespace sfc::cfw;

@interface PositionQuerierKingAttack_Tests : XCTestCase

@end

@implementation PositionQuerierKingAttack_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown {
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}


- (void)testAttacksFromA1WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/K7");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("b1"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB1WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/1K6");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c2"), Square("c1"), Square("b2"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC1WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/2K5");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d2"), Square("d1"), Square("c2"), Square("b2"), Square("b1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD1WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/3K4");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e2"), Square("e1"), Square("d2"), Square("c2"), Square("c1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE1WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/4K3");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f2"), Square("f1"), Square("e2"), Square("d2"), Square("d1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF1WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/5K2");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g2"), Square("g1"), Square("f2"), Square("e2"), Square("e1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG1WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/6K1");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h2"), Square("h1"), Square("g2"), Square("f2"), Square("f1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH1WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/7K");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h2"), Square("g2"), Square("g1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA2WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/K7/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3"), Square("b2"), Square("b1"), Square("a3"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB2WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/1K6/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c3"), Square("c2"), Square("c1"), Square("b3"), Square("b1"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC2WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/2K5/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d3"), Square("d2"), Square("d1"), Square("c3"), Square("c1"), Square("b3"), Square("b2"), Square("b1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD2WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/3K4/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e3"), Square("e2"), Square("e1"), Square("d3"), Square("d1"), Square("c3"), Square("c2"), Square("c1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE2WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/4K3/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f3"), Square("f2"), Square("f1"), Square("e3"), Square("e1"), Square("d3"), Square("d2"), Square("d1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF2WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/5K2/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g3"), Square("g2"), Square("g1"), Square("f3"), Square("f1"), Square("e3"), Square("e2"), Square("e1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG2WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/6K1/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h3"), Square("h2"), Square("h1"), Square("g3"), Square("g1"), Square("f3"), Square("f2"), Square("f1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH2WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/7K/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h3"), Square("h1"), Square("g3"), Square("g2"), Square("g1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA3WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/K7/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b4"), Square("b3"), Square("b2"), Square("a4"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB3WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/1K6/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c4"), Square("c3"), Square("c2"), Square("b4"), Square("b2"), Square("a4"), Square("a3"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC3WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/2K5/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d4"), Square("d3"), Square("d2"), Square("c4"), Square("c2"), Square("b4"), Square("b3"), Square("b2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD3WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/3K4/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e4"), Square("e3"), Square("e2"), Square("d4"), Square("d2"), Square("c4"), Square("c3"), Square("c2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE3WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/4K3/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f4"), Square("f3"), Square("f2"), Square("e4"), Square("e2"), Square("d4"), Square("d3"), Square("d2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF3WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/5K2/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g4"), Square("g3"), Square("g2"), Square("f4"), Square("f2"), Square("e4"), Square("e3"), Square("e2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG3WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/6K1/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h4"), Square("h3"), Square("h2"), Square("g4"), Square("g2"), Square("f4"), Square("f3"), Square("f2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH3WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/7K/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h4"), Square("h2"), Square("g4"), Square("g3"), Square("g2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA4WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/K7/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b5"), Square("b4"), Square("b3"), Square("a5"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB4WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/1K6/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c5"), Square("c4"), Square("c3"), Square("b5"), Square("b3"), Square("a5"), Square("a4"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC4WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/2K5/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d5"), Square("d4"), Square("d3"), Square("c5"), Square("c3"), Square("b5"), Square("b4"), Square("b3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD4WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/3K4/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e5"), Square("e4"), Square("e3"), Square("d5"), Square("d3"), Square("c5"), Square("c4"), Square("c3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE4WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/4K3/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f5"), Square("f4"), Square("f3"), Square("e5"), Square("e3"), Square("d5"), Square("d4"), Square("d3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF4WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/5K2/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g5"), Square("g4"), Square("g3"), Square("f5"), Square("f3"), Square("e5"), Square("e4"), Square("e3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG4WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/6K1/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h5"), Square("h4"), Square("h3"), Square("g5"), Square("g3"), Square("f5"), Square("f4"), Square("f3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH4WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/7K/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h5"), Square("h3"), Square("g5"), Square("g4"), Square("g3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA5WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/K7/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b6"), Square("b5"), Square("b4"), Square("a6"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB5WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/1K6/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c6"), Square("c5"), Square("c4"), Square("b6"), Square("b4"), Square("a6"), Square("a5"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC5WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/2K5/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d6"), Square("d5"), Square("d4"), Square("c6"), Square("c4"), Square("b6"), Square("b5"), Square("b4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD5WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/3K4/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e6"), Square("e5"), Square("e4"), Square("d6"), Square("d4"), Square("c6"), Square("c5"), Square("c4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE5WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/4K3/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f6"), Square("f5"), Square("f4"), Square("e6"), Square("e4"), Square("d6"), Square("d5"), Square("d4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF5WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/5K2/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g6"), Square("g5"), Square("g4"), Square("f6"), Square("f4"), Square("e6"), Square("e5"), Square("e4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG5WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/6K1/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h6"), Square("h5"), Square("h4"), Square("g6"), Square("g4"), Square("f6"), Square("f5"), Square("f4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH5WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/7K/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h6"), Square("h4"), Square("g6"), Square("g5"), Square("g4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA6WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/K7/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b7"), Square("b6"), Square("b5"), Square("a7"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB6WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/1K6/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c7"), Square("c6"), Square("c5"), Square("b7"), Square("b5"), Square("a7"), Square("a6"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC6WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/2K5/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d7"), Square("d6"), Square("d5"), Square("c7"), Square("c5"), Square("b7"), Square("b6"), Square("b5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD6WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/3K4/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e7"), Square("e6"), Square("e5"), Square("d7"), Square("d5"), Square("c7"), Square("c6"), Square("c5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE6WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/4K3/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f7"), Square("f6"), Square("f5"), Square("e7"), Square("e5"), Square("d7"), Square("d6"), Square("d5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF6WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/5K2/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g7"), Square("g6"), Square("g5"), Square("f7"), Square("f5"), Square("e7"), Square("e6"), Square("e5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG6WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/6K1/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h7"), Square("h6"), Square("h5"), Square("g7"), Square("g5"), Square("f7"), Square("f6"), Square("f5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH6WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/7K/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h7"), Square("h5"), Square("g7"), Square("g6"), Square("g5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA7WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/K7/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b8"), Square("b7"), Square("b6"), Square("a8"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB7WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/1K6/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c8"), Square("c7"), Square("c6"), Square("b8"), Square("b6"), Square("a8"), Square("a7"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC7WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/2K5/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d8"), Square("d7"), Square("d6"), Square("c8"), Square("c6"), Square("b8"), Square("b7"), Square("b6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD7WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/3K4/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e8"), Square("e7"), Square("e6"), Square("d8"), Square("d6"), Square("c8"), Square("c7"), Square("c6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE7WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/4K3/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f8"), Square("f7"), Square("f6"), Square("e8"), Square("e6"), Square("d8"), Square("d7"), Square("d6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF7WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/5K2/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g8"), Square("g7"), Square("g6"), Square("f8"), Square("f6"), Square("e8"), Square("e7"), Square("e6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG7WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/6K1/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h8"), Square("h7"), Square("h6"), Square("g8"), Square("g6"), Square("f8"), Square("f7"), Square("f6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH7WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/7K/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h8"), Square("h6"), Square("g8"), Square("g7"), Square("g6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA8WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("K7/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b8"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB8WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("1K6/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c8"), Square("c7"), Square("b7"), Square("a8"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC8WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("2K5/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d8"), Square("d7"), Square("c7"), Square("b8"), Square("b7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD8WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("3K4/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e8"), Square("e7"), Square("d7"), Square("c8"), Square("c7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE8WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("4K3/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f8"), Square("f7"), Square("e7"), Square("d8"), Square("d7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF8WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("5K2/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g8"), Square("g7"), Square("f7"), Square("e8"), Square("e7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG8WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("6K1/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h8"), Square("h7"), Square("g7"), Square("f8"), Square("f7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH8WhiteKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("7K/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h7"), Square("g8"), Square("g7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA1BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/k7");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("b1"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB1BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/1k6");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c2"), Square("c1"), Square("b2"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC1BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/2k5");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d2"), Square("d1"), Square("c2"), Square("b2"), Square("b1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD1BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/3k4");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e2"), Square("e1"), Square("d2"), Square("c2"), Square("c1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE1BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/4k3");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f2"), Square("f1"), Square("e2"), Square("d2"), Square("d1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF1BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/5k2");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g2"), Square("g1"), Square("f2"), Square("e2"), Square("e1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG1BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/6k1");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h2"), Square("h1"), Square("g2"), Square("f2"), Square("f1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH1BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/7k");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h2"), Square("g2"), Square("g1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA2BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/k7/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3"), Square("b2"), Square("b1"), Square("a3"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB2BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/1k6/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c3"), Square("c2"), Square("c1"), Square("b3"), Square("b1"), Square("a3"), Square("a2"), Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC2BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/2k5/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d3"), Square("d2"), Square("d1"), Square("c3"), Square("c1"), Square("b3"), Square("b2"), Square("b1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD2BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/3k4/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e3"), Square("e2"), Square("e1"), Square("d3"), Square("d1"), Square("c3"), Square("c2"), Square("c1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE2BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/4k3/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f3"), Square("f2"), Square("f1"), Square("e3"), Square("e1"), Square("d3"), Square("d2"), Square("d1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF2BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/5k2/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g3"), Square("g2"), Square("g1"), Square("f3"), Square("f1"), Square("e3"), Square("e2"), Square("e1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG2BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/6k1/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h3"), Square("h2"), Square("h1"), Square("g3"), Square("g1"), Square("f3"), Square("f2"), Square("f1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH2BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/7k/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h3"), Square("h1"), Square("g3"), Square("g2"), Square("g1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA3BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/k7/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b4"), Square("b3"), Square("b2"), Square("a4"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB3BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/1k6/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c4"), Square("c3"), Square("c2"), Square("b4"), Square("b2"), Square("a4"), Square("a3"), Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC3BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/2k5/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d4"), Square("d3"), Square("d2"), Square("c4"), Square("c2"), Square("b4"), Square("b3"), Square("b2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD3BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/3k4/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e4"), Square("e3"), Square("e2"), Square("d4"), Square("d2"), Square("c4"), Square("c3"), Square("c2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE3BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/4k3/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f4"), Square("f3"), Square("f2"), Square("e4"), Square("e2"), Square("d4"), Square("d3"), Square("d2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF3BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/5k2/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g4"), Square("g3"), Square("g2"), Square("f4"), Square("f2"), Square("e4"), Square("e3"), Square("e2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG3BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/6k1/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h4"), Square("h3"), Square("h2"), Square("g4"), Square("g2"), Square("f4"), Square("f3"), Square("f2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH3BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/7k/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h4"), Square("h2"), Square("g4"), Square("g3"), Square("g2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA4BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/k7/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b5"), Square("b4"), Square("b3"), Square("a5"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB4BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/1k6/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c5"), Square("c4"), Square("c3"), Square("b5"), Square("b3"), Square("a5"), Square("a4"), Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC4BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/2k5/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d5"), Square("d4"), Square("d3"), Square("c5"), Square("c3"), Square("b5"), Square("b4"), Square("b3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD4BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/3k4/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e5"), Square("e4"), Square("e3"), Square("d5"), Square("d3"), Square("c5"), Square("c4"), Square("c3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE4BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/4k3/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f5"), Square("f4"), Square("f3"), Square("e5"), Square("e3"), Square("d5"), Square("d4"), Square("d3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF4BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/5k2/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g5"), Square("g4"), Square("g3"), Square("f5"), Square("f3"), Square("e5"), Square("e4"), Square("e3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG4BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/6k1/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h5"), Square("h4"), Square("h3"), Square("g5"), Square("g3"), Square("f5"), Square("f4"), Square("f3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH4BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/7k/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h5"), Square("h3"), Square("g5"), Square("g4"), Square("g3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA5BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/k7/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b6"), Square("b5"), Square("b4"), Square("a6"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB5BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/1k6/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c6"), Square("c5"), Square("c4"), Square("b6"), Square("b4"), Square("a6"), Square("a5"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC5BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/2k5/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d6"), Square("d5"), Square("d4"), Square("c6"), Square("c4"), Square("b6"), Square("b5"), Square("b4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD5BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/3k4/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e6"), Square("e5"), Square("e4"), Square("d6"), Square("d4"), Square("c6"), Square("c5"), Square("c4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE5BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/4k3/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f6"), Square("f5"), Square("f4"), Square("e6"), Square("e4"), Square("d6"), Square("d5"), Square("d4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF5BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/5k2/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g6"), Square("g5"), Square("g4"), Square("f6"), Square("f4"), Square("e6"), Square("e5"), Square("e4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG5BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/6k1/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h6"), Square("h5"), Square("h4"), Square("g6"), Square("g4"), Square("f6"), Square("f5"), Square("f4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH5BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/7k/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h6"), Square("h4"), Square("g6"), Square("g5"), Square("g4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA6BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/k7/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b7"), Square("b6"), Square("b5"), Square("a7"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB6BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/1k6/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c7"), Square("c6"), Square("c5"), Square("b7"), Square("b5"), Square("a7"), Square("a6"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC6BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/2k5/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d7"), Square("d6"), Square("d5"), Square("c7"), Square("c5"), Square("b7"), Square("b6"), Square("b5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD6BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/3k4/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e7"), Square("e6"), Square("e5"), Square("d7"), Square("d5"), Square("c7"), Square("c6"), Square("c5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE6BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/4k3/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f7"), Square("f6"), Square("f5"), Square("e7"), Square("e5"), Square("d7"), Square("d6"), Square("d5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF6BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/5k2/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g7"), Square("g6"), Square("g5"), Square("f7"), Square("f5"), Square("e7"), Square("e6"), Square("e5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG6BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/6k1/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h7"), Square("h6"), Square("h5"), Square("g7"), Square("g5"), Square("f7"), Square("f6"), Square("f5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH6BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/7k/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h7"), Square("h5"), Square("g7"), Square("g6"), Square("g5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA7BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/k7/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b8"), Square("b7"), Square("b6"), Square("a8"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB7BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/1k6/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c8"), Square("c7"), Square("c6"), Square("b8"), Square("b6"), Square("a8"), Square("a7"), Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC7BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/2k5/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d8"), Square("d7"), Square("d6"), Square("c8"), Square("c6"), Square("b8"), Square("b7"), Square("b6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD7BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/3k4/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e8"), Square("e7"), Square("e6"), Square("d8"), Square("d6"), Square("c8"), Square("c7"), Square("c6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE7BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/4k3/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f8"), Square("f7"), Square("f6"), Square("e8"), Square("e6"), Square("d8"), Square("d7"), Square("d6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF7BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/5k2/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g8"), Square("g7"), Square("g6"), Square("f8"), Square("f6"), Square("e8"), Square("e7"), Square("e6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG7BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/6k1/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h8"), Square("h7"), Square("h6"), Square("g8"), Square("g6"), Square("f8"), Square("f7"), Square("f6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH7BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/7k/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h8"), Square("h6"), Square("g8"), Square("g7"), Square("g6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA8BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("k7/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b8"), Square("b7"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB8BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("1k6/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c8"), Square("c7"), Square("b7"), Square("a8"), Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC8BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("2k5/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d8"), Square("d7"), Square("c7"), Square("b8"), Square("b7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD8BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("3k4/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e8"), Square("e7"), Square("d7"), Square("c8"), Square("c7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE8BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("4k3/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f8"), Square("f7"), Square("e7"), Square("d8"), Square("d7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF8BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("5k2/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g8"), Square("g7"), Square("f7"), Square("e8"), Square("e7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG8BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("6k1/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h8"), Square("h7"), Square("g7"), Square("f8"), Square("f7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH8BlackKingNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("7k/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h7"), Square("g8"), Square("g7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}


@end
