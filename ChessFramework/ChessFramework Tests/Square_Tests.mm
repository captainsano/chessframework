//
//  Square_Tests.m
//  ChessFramework
//
//  Created by Santhos Baala RS on 23/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#import <XCTest/XCTest.h>

#import <vector>
#import <iostream>
#import "Square.h"

using sfc::cfw::Square;

@interface Square_Tests : XCTestCase

@end

@implementation Square_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown {
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testThatDefaultSquareHasZeroValue {
    Square s;
    XCTAssertTrue(s.getIndex() == 0, @"Default initialized square should have zero as index");
}

- (void)testInvalidFileAndRankValuesThrowOutOfRangeException {
    CPPAssertThrows(new Square(8, 9), @"Both file and rank out of range. Should throw an exception");
    CPPAssertThrows(new Square(5, 9), @"File in range, rank out of range. Should throw an exception");
    CPPAssertThrows(new Square(9, 5), @"File out of range, rank in range. Should throw an exception");
    CPPAssertThrows(new Square(SHRT_MAX, SHRT_MAX), @"Both file and rank out of range, maximum. Should throw an exception");
}

- (void)testDoesNotThrowExceptionForFileAndRankValuesInRange {
    for (unsigned short file = 0; file < 8; file++) {
        for (unsigned short rank = 0; rank < 8; rank++) {
            CPPAssertNoThrow(new Square(file, rank), @"Both file and rank in range. Should not throw an exception");
        }
    }
}

- (void)testInitializedFromLabelDoesNotThrow {
	CPPAssertNoThrow(new Square("e4"), @"Valid square initialization throw label does not throw");
}

- (void)testInitializedFromInvalidLabelThrows {
	CPPAssertThrows(new Square("e9"), @"Invalid square initialization should throw");
	CPPAssertThrows(new Square("x3"), @"Invalid square initialization should throw");
	CPPAssertThrows(new Square("e0"), @"Invalid square initialization should throw");
	CPPAssertThrows(new Square("h9"), @"Invalid square initialization should throw");
}

- (void)testReturnsCorrespondingValuesForLabels {
	std::vector<Square> squares;
	
	for (char rank = '1'; rank <= '8'; rank++) {
		for (char file = 'a'; file <= 'h'; file++) {
			std::string label{file, rank};
			squares.push_back(Square(label));
		}
	}
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertEquals(squares[i].getIndex(), i, @"Squares should store corresponding index from label");
	}
}

- (void)testReturnsTheAppropriateFileAndRankValues {
    for (unsigned short file = 0; file < 8; file++) {
        for (unsigned short rank = 0; rank < 8; rank++) {
            Square s(file, rank);
            XCTAssertEquals(s.getFile(), file, @"File should return the set value");
            XCTAssertEquals(s.getRank(), rank, @"Rank should return the set value");
        }
    }
}

- (void)testInvalidIndexValuesThrowOutOfRangeException {
    CPPAssertThrows(new Square(64), @"Should throw out of range exception");
    CPPAssertThrows(new Square(SHRT_MAX), @"Should throw out of range exception");
}

- (void)testDoesNotThrowExceptionForIndexValuesInRange {
    for (unsigned short i = 0; i < 64; i++) {
        XCTAssertNoThrow(new Square(i), @"Should not throw an exception.");
    }
}

- (void)testReturnsTheAppropriateIndexValue {
	std::vector<Square> squares;
    for (unsigned short rank = 0; rank < 8; rank++) {
        for (unsigned short file = 0; file < 8; file++) {
            Square s(file, rank);
            squares.push_back(s);
        }
    }
	
	for (int i = 0; i < 64; i++) {
		XCTAssertTrue(squares[i].getIndex() == i, @"Square Indices should match");
	}
}

- (void)testReturnsTheAppropriateSquareLabels {
    std::vector<std::string> labels;
    for (unsigned short i = 0; i < 64; i++) {
        Square s(i);
        labels.push_back(s.getLabel());
    }
    
    // Tests
    {
        XCTAssertTrue(labels[0] == "a1", @"Labels should match"); XCTAssertTrue(labels[1] == "b1", @"Labels should match");
        XCTAssertTrue(labels[2] == "c1", @"Labels should match"); XCTAssertTrue(labels[3] == "d1", @"Labels should match");
        XCTAssertTrue(labels[4] == "e1", @"Labels should match"); XCTAssertTrue(labels[5] == "f1", @"Labels should match");
        XCTAssertTrue(labels[6] == "g1", @"Labels should match"); XCTAssertTrue(labels[7] == "h1", @"Labels should match");
        
        XCTAssertTrue(labels[8] == "a2", @"Labels should match"); XCTAssertTrue(labels[9] == "b2", @"Labels should match");
        XCTAssertTrue(labels[10] == "c2", @"Labels should match"); XCTAssertTrue(labels[11] == "d2", @"Labels should match");
        XCTAssertTrue(labels[12] == "e2", @"Labels should match"); XCTAssertTrue(labels[13] == "f2", @"Labels should match");
        XCTAssertTrue(labels[14] == "g2", @"Labels should match"); XCTAssertTrue(labels[15] == "h2", @"Labels should match");
        
        XCTAssertTrue(labels[16] == "a3", @"Labels should match"); XCTAssertTrue(labels[17] == "b3", @"Labels should match");
        XCTAssertTrue(labels[18] == "c3", @"Labels should match"); XCTAssertTrue(labels[19] == "d3", @"Labels should match");
        XCTAssertTrue(labels[20] == "e3", @"Labels should match"); XCTAssertTrue(labels[21] == "f3", @"Labels should match");
        XCTAssertTrue(labels[22] == "g3", @"Labels should match"); XCTAssertTrue(labels[23] == "h3", @"Labels should match");
        
        XCTAssertTrue(labels[24] == "a4", @"Labels should match"); XCTAssertTrue(labels[25] == "b4", @"Labels should match");
        XCTAssertTrue(labels[26] == "c4", @"Labels should match"); XCTAssertTrue(labels[27] == "d4", @"Labels should match");
        XCTAssertTrue(labels[28] == "e4", @"Labels should match"); XCTAssertTrue(labels[29] == "f4", @"Labels should match");
        XCTAssertTrue(labels[30] == "g4", @"Labels should match"); XCTAssertTrue(labels[31] == "h4", @"Labels should match");
        
        XCTAssertTrue(labels[32] == "a5", @"Labels should match"); XCTAssertTrue(labels[33] == "b5", @"Labels should match");
        XCTAssertTrue(labels[34] == "c5", @"Labels should match"); XCTAssertTrue(labels[35] == "d5", @"Labels should match");
        XCTAssertTrue(labels[36] == "e5", @"Labels should match"); XCTAssertTrue(labels[37] == "f5", @"Labels should match");
        XCTAssertTrue(labels[38] == "g5", @"Labels should match"); XCTAssertTrue(labels[39] == "h5", @"Labels should match");
        
        XCTAssertTrue(labels[40] == "a6", @"Labels should match"); XCTAssertTrue(labels[41] == "b6", @"Labels should match");
        XCTAssertTrue(labels[42] == "c6", @"Labels should match"); XCTAssertTrue(labels[43] == "d6", @"Labels should match");
        XCTAssertTrue(labels[44] == "e6", @"Labels should match"); XCTAssertTrue(labels[45] == "f6", @"Labels should match");
        XCTAssertTrue(labels[46] == "g6", @"Labels should match"); XCTAssertTrue(labels[47] == "h6", @"Labels should match");
        
        XCTAssertTrue(labels[48] == "a7", @"Labels should match"); XCTAssertTrue(labels[49] == "b7", @"Labels should match");
        XCTAssertTrue(labels[50] == "c7", @"Labels should match"); XCTAssertTrue(labels[51] == "d7", @"Labels should match");
        XCTAssertTrue(labels[52] == "e7", @"Labels should match"); XCTAssertTrue(labels[53] == "f7", @"Labels should match");
        XCTAssertTrue(labels[54] == "g7", @"Labels should match"); XCTAssertTrue(labels[55] == "h7", @"Labels should match");
        
        XCTAssertTrue(labels[56] == "a8", @"Labels should match"); XCTAssertTrue(labels[57] == "b8", @"Labels should match");
        XCTAssertTrue(labels[58] == "c8", @"Labels should match"); XCTAssertTrue(labels[59] == "d8", @"Labels should match");
        XCTAssertTrue(labels[60] == "e8", @"Labels should match"); XCTAssertTrue(labels[61] == "f8", @"Labels should match");
        XCTAssertTrue(labels[62] == "g8", @"Labels should match"); XCTAssertTrue(labels[63] == "h8", @"Labels should match");
    }
}

@end
