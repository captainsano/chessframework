//
//  MoveFactory_Tests.m
//  ChessFramework
//
//  Created by Santhos Baala RS on 31/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "Move.h"
#import "GameState.h"
#import "MoveFactory.h"

using namespace sfc::cfw;

@interface MoveFactory_Tests : XCTestCase

@end

@implementation MoveFactory_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown {
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testVacantFromSquareReturnsIllegalMove {
	std::shared_ptr<GameState> g = std::make_shared<GameState>("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR");

	for (unsigned short i = 16; i < 48; i++) {
		XCTAssertFalse(MoveFactory::legalMove(g, i, 50), @"Move is illegal if fromSquare is vacant");
	}
}

- (void)testToSquareOccupiedBySameColorPieceReturnsIllegalMove {
	std::shared_ptr<GameState> g = std::make_shared<GameState>("rnbqkbnr/pppppppp/8/8/8/5N2/PPPPPPPP/RNBQKB1R");
	
	XCTAssertFalse(MoveFactory::legalMove(g, Square("f2"), Square("f3")), @"Move is illegal if toSquare has same color piece");
}

- (void)testKingHasEscapeSquareF8 {
	std::shared_ptr<GameState> g = std::make_shared<GameState>("r1bqk2r/p1n1ppbp/1pp2Np1/2p1P3/8/5N2/PPPP1PPP/R1BQR1K1", ColorBlack, "--kq");
	
	XCTAssertTrue(MoveFactory::legalMove(g, Square("e8"), Square("f8")), @"King move should be legal");
}

- (void)testEnpassantVacatesCorrespondingBlackPawn {
	std::shared_ptr<GameState> g = std::make_shared<GameState>("r4k1r/p1nqp1b1/1pp1b2p/2p1Ppp1/2P5/1P1P1NN1/P3QPPP/R1B1R1K1", ColorWhite, "----", Square("f6"));
	
	std::shared_ptr<Move> exf6 = MoveFactory::legalMove(g, Square("e5"), Square("f6"));
	
	XCTAssertTrue(exf6->getGameStateAfterMove()->getPosition()->getFEN() == "r4k1r/p1nqp1b1/1pp1bP1p/2p3p1/2P5/1P1P1NN1/P3QPPP/R1B1R1K1", @"Corresponding opponent's pawn square should be vacated after enpassant");
}

- (void)testEnpassantVacatesCorrespondingWhitePawn {
	std::shared_ptr<GameState> g = std::make_shared<GameState>("8/8/4k3/8/3Pp3/8/8/4K3", ColorBlack, "----", Square("d3"));
	
	std::shared_ptr<Move> exf6 = MoveFactory::legalMove(g, Square("e4"), Square("d3"));
	
	XCTAssertTrue(exf6->getGameStateAfterMove()->getPosition()->getFEN() == "8/8/4k3/8/8/3p4/8/4K3", @"Corresponding opponent's pawn square should be vacated after enpassant");
}

// Rest of the stuff is checked by the legal move generator, compared with legal moves from stockfish engine.

@end
