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

- testDefaultInitializationDoesNotThrow() {
	CPPAssertNoThrow(new GameState(), @"Default initialization of GameState should not throw");
}

- testInitializationWithValidPositionAndWhiteSideDoesNotThrow() {
	CPPAssertNoThrow(new GameState("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", sfc::cfw::ColorWhite), @"Valid Initialization with White to play should not throw");
}

- testInitializationWithValidPositionAndBlackSideDoesNotThrow() {
	CPPAssertNoThrow(new GameState("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", sfc::cfw::ColorBlack), @"Valid Initialization with Black to play should not throw");
}

- testInitializationWithValidPositionEnpassantTargetAndCastlingOptionsDoesNotThrow() {
	CPPAssertNoThrow(new GameState("rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorBlack, "KQkq", Square("e3")), @"Valid Initialization with enPassant target should not throw");
	CPPAssertNoThrow(new GameState("rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorBlack, "HAha", Square("e3")), @"Valid Initialization with enPassant target should not throw");
}

- testInitializationWithInvalidEnpassantTarget1Throws() {
	CPPAssertThrows(new GameState("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", sfc::cfw::ColorWhite, "----", Square("e6")), @"Invalid enpassant target should throw");
}

- testInitializationWithInvalidEnpassantTarget2Throws() {
	CPPAssertThrows(new GameState("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", sfc::cfw::ColorBlack, "----", Square("e3")), @"Invalid enpassant target should throw");
}

- testInitializationWithEnpassantTargetColorMismatchThrows1() {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorBlack, "----", Square("e6")), @"Invalid enpassant target should throw");
}

- testInitializationWithEnpassantTargetColorMismatchThrows2() {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorWhite, "----", Square("e3")), @"Invalid enpassant target should throw");
}

- testInitializationWithInsufficientCastlingOptionsThrows() {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorWhite, "-"), @"Insufficient information in castling string");
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorWhite, "--"), @"Insufficient information in castling string");
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorWhite, "---"), @"Insufficient information in castling string");
}

- testInitializationWithInvalidCastlingOptionFormatThrows() {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorWhite, "1Qin"), @"Invalid castling options format should throw");
}

- testInitializationWithInapplicableWhiteKingsideCastlingOptionThrows() {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorWhite, "GQkq"), @"Inapplicable castling option for white kingside");
}

- testInitializationWithInapplicableWhiteQueensideCastlingOptionThrows() {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/1NBQKBNR", sfc::cfw::ColorWhite, "KAkq"), @"Inapplicable castling option for white queenside");
}

- testInitializationWithInapplicableBlackKingsideCastlingOptionThrows() {
	CPPAssertThrows(new GameState("rnbqkbn1/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorWhite, "KQhq"), @"Inapplicable castling option for white kingside");
}

- testInitializationWithInapplicableBlackQueensideCastlingOptionThrows() {
	CPPAssertThrows(new GameState("1nbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/1NBQKBNR", sfc::cfw::ColorWhite, "KAkq"), @"Inapplicable castling option for white queenside");
}

- testInitializationWithWhiteInCheckAndBlackToPlayThrows() {
	/// @todo
}

- testInitializationWithBlackInCheckAndWhiteToPlayThrows() {
	/// @todo
}

- testInitializationWithoutWhiteKingThrows() {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQ1BNR", sfc::cfw::ColorWhite, "KQkq"), @"Initialization without white king should throw");
}

- testInitializationWithoutBlackKingThrows() {
	CPPAssertThrows(new GameState("rnbq1bnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorWhite, "KQkq"), @"Initialization without black king should throw");
}

- testInitializationWithMultipleWhiteKingsThrows() {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPK/RNBQKBNR", sfc::cfw::ColorWhite, "KQkq"), @"Initialization with multiple white king should throw");
}

- testInitializationWithMultipleBlackKingsThrows() {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/k7/4p3/4P3/8/PPPP1PPP/RNBQKBNR", sfc::cfw::ColorWhite, "KQkq"), @"Initialization with multiple black king should throw");
}


@end
