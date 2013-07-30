//
//  Position_Tests.m
//  ChessFramework
//
//  Created by Santhosbaala RS on 23/07/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#import <XCTest/XCTest.h>

#import <vector>
#import <memory>
#import "Piece.h"
#import "Square.h"
#import "Position.h"

using namespace sfc::cfw;

@interface Position_Tests : XCTestCase

@end

@implementation Position_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown {
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testInstantiationDoesNotThrow {
	CPPAssertNoThrow(new Position(), @"Default instantiation of position does not throw");
}

- (void)testDefaultInstantiationIsClearBoard {
	std::shared_ptr<Position> p = std::make_shared<Position>();
	XCTAssertTrue(p->getFEN() == "8/8/8/8/8/8/8/8", @"Default instantiation of position represents clear board");
}

- (void)testFENInstatiationDoesNotThrow {
	CPPAssertNoThrow(new Position("8/8/8/8/8/8/8/8"), @"Sample FEN Instantiation of position does not throw");
}

- (void)testInvalidCharactersInFENThrows {
	CPPAssertThrows(new Position("8AKC/dcasf/*)/sdfa9/125/"), @"Invalid characters in FEN throws");
}

- (void)testInvalidFormatFENThrows {
	CPPAssertThrows(new Position("8/8/8/8*8/8/8"), @"Invalid FEN format should throw error");
}

- (void)testInvalidSquareCountFENThrows {
	CPPAssertThrows(new Position("rnbqkbnr/pppppppp/8/8/4P4/8/PPPPPPPP/RNBQKBNR"), @"Invalid FEN format should throw error");
}

- (void)testSampleFENInstantiations {
	std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
	XCTAssertTrue(p->getFEN() == "8/8/8/8/8/8/8/8", @"Test if clear board is being set");
	
	p.reset();
	p = std::make_shared<Position>("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR");
	XCTAssertTrue(p->getFEN() == "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR", @"Test if the position is being set");
	
	p.reset();
	p = std::make_shared<Position>("8/8/3K4/4k3/8/8/8/8");
	XCTAssertTrue(p->getFEN() == "8/8/3K4/4k3/8/8/8/8", @"Test if the position is being set");
	
	p.reset();
	p = std::make_shared<Position>("r1bqk2r/1p1nbp1p/p2ppp2/8/3NPP2/2N2Q2/PPP3PP/R3KB1R");
	XCTAssertTrue(p->getFEN() == "r1bqk2r/1p1nbp1p/p2ppp2/8/3NPP2/2N2Q2/PPP3PP/R3KB1R", @"Test if the position is being set");
}

- (void)testOutOfRangeSubscriptAccessThrows {
	std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
	
	sfc::cfw::Piece aPiece;
	CPPAssertThrows(aPiece = (*p)[65], @"Out of range subscript access should throw");
}

- (void)testEmptyBoardReturnsAllSquaresAsVacant {
	std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
	
	for (unsigned short file = 0; file < 8; file++) {
		for (unsigned short rank = 0; rank < 8; rank++) {
			XCTAssertEquals((*p)[Square(file, rank)], sfc::cfw::PieceNone, @"Empty board should return no piece");
		}
	}
}

- (void)testSampleSubcriptReturnsCorrespondingPieces1 {
	std::shared_ptr<Position> p = std::make_shared<Position>("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR");
	
	XCTAssertTrue((*p)[0] == sfc::cfw::PieceWRook, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[1], sfc::cfw::PieceWKnight, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[2], sfc::cfw::PieceWBishop, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[3], sfc::cfw::PieceWQueen, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[4], sfc::cfw::PieceWKing, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[5], sfc::cfw::PieceWBishop, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[6], sfc::cfw::PieceWKnight, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[7], sfc::cfw::PieceWRook, @"Subscript access should return the corresponding piece type");
	
	// Squares 8-15 should return white pawns.
	for (unsigned short sq = 8; sq < 16; sq++) {
		XCTAssertEquals((*p)[sq], sfc::cfw::PieceWPawn, @"Subscript access should return the corresponding piece type");
	}
	
	// Squares 16-47 should be vacant
	for (unsigned short sq = 16; sq < 48; sq++) {
		XCTAssertEquals((*p)[sq], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	}
	
	// Squares 48-55 should return black pawns.
	for (unsigned short sq = 49; sq < 56; sq++) {
		XCTAssertEquals((*p)[sq], sfc::cfw::PieceBPawn, @"Subscript access should return the corresponding piece type");
	}
	
	XCTAssertEquals((*p)[56], sfc::cfw::PieceBRook, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[57], sfc::cfw::PieceBKnight, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[58], sfc::cfw::PieceBBishop, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[59], sfc::cfw::PieceBQueen, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[60], sfc::cfw::PieceBKing, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[61], sfc::cfw::PieceBBishop, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[62], sfc::cfw::PieceBKnight, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[63], sfc::cfw::PieceBRook, @"Subscript access should return the corresponding piece type");

}

- (void)testSampleSubcriptReturnsCorrespondingPieces2 {
	std::shared_ptr<Position> p = std::make_shared<Position>("8/8/3K4/4k3/8/8/8/8");
	
	// First 4 ranks should be vacant
	for (unsigned short rank = 0; rank < 4; rank++) {
		for (unsigned short file = 0; file < 8; file++) {
			XCTAssertEquals((*p)[Square(file, rank)], sfc::cfw::PieceNone, @"Subscript access should return the corresponding type");
		}
	}
	
	// Last 2 ranks should be vacant
	for (unsigned short rank = 6; rank < 8; rank++) {
		for (unsigned short file = 0; file < 8; file++) {
			XCTAssertEquals((*p)[Square(file, rank)], sfc::cfw::PieceNone, @"Subscript access should return the corresponding type");
		}
	}
	
	// In rank 5, first four squares and last 3 squares should be vacant and 5th square contains black king.
	XCTAssertEquals((*p)[Square("a5")], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square("b5")], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square("c5")], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square("d5")], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square("e5")], sfc::cfw::PieceBKing, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square("f5")], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square("g5")], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square("h5")], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");

	// In rank 6, first 3 squares and last 4 squares should be vacant and 4the square contains white king.
	XCTAssertEquals((*p)[Square("a6")], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square("b6")], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square("c6")], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square("d6")], sfc::cfw::PieceWKing, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square("e6")], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square("f6")], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square("g6")], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
	XCTAssertEquals((*p)[Square("h6")], sfc::cfw::PieceNone, @"Subscript access should return the corresponding piece type");
}

- (void)testClearBoardVacateReturnsCorrectValueOccupyWithWPawn {
	std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceNone);
		p->occupy(i, sfc::cfw::PieceWPawn);
	}
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceWPawn);
	}
}

- (void)testClearBoardVacateReturnsCorrectValueOccupyWithWKing {
	std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceNone);
		p->occupy(i, sfc::cfw::PieceWKing);
	}
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceWKing);
	}
}

- (void)testClearBoardVacateReturnsCorrectValueOccupyWithWQueen {
	std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceNone);
		p->occupy(i, sfc::cfw::PieceWQueen);
	}
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceWQueen);
	}
}

- (void)testClearBoardVacateReturnsCorrectValueOccupyWithWRook {
	std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceNone);
		p->occupy(i, sfc::cfw::PieceWRook);
	}
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceWRook);
	}
}

- (void)testClearBoardVacateReturnsCorrectValueOccupyWithWBishop {
	std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceNone);
		p->occupy(i, sfc::cfw::PieceWBishop);
	}
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceWBishop);
	}
}

- (void)testClearBoardVacateReturnsCorrectValueOccupyWithWKnight {
	std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceNone);
		p->occupy(i, sfc::cfw::PieceWKnight);
	}
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceWKnight);
	}
}

- (void)testClearBoardVacateReturnsCorrectValueOccupyWithBPawn {
	std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceNone);
		p->occupy(i, sfc::cfw::PieceBPawn);
	}
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceBPawn);
	}
}

- (void)testClearBoardVacateReturnsCorrectValueOccupyWithBKing {
	std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceNone);
		p->occupy(i, sfc::cfw::PieceBKing);
	}
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceBKing);
	}
}

- (void)testClearBoardVacateReturnsCorrectValueOccupyWithBQueen {
	std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceNone);
		p->occupy(i, sfc::cfw::PieceBQueen);
	}
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceBQueen);
	}
}

- (void)testClearBoardVacateReturnsCorrectValueOccupyWithBRook {
	std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceNone);
		p->occupy(i, sfc::cfw::PieceBRook);
	}
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceBRook);
	}
}

- (void)testClearBoardVacateReturnsCorrectValueOccupyWithBBishop {
	std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceNone);
		p->occupy(i, sfc::cfw::PieceBBishop);
	}
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceBBishop);
	}
}

- (void)testClearBoardVacateReturnsCorrectValueOccupyWithBKnight {
	std::shared_ptr<Position> p = std::make_shared<Position>("8/8/8/8/8/8/8/8");
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceNone);
		p->occupy(i, sfc::cfw::PieceBKnight);
	}
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceBKnight);
	}
}

- (void)testOccupiedBoardCompleteVacateReturnsClearBoard {
	std::shared_ptr<Position> p = std::make_shared<Position>("rnbqkbnr/pppppppp/pppppppp/pppppppp/pppppppp/pppppppp/PPPPPPPP/RNBQKBNR");
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertFalse((*p)[i] == sfc::cfw::PieceNone, @"All squares should be occupied");
		p->vacate(i);
	}
	
	for (unsigned short i = 0; i < 64; i++) {
		XCTAssertTrue((*p)[i] == sfc::cfw::PieceNone, @"All squares should be empty");
	}
}

@end
