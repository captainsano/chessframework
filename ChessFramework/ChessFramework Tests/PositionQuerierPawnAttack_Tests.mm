//
//  PositionQuerierPawnAttack_Tests.m
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

@interface PositionQuerierPawnAttack_Tests : XCTestCase

@end

@implementation PositionQuerierPawnAttack_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown {
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

#pragma mark - White Pawn attacks without capture

- (void)testAttacksFromA1WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/P7");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB1WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/1P6");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC1WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/2P5");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD1WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/3P4");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE1WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/4P3");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF1WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/5P2");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG1WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/6P1");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH1WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/7P");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA2WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/P7/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a3"), Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB2WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/1P6/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3"), Square("b4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC2WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/2P5/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c3"), Square("c4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD2WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/3P4/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d3"), Square("d4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE2WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/4P3/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e3"), Square("e4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF2WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/5P2/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f3"), Square("f4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG2WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/6P1/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g3"), Square("g4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH2WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/7P/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h3"), Square("h4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA3WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/P7/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB3WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/1P6/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC3WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/2P5/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD3WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/3P4/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE3WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/4P3/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF3WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/5P2/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG3WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/6P1/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH3WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/7P/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA4WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/P7/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB4WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/1P6/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC4WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/2P5/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD4WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/3P4/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE4WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/4P3/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF4WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/5P2/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG4WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/6P1/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH4WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/7P/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA5WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/P7/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB5WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/1P6/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC5WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/2P5/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD5WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/3P4/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE5WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/4P3/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF5WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/5P2/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG5WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/6P1/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH5WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/7P/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h6")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA6WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/P7/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB6WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/1P6/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC6WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/2P5/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD6WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/3P4/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE6WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/4P3/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF6WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/5P2/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG6WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/6P1/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH6WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/7P/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h7")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA7WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/P7/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB7WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/1P6/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC7WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/2P5/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD7WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/3P4/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE7WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/4P3/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF7WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/5P2/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG7WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/6P1/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH7WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/7P/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h8")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA8WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("P7/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB8WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("1P6/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC8WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("2P5/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD8WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("3P4/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE8WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("4P3/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF8WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("5P2/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG8WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("6P1/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH8WhitePawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("7P/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

#pragma mark - Black Pawn attacks without capture

- (void)testAttacksFromA1BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/p7");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB1BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/1p6");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC1BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/2p5");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD1BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/3p4");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE1BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/4p3");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF1BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/5p2");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG1BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/6p1");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH1BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/7p");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA2BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/p7/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB2BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/1p6/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC2BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/2p5/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD2BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/3p4/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE2BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/4p3/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF2BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/5p2/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG2BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/6p1/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH2BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/7p/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA3BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/p7/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB3BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/1p6/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC3BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/2p5/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD3BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/3p4/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE3BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/4p3/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF3BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/5p2/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG3BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/6p1/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH3BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/7p/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h3"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA4BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/p7/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB4BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/1p6/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC4BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/2p5/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD4BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/3p4/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE4BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/4p3/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF4BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/5p2/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG4BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/6p1/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH4BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/7p/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h4"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA5BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/p7/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB5BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/1p6/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC5BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/2p5/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD5BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/3p4/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE5BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/4p3/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF5BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/5p2/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG5BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/6p1/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH5BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/7p/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h4")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h5"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA6BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/p7/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB6BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/1p6/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC6BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/2p5/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD6BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/3p4/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE6BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/4p3/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF6BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/5p2/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG6BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/6p1/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH6BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/7p/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h6"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA7BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/p7/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a6"), Square("a5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB7BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/1p6/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b6"), Square("b5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC7BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/2p5/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c6"), Square("c5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD7BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/3p4/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d6"), Square("d5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE7BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/4p3/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e6"), Square("e5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF7BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/5p2/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f6"), Square("f5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG7BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/6p1/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("g6"), Square("g5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH7BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/7p/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("h6"), Square("h5")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h7"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromA8BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("p7/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromB8BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("1p6/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromC8BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("2p5/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromD8BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("3p4/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromE8BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("4p3/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromF8BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("5p2/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromG8BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("6p1/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testAttacksFromH8BlackPawnNoCapture {
    std::shared_ptr<Position> p = std::make_shared<Position>("7p/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h8"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

#pragma mark - White Pawn attacks with capture

#pragma mark - Black Pawn attacks with capture

@end
