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

- (void)testKnightAttacksFromA1 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/N7");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3"), Square("c2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testKnightAttacksFromB1 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/1N6");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a3"), Square("c3"), Square("d2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testKnightAttacksFromC1 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/2N5");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a2"), Square("b3"), Square("d3"), Square("e2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testKnightAttacksFromD1 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/3N4");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b2"), Square("c3"), Square("e3"), Square("f2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testKnightAttacksFromE1 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/4N3");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c2"), Square("d3"), Square("f3"), Square("g2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testKnightAttacksFromF1 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/5N2");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d2"), Square("e3"), Square("g3"), Square("h2")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testKnightAttacksFromG1 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/6N1");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e2"), Square("f3"), Square("h3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testKnightAttacksFromH1 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/8/7N");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f2"), Square("g3")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h1"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}


- (void)testKnightAttacksFromA2 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/N7/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b4"), Square("c3"), Square("c1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("a2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testKnightAttacksFromB2 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/1N6/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a4"), Square("c4"), Square("d3"), Square("d1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("b2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testKnightAttacksFromC2 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/2N5/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("a3"), Square("b4"), Square("d4"), Square("e3"), Square("a1"), Square("e1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("c2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testKnightAttacksFromD2 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/3N4/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("b3"), Square("c4"), Square("e4"), Square("f3"), Square("b1"), Square("f1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("d2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testKnightAttacksFromE2 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/4N3/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("c3"), Square("d4"), Square("f4"), Square("g3"), Square("c1"), Square("g1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("e2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testKnightAttacksFromF2 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/5N2/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("d3"), Square("e4"), Square("g4"), Square("h3"), Square("d1"), Square("h1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("f2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testKnightAttacksFromG2 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/6N1/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("e3"), Square("f4"), Square("h4"), Square("e1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("g2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}

- (void)testKnightAttacksFromH2 {
    std::shared_ptr<BitboardPosition> p = std::make_shared<BitboardPosition>("8/8/8/8/8/8/7N/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<BitboardPositionQuerier>(p);
    
    std::set<Square> expectedAttacksFrom {Square("f3"), Square("g4"), Square("f1")};
    std::set<Square> actualAttacksFrom = q->attacksFrom(Square("h2"));
    
    XCTAssertTrue(expectedAttacksFrom == actualAttacksFrom, @"Attacks set should be congruent");
}


@end
