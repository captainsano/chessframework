//
//  PositionQuerier_Tests.m
//  ChessFramework
//
//  Created by Santhos Baala RS on 28/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#import <XCTest/XCTest.h>

#import <set>
#import "Square.h"
#import "Position.h"
#import "PositionQuerier.h"

using namespace sfc::cfw;

@interface PositionQuerier_Tests : XCTestCase

@end

@implementation PositionQuerier_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown {
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testInitializingWithNullPositionThrows {
    CPPAssertThrows(PositionQuerier(nullptr), @"Initializing a position querier with null position should throw");
}

- (void)testInitilizingWithValidPositionDoesNotThrow {
    CPPAssertNoThrow(PositionQuerier(std::make_shared<Position>("8/8/8/8/8/8/8/8")), @"Initializing a position querier with valid position should not throw");
}


- (void)testCorrectPieceCountIsReturnedForClearBoard {
	std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(std::make_shared<Position>("8/8/8/8/8/8/8/8"));
	
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceNone) == 64, @"Clear board should indicate all squares are vacant");
	
	// White and black pieces
	for (sfc::cfw::GenericPiece i = sfc::cfw::GenericPiecePawn; i <= sfc::cfw::GenericPieceKnight; i++) {
		XCTAssertTrue(q->pieceCount(sfc::cfw::Piece(i)) == 0, @"White pieces count should be 0");
		XCTAssertTrue(q->pieceCount(sfc::cfw::Piece((1 << 3) | i)) == 0, @"Black pieces count should be 0");
	}
}

- (void)testCorrectPieceCountIsReturnedForSamplePosition1 {
	std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(std::make_shared<Position>("8/8/3K4/4k3/8/8/8/8"));
	
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceNone) == 62, @"Position should indicate corresponding squares count");
	
	// White pieces
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWPawn) == 0, @"White pawn count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWKing) == 1, @"White king count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWQueen) == 0, @"White queen count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWRook) == 0, @"White rook count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWBishop) == 0, @"White bishop count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWKnight) == 0, @"White knight count should be corresponding");
    
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBPawn) == 0, @"Black pawn count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBKing) == 1, @"Black king count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBQueen) == 0, @"Black queen count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBRook) == 0, @"Black rook count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBBishop) == 0, @"Black bishop count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBKnight) == 0, @"Black knight count should be corresponding");
}

- (void)testCorrectPieceCountIsReturnedForSamplePosition2 {
	std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(std::make_shared<Position>("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR"));
	
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceNone) == 32, @"Position should indicate corresponding squares count");
	
	// White pieces
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWPawn) == 8, @"White pawn count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWKing) == 1, @"White king count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWQueen) == 1, @"White queen count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWRook) == 2, @"White rook count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWBishop) == 2, @"White bishop count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceWKnight) == 2, @"White knight count should be corresponding");
	
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBPawn) == 8, @"Black Pawn count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBKing) == 1, @"Black King count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBQueen) == 1, @"Black Queen count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBRook) == 2, @"Black Rook count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBBishop) == 2, @"Black Bishop count should be corresponding");
	XCTAssertTrue(q->pieceCount(sfc::cfw::PieceBKnight) == 2, @"Black Knight count should be corresponding");
}

- (void)testReturns0AttacksFromOnClearBoard {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    for (unsigned short i = 0; i < 64; i++) {
        std::set<Square> attacksFrom = q->attacksFrom(i);
        XCTAssertTrue(attacksFrom.empty(), @"There should not be any attacks from on an empty board");
    }
}

- (void)testReturns0AttacksToOnClearBoard {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    for (unsigned short i = 0; i < 64; i++) {
        std::set<Square> attacksTo = q->attacksTo(i);
        XCTAssertTrue(attacksTo.empty(), @"There should not be any attacks from on an empty board");
    }
}

- (void)testReturnsBlackKingStatusCheck {
	std::shared_ptr<Position> p = std::make_shared<Position>("8/1p1QknN1/1P6/2rPp1p1/pR2Pp1b/P1p2P2/2K5/7R");
	std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
	
	XCTAssertTrue(q->getKingStatus(ColorBlack) == KingStatusCheck, @"Black king should be under check");
	XCTAssertTrue(q->getKingStatus(ColorWhite) == KingStatusNormal, @"White king should be normal");
}

- (void)testReturnsBlackKingStatusCheckMate {
    std::shared_ptr<Position> p = std::make_shared<Position>("R5k1/5ppp/8/8/8/8/8/7K");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    XCTAssertTrue(q->getKingStatus(ColorBlack) == KingStatusCheckMate, @"Black King status should be checkmate");
    XCTAssertTrue(q->getKingStatus(ColorWhite) == KingStatusNormal, @"White King status should be normal");
}

- (void)testReturnsWhiteKingStatusCheckMate {
    std::shared_ptr<Position> p = std::make_shared<Position>("6k1/5ppp/8/8/8/8/3r4/r6K");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    XCTAssertTrue(q->getKingStatus(ColorBlack) == KingStatusNormal, @"Black King status should be normal");
    XCTAssertTrue(q->getKingStatus(ColorWhite) == KingStatusCheckMate, @"White King status should be checkmate");
}

- (void)testReturnsBlackKingStatusNotCheckMate {
    std::shared_ptr<Position> p = std::make_shared<Position>("R5k1/5ppp/2r5/8/8/8/8/7K");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    XCTAssertFalse(q->getKingStatus(ColorBlack) == KingStatusCheckMate, @"Black King status should be checkmate");
    XCTAssertTrue(q->getKingStatus(ColorWhite) == KingStatusNormal, @"White King status should be normal");
}

- (void)testReturnsWhiteKingStatusNotCheckMate {
    std::shared_ptr<Position> p = std::make_shared<Position>("6k1/5ppp/8/8/6Q1/8/3r4/r6K");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    XCTAssertTrue(q->getKingStatus(ColorBlack) == KingStatusNormal, @"Black King status should be normal");
    XCTAssertFalse(q->getKingStatus(ColorWhite) == KingStatusCheckMate, @"White King status should be checkmate");
}

- (void)testReturnsBlackKingStatusStalemate {
    std::shared_ptr<Position> p = std::make_shared<Position>("R4nk1/Q7/8/8/8/8/8/B6K");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    XCTAssertTrue(q->getKingStatus(ColorBlack) == KingStatusStaleMate, @"Black King status should be stalemate");
    XCTAssertTrue(q->getKingStatus(ColorWhite) == KingStatusNormal, @"White King status should be normal");
}

- (void)testReturnsWhiteKingStatusStalemate {
    std::shared_ptr<Position> p = std::make_shared<Position>("6k1/5ppp/8/8/8/8/3r4/r5bK");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    XCTAssertTrue(q->getKingStatus(ColorBlack) == KingStatusNormal, @"Black King status should be stalemate");
    XCTAssertTrue(q->getKingStatus(ColorWhite) == KingStatusStaleMate, @"White King status should be stalemate");
}

- (void)testConsidersEnpassantToAvoidWhiteStalemate {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/4p3/3pPp2/1k1K4/7r/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    XCTAssertTrue(q->getKingStatus(ColorBlack, Square("d6")) == KingStatusNormal, @"Black King status should be normal");
    XCTAssertTrue(q->getKingStatus(ColorWhite, Square("d6")) == KingStatusNormal, @"White King status should be normal, not stalemate");
}

- (void)testConsidersEnpassantToAvoidBlackStalemate {
    std::shared_ptr<Position> p = std::make_shared<Position>("1Q6/8/k7/8/PPp5/2P5/K7/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    XCTAssertTrue(q->getKingStatus(ColorBlack, Square("b3")) == KingStatusNormal, @"Black King status should be normal, not stalemate");
    XCTAssertTrue(q->getKingStatus(ColorWhite, Square("b3")) == KingStatusNormal, @"White King status should be normal");
}

- (void)testConsidersEnpassantToAvoidWhiteCheckmate {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/3p2pp/3Ppp2/5K2/8/5k2/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    XCTAssertTrue(q->getKingStatus(ColorBlack, Square("e6")) == KingStatusNormal, @"Black King status should be normal");
    XCTAssertTrue(q->getKingStatus(ColorWhite, Square("e6")) == KingStatusCheck, @"White King status should be normal, not checkmate");
}

- (void)testConsidersEnpassantToAvoidBlackCheckmate {
    std::shared_ptr<Position> p = std::make_shared<Position>("8/8/R7/7k/5pPP/7K/8/8");
    std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
    
    XCTAssertTrue(q->getKingStatus(ColorBlack, Square("g3")) == KingStatusCheck , @"Black King status should be normal, not checkmate");
    XCTAssertTrue(q->getKingStatus(ColorWhite, Square("g3")) == KingStatusNormal, @"White King status should be normal");
}

- (void)testWhiteKingStatusCheckmate {
	std::shared_ptr<Position> p = std::make_shared<Position>("5rk1/1pp4p/6pP/p2pR3/8/8/P4q2/1R3K2");
	std::shared_ptr<PositionQuerier> q = std::make_shared<PositionQuerier>(p);
	
	XCTAssertTrue(q->getKingStatus(ColorBlack) == KingStatusNormal, @"Black's king status should be normal");
	XCTAssertTrue(q->getKingStatus(ColorWhite) == KingStatusCheckMate, @"White's king status should be checkmate");
}

@end
