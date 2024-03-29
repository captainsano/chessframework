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

using namespace sfc::cfw;

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
	CPPAssertNoThrow(new GameState("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", ColorWhite), @"Valid Initialization with White to play should not throw");
}

- (void)testInitializationWithValidPositionAndBlackSideDoesNotThrow {
	CPPAssertNoThrow(new GameState("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", ColorBlack), @"Valid Initialization with Black to play should not throw");
}

- (void)testInitializationWithValidPositionEnpassantTargetAndCastlingOptionsDoesNotThrow{
	CPPAssertNoThrow(new GameState("rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR", ColorBlack, "KQkq", Square("e3")), @"Valid Initialization with enPassant target should not throw");
	CPPAssertNoThrow(new GameState("rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR", ColorBlack, "HAha", Square("e3")), @"Valid Initialization with enPassant target should not throw");
}

- (void)testInitializationWithInvalidEnpassantTarget1Throws {
	CPPAssertThrows(new GameState("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", ColorWhite, "----", Square("e6")), @"Invalid enpassant target should throw");
}

- (void)testInitializationWithInvalidEnpassantTarget2Throws {
	CPPAssertThrows(new GameState("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", ColorBlack, "----", Square("e3")), @"Invalid enpassant target should throw");
}

- (void)testInitializationWithEnpassantTargetColorMismatchThrows1 {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", ColorBlack, "----", Square("e6")), @"Invalid enpassant target should throw");
}

- (void)testInitializationWithEnpassantTargetColorMismatchThrows2 {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", ColorWhite, "----", Square("e3")), @"Invalid enpassant target should throw");
}

- (void)testInitializationWithInsufficientCastlingOptionsThrows {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", ColorWhite, "-"), @"Insufficient information in castling string");
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", ColorWhite, "--"), @"Insufficient information in castling string");
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", ColorWhite, "---"), @"Insufficient information in castling string");
}

- (void)testInitializationWithMalformedCastlingOptionsThrows {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", ColorWhite, "1Qin"), @"Invalid castling options format should throw");
}

- (void)testInitializationWithCastlingOptionsChess960InvalidRookPlacementThrows {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RRBQKBNR", ColorWhite, "ABkq"), @"Invalid castling options format should throw");
}

- (void)testInitializationWithInapplicableWhiteKingsideCastlingOptionThrows {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", ColorWhite, "GQkq"), @"Inapplicable castling option for white kingside");
}

- (void)testInitializationWithInapplicableWhiteQueensideCastlingOptionThrows {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/1NBQKBNR", ColorWhite, "KAkq"), @"Inapplicable castling option for white queenside");
}

- (void)testInitializationWithInapplicableBlackKingsideCastlingOptionThrows {
	CPPAssertThrows(new GameState("rnbqkbn1/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", ColorWhite, "KQhq"), @"Inapplicable castling option for white kingside");
}

- (void)testInitializationWithInapplicableBlackQueensideCastlingOptionThrows {
	CPPAssertThrows(new GameState("1nbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/1NBQKBNR", ColorWhite, "KAkq"), @"Inapplicable castling option for white queenside");
}

- (void)testInitializationWithWhiteKingNotInFirstRankAndValidCastlingOptionsThrows {
    CPPAssertThrows(new GameState("3k4/8/8/8/8/3K4/8/R6R", ColorWhite, "KQ--"), @"White king not in first rank for valid castling options");
}

- (void)testInitializationWithBlackKingNotInEighthRankAndValidCastlingOptionsThrows {
    CPPAssertThrows(new GameState("r6r/3k4/8/8/8/3K4/8/R6R", ColorBlack, "--kq"), @"Black king not in eighth rank for valid castling options");
}

- (void)testInitializationWithWhiteInCheckAndBlackToPlayThrows1 {
	CPPAssertThrows(new GameState("r1bqk2r/pppp1ppp/2n2n2/8/1bBPP3/5N2/PP3PPP/RNBQK2R", ColorBlack), @"Initialization with black to play and white king in check should throw");
}

- (void)testInitializationWithWhiteInCheckAndBlackToPlayThrows2 {
	CPPAssertThrows(new GameState("8/8/4k3/4p3/3K4/8/P7/8", ColorBlack), @"Initialization with black to play and white king in check should throw");
}

- (void)testInitializationWithBlackInCheckAndWhiteToPlayThrows1 {
	CPPAssertThrows(new GameState("r1bqk2r/pppp1Bpp/2n5/8/3P4/1Q3N2/P4PPP/b1B2RK1", ColorWhite), @"Initialization with white to play and black king in check should throw");
}

- (void)testInitializationWithBlackInCheckAndWhiteToPlayThrows2 {
	CPPAssertThrows(new GameState("8/8/4k3/5P2/5K2/8/8/8", ColorWhite), @"Initialization with white to play and black king in check should throw");
}

- (void)testInitializationWithWhiteInCheckMateAndBlackToPlayThrows {
	CPPAssertThrows(new GameState("8/6k1/8/8/8/8/5PPP/1r4K1", ColorBlack), @"Initialization with black to play and white king in check mate should throw");
}

- (void)testInitializationWithBlackInCheckMateAndWhiteToPlayThrows {
	CPPAssertThrows(new GameState("r1bq3r/ppppnQkp/8/4N1Bp/3P4/8/P4PPP/b4RK1", ColorWhite), @"Initialization with white to play and black king in check mat should throw");
}

- (void)testInitializationWithoutWhiteKingThrows {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQ1BNR", ColorWhite, "KQkq"), @"Initialization without white king should throw");
}

- (void)testInitializationWithoutBlackKingThrows {
	CPPAssertThrows(new GameState("rnbq1bnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR", ColorWhite, "KQkq"), @"Initialization without black king should throw");
}

- (void)testInitializationWithMultipleWhiteKingsThrows {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPK/RNBQKBNR", ColorWhite, "KQkq"), @"Initialization with multiple white king should throw");
}

- (void)testInitializationWithMultipleBlackKingsThrows {
	CPPAssertThrows(new GameState("rnbqkbnr/pppp1ppp/k7/4p3/4P3/8/PPPP1PPP/RNBQKBNR", ColorWhite, "KQkq"), @"Initialization with multiple black king should throw");
}

- (void)testInitializationWithAdjacentKingsThrows {
    CPPAssertThrows(new GameState("8/8/8/4K3/3k4/8/8/8", ColorWhite), @"Initialization with Kings on adjacent squares should throw");
}

- (void)testReturnsInsufficientMaterialWithTwoKings {
    GameState g("4K3/8/8/8/8/8/8/4k3");
    XCTAssertFalse(g.hasSufficientMaterial(), @"Two kings are insufficient");
}

- (void)testGameStateReturnsInsufficientMaterialWhiteKnight {
    GameState g("8/8/8/8/8/8/8/K5kN");
    XCTAssertFalse(g.hasSufficientMaterial(), @"Two kings and one white knight is insufficient");
}

- (void)testGameStateReturnsInsufficientMaterialBlackKnight {
    GameState g("8/8/8/8/8/8/8/k5Kn");
    XCTAssertFalse(g.hasSufficientMaterial(), @"Two kings and one black knight is insufficient");
}

- (void)testGameStateReturnsInsufficientMaterialWhiteBishop {
    GameState g("8/8/8/8/8/8/8/K5Bk");
    XCTAssertFalse(g.hasSufficientMaterial(), @"Two kings and one white bishop is insufficient");
}

- (void)testGameStateReturnsInsufficientMaterialBlackBishop {
    GameState g("8/8/8/8/8/8/8/k5bK");
    XCTAssertFalse(g.hasSufficientMaterial(), @"Two kings and one black bishop is insufficient");
}

- (void)testGameStateReturnsSufficientMaterialForOtherPieces {
    GameState g = GameState("7R/8/8/8/8/8/8/K5k1");
    XCTAssertTrue(g.hasSufficientMaterial(), @"Material should be sufficient");

    g = GameState("7r/8/8/8/8/8/8/K5k1");
    XCTAssertTrue(g.hasSufficientMaterial(), @"Material should be sufficient");
    
    g = GameState("7Q/8/8/8/8/8/8/K5k1");
    XCTAssertTrue(g.hasSufficientMaterial(), @"Material should be sufficient");
    
    g = GameState("7q/8/8/8/8/8/8/K5k1");
    XCTAssertTrue(g.hasSufficientMaterial(), @"Material should be sufficient");
    
    g = GameState("8/7P/8/8/8/8/8/K5k1");
    XCTAssertTrue(g.hasSufficientMaterial(), @"Material should be sufficient");

    g = GameState("8/7p/8/8/8/8/8/K5k1");
    XCTAssertTrue(g.hasSufficientMaterial(), @"Material should be sufficient");

}

- (void)testReturnsCorrectFEN1 {
    GameState g("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", ColorWhite, "KQkq");
    XCTAssertTrue(g.getFEN() == "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq -", @"GameState should return correct FEN");
}

- (void)testReturnsCorrectFEN2 {
    GameState g("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", ColorWhite, "----");
    XCTAssertTrue(g.getFEN() == "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w - -", @"GameState should return correct FEN");
}

- (void)testReturnsCorrectFEN3 {
    GameState g("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", ColorBlack, "----");
    XCTAssertTrue(g.getFEN() == "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR b - -", @"GameState should return correct FEN");
}

- (void)testReturnsCorrectFEN4 {
    GameState g("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", ColorBlack, "HAha");
    XCTAssertTrue(g.getFEN() == "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR b KQkq -", @"GameState should return correct FEN");
}

- (void)testReturnsCorrectFEN5Chess960 {
    GameState g("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", ColorBlack, "HAha");
    XCTAssertTrue(g.getFEN(true) == "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR b HAha -", @"GameState should return correct FEN");
}


- (void)testReturnsCorrectFEN6 {
    GameState g("rnbqkbnr/pp1ppppp/8/2p5/4P3/8/PPPP1PPP/RNBQKBNR", ColorWhite, "KQkq", Square("c6"));
    XCTAssertTrue(g.getFEN() == "rnbqkbnr/pp1ppppp/8/2p5/4P3/8/PPPP1PPP/RNBQKBNR w KQkq c6", @"GameState should return correct FEN");
}

- (void)testConvertsCastlingOptionsToChess960Internally {
    GameState g("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", ColorWhite, "KQkq");
    
    XCTAssertEqual(g.getWhiteKingSideCastlingOption(), 'H', @"GameState constructor should internally convert standard castling options to chess960");
    XCTAssertEqual(g.getWhiteQueenSideCastlingOption(), 'A', @"GameState constructor should internally convert standard castling options to chess960");
    XCTAssertEqual(g.getBlackKingSideCastlingOption(), 'h', @"GameState constructor should internally convert standard castling options to chess960");
    XCTAssertEqual(g.getBlackQueenSideCastlingOption(), 'a', @"GameState constructor should internally convert standard castling options to chess960");
}

@end
