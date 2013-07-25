//
//  GameState_Tests.m
//  ChessFramework
//
//  Created by Santhosbaala RS on 25/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Square.h"
#import "Piece.h"
#import "GameState.h"

using sfc::cfw::Square;
using sfc::cfw::GameState;

@interface GameState_Tests : XCTestCase

@end

@implementation GameState_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown {
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testInitializationWithValidPositionAndWhiteSideDoesNotThrow {
	CPPAssertNoThrow(new GameState("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", sfc::cfw::ColorWhite), @"Valid Initialization with White to play should not throw");
}

- (void)testInitializationWithValidPositionAndBlackSideDoesNotThrow {
	CPPAssertNoThrow(new GameState("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", sfc::cfw::ColorBlack), @"Valid Initialization with Black to play should not throw");
}

- (void)testInitializationWithValidPositionEnpassantTargetAndCastlingOptionsDoesNotThrow{
	CPPAssertNoThrow(new GameState("rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorBlack, "KQkq", Square("e3")), @"Valid Initialization with enPassant target should not throw");
	CPPAssertNoThrow(new GameState("rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorBlack, "HAha", Square("e3")), @"Valid Initialization with enPassant target should not throw");
}

- (void)testInitializationWithInvalidEnpassantTarget1Throws {
	CPPAssertThrows(new GameState("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", sfc::cfw::ColorWhite, "----", Square("e6")), @"Invalid enpassant target should throw");
}

- (void)testInitializationWithInvalidEnpassantTarget2Throws {
	CPPAssertThrows(new GameState("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", sfc::cfw::ColorBlack, "----", Square("e3")), @"Invalid enpassant target should throw");
}

- (void)testInitializationWithEnpassantTargetColorMismatchThrows1 {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorBlack, "----", Square("e6")), @"Invalid enpassant target should throw");
}

- (void)testInitializationWithEnpassantTargetColorMismatchThrows2 {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorWhite, "----", Square("e3")), @"Invalid enpassant target should throw");
}

- (void)testInitializationWithInsufficientCastlingOptionsThrows {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorWhite, "-"), @"Insufficient information in castling string");
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorWhite, "--"), @"Insufficient information in castling string");
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorWhite, "---"), @"Insufficient information in castling string");
}

- (void)testInitializationWithMalformedCastlingOptionsThrows {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorWhite, "1Qin"), @"Invalid castling options format should throw");
}

- (void)testInitializationWithCastlingOptionsChess960InvalidRookPlacementThrows {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RRBQKBNR", sfc::cfw::ColorWhite, "ABkq"), @"Invalid castling options format should throw");
}

- (void)testInitializationWithInapplicableWhiteKingsideCastlingOptionThrows {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorWhite, "GQkq"), @"Inapplicable castling option for white kingside");
}

- (void)testInitializationWithInapplicableWhiteQueensideCastlingOptionThrows {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/1NBQKBNR", sfc::cfw::ColorWhite, "KAkq"), @"Inapplicable castling option for white queenside");
}

- (void)testInitializationWithInapplicableBlackKingsideCastlingOptionThrows {
	CPPAssertThrows(new GameState("rnbqkbn1/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorWhite, "KQhq"), @"Inapplicable castling option for white kingside");
}

- (void)testInitializationWithInapplicableBlackQueensideCastlingOptionThrows {
	CPPAssertThrows(new GameState("1nbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/1NBQKBNR", sfc::cfw::ColorWhite, "KAkq"), @"Inapplicable castling option for white queenside");
}

- (void)testInitializationWithWhiteInCheckAndBlackToPlayThrows {
	CPPAssertThrows(new GameState("r1bqk2r/pppp1ppp/2n2n2/8/1bBPP3/5N2/PP3PPP/RNBQK2R", sfc::cfw::ColorBlack), @"Initialization with black to play and white king in check should throw");
}

- (void)testInitializationWithBlackInCheckAndWhiteToPlayThrows {
	CPPAssertThrows(new GameState("r1bqk2r/pppp1Bpp/2n5/8/3P4/1Q3N2/P4PPP/b1B2RK1", sfc::cfw::ColorWhite), @"Initialization with white to play and black king in check should throw");
}

- (void)testInitializationWithWhiteInCheckMateAndBlackToPlayThrows {
	CPPAssertThrows(new GameState("8/6k1/8/8/8/8/5PPP/1r4K1", sfc::cfw::ColorBlack), @"Initialization with black to play and white king in check mate should throw");
}

- (void)testInitializationWithBlackInCheckMateAndWhiteToPlayThrows {
	CPPAssertThrows(new GameState("r1bq3r/ppppnQkp/8/4N1Bp/3P4/8/P4PPP/b4RK1", sfc::cfw::ColorWhite), @"Initialization with white to play and black king in check mat should throw");
}

- (void)testInitializationWithoutWhiteKingThrows {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQ1BNR", sfc::cfw::ColorWhite, "KQkq"), @"Initialization without white king should throw");
}

- (void)testInitializationWithoutBlackKingThrows {
	CPPAssertThrows(new GameState("rnbq1bnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorWhite, "KQkq"), @"Initialization without black king should throw");
}

- (void)testInitializationWithMultipleWhiteKingsThrows {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPK/RNBQKBNR", sfc::cfw::ColorWhite, "KQkq"), @"Initialization with multiple white king should throw");
}

- (void)testInitializationWithMultipleBlackKingsThrows {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/k7/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorWhite, "KQkq"), @"Initialization with multiple black king should throw");
}


@end
