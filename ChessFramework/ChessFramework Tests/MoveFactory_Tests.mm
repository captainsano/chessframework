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

- (void)testNextGameStateCastlingOptionsAdjustedWhenWhiteRookCaptured1 {
	std::shared_ptr<GameState> g = std::make_shared<GameState>("3k1nQ1/pb1q2b1/1N6/1p2P3/2pP1P2/6P1/PP6/R3K2R", ColorBlack, "KQ--");
	std::shared_ptr<Move> Bxh1 = MoveFactory::legalMove(g, Square("b7"), Square("h1"));
	
	XCTAssertTrue(Bxh1->getGameStateAfterMove()->getPosition()->getFEN() == "3k1nQ1/p2q2b1/1N6/1p2P3/2pP1P2/6P1/PP6/R3K2b", @"FEN should be appropriately updated");
	XCTAssertTrue(Bxh1->getGameStateAfterMove()->getWhiteKingSideCastlingOption() == '-', @"King side castling option should have been removed");
	XCTAssertTrue(Bxh1->getGameStateAfterMove()->getWhiteQueenSideCastlingOption() == 'A', @"Queen side castling option should not be removed");
}

- (void)testWhiteQueenSideCastlingIsLegal1 {
	std::shared_ptr<GameState> g = std::make_shared<GameState>("r2qk1r1/pb1p1p1p/1p1Pp2p/8/2PQ4/8/PP3PPP/R3KB1R", ColorWhite, "KQ-q");
	
	XCTAssertTrue(MoveFactory::legalMove(g, Square("e1"), Square("a1")), @"White queenside castling should be allowed");
}

- (void)testBlackQueenSideCastlingIsLegal1 {
	std::shared_ptr<GameState> g = std::make_shared<GameState>("r3kb1r/ppqn1ppp/2p1pnb1/3p4/2PP3N/1QN1PP2/PP1B2PP/R3KB1R", ColorBlack, "KQkq");
	
	XCTAssertTrue(MoveFactory::legalMove(g, Square("e8"), Square("a8")), @"Black queenside castling should be allowed");
}

- (void)testBlackKingSideCastlingIsIllegal1 {
	std::shared_ptr<GameState> g = std::make_shared<GameState>("r3kb1r/1bppqp2/1p2n3/pP1pP3/P2P2Q1/2PB2B1/5PP1/R3NRK1", ColorBlack, "--kq");
	
	XCTAssertFalse(MoveFactory::legalMove(g, Square("e8"), Square("h8")), @"Black kingside castling should not be allowed");
}

- (void)testBlackCastlingQueensideIsIllegal1 {
	std::shared_ptr<GameState> g = std::make_shared<GameState>("rn2kbnr/pp1qpppp/3p4/2p5/4P3/5N2/PPPP1PPP/RNBQ1RK1", ColorBlack, "--kq");
	
	XCTAssertFalse(MoveFactory::legalMove(g, Square("e8"), Square("a8")), @"Black queenside castlign should not be allowed");
}

- (void)testPawnPromotionToPseudoEnpassantTargetDoesNotTreatAsEnpassant {
	std::shared_ptr<GameState> g = std::make_shared<GameState>("7R/8/8/8/k1K3P1/8/p7/1r6", ColorBlack);
	
	XCTAssertTrue(MoveFactory::legalMove(g, Square("a4"), Square("a5")), @"Move should be legal");
}

- (void)testBlackKingIsUnderCheckAfterWhiteDoublePawnPush {
	std::shared_ptr<GameState> g = std::make_shared<GameState>("8/2rb3p/R5p1/4kn2/3Np3/1B2P2P/5PK1/8", ColorWhite);
	
	std::shared_ptr<Move> f2f4 = MoveFactory::legalMove(g, Square("f2"), Square("f4"));
	
	XCTAssertTrue(f2f4, @"Move should be considered legal");
	XCTAssertTrue(f2f4->getGameStateAfterMove()->getBlackKingStatus() == KingStatusCheck, @"Black's king status after the move should be under check");
	XCTAssertTrue(f2f4->getGameStateAfterMove()->getWhiteKingStatus() == KingStatusNormal, @"White's king status after the move should be normal");
}

// Rest of the stuff is checked by the legal move generator, compared with legal moves from stockfish engine.

@end
