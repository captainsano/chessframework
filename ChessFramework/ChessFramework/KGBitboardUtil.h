//
//  KGBitboardUtil.h
//  KindergartenBitboard
//
/// @author Santhos Baala RS
/// @copyright (c) 2013 64cloud. All rights reserved.
/// @version 0.1
//

#ifndef __KindergartenBitboard__KGBitboardUtil__
#define __KindergartenBitboard__KGBitboardUtil__

#include <string>

namespace KGBitboardUtil {
	
	/// Refer Kindergarten bitboard at http://chessprogramming.wikispaces.com/Kindergarten+Bitboards
	using U64 = unsigned long long;
    
	static const U64 diagonalMask[64] {
		0x8040201008040201 /*  0 */, 0x0080402010080402 /*  1 */, 0x0000804020100804 /*  2 */, 0x0000008040201008 /*  3 */,
		0x0000000080402010 /*  4 */, 0x0000000000804020 /*  5 */, 0x0000000000008040 /*  6 */, 0x0000000000000080 /*  7 */,
		0x4020100804020100 /*  8 */, 0x8040201008040201 /*  9 */, 0x0080402010080402 /* 10 */, 0x0000804020100804 /* 11 */,
		0x0000008040201008 /* 12 */, 0x0000000080402010 /* 13 */, 0x0000000000804020 /* 14 */, 0x0000000000008040 /* 15 */,
		0x2010080402010000 /* 16 */, 0x4020100804020100 /* 17 */, 0x8040201008040201 /* 18 */, 0x0080402010080402 /* 19 */,
		0x0000804020100804 /* 20 */, 0x0000008040201008 /* 21 */, 0x0000000080402010 /* 22 */, 0x0000000000804020 /* 23 */,
		0x1008040201000000 /* 24 */, 0x2010080402010000 /* 25 */, 0x4020100804020100 /* 26 */, 0x8040201008040201 /* 27 */,
		0x0080402010080402 /* 28 */, 0x0000804020100804 /* 29 */, 0x0000008040201008 /* 30 */, 0x0000000080402010 /* 31 */,
		0x0804020100000000 /* 32 */, 0x1008040201000000 /* 33 */, 0x2010080402010000 /* 34 */, 0x4020100804020100 /* 35 */,
		0x8040201008040201 /* 36 */, 0x0080402010080402 /* 37 */, 0x0000804020100804 /* 38 */, 0x0000008040201008 /* 39 */,
		0x0402010000000000 /* 40 */, 0x0804020100000000 /* 41 */, 0x1008040201000000 /* 42 */, 0x2010080402010000 /* 43 */,
		0x4020100804020100 /* 44 */, 0x8040201008040201 /* 45 */, 0x0080402010080402 /* 46 */, 0x0000804020100804 /* 47 */,
		0x0201000000000000 /* 48 */, 0x0402010000000000 /* 49 */, 0x0804020100000000 /* 50 */, 0x1008040201000000 /* 51 */,
		0x2010080402010000 /* 52 */, 0x4020100804020100 /* 53 */, 0x8040201008040201 /* 54 */, 0x0080402010080402 /* 55 */,
		0x0100000000000000 /* 56 */, 0x0201000000000000 /* 57 */, 0x0402010000000000 /* 58 */, 0x0804020100000000 /* 59 */,
		0x1008040201000000 /* 60 */, 0x2010080402010000 /* 61 */, 0x4020100804020100 /* 62 */, 0x8040201008040201 /* 63 */,
	};
	static const U64 antiDiagonalMask[64] {
		0x0000000000000001 /*  0 */, 0x0000000000000102 /*  1 */, 0x0000000000010204 /*  2 */, 0x0000000001020408 /*  3 */,
		0x0000000102040810 /*  4 */, 0x0000010204081020 /*  5 */, 0x0001020408102040 /*  6 */, 0x0102040810204080 /*  7 */,
		0x0000000000000102 /*  8 */, 0x0000000000010204 /*  9 */, 0x0000000001020408 /* 10 */, 0x0000000102040810 /* 11 */,
		0x0000010204081020 /* 12 */, 0x0001020408102040 /* 13 */, 0x0102040810204080 /* 14 */, 0x0204081020408000 /* 15 */,
		0x0000000000010204 /* 16 */, 0x0000000001020408 /* 17 */, 0x0000000102040810 /* 18 */, 0x0000010204081020 /* 19 */,
		0x0001020408102040 /* 20 */, 0x0102040810204080 /* 21 */, 0x0204081020408000 /* 22 */, 0x0408102040800000 /* 23 */,
		0x0000000001020408 /* 24 */, 0x0000000102040810 /* 25 */, 0x0000010204081020 /* 26 */, 0x0001020408102040 /* 27 */,
		0x0102040810204080 /* 28 */, 0x0204081020408000 /* 29 */, 0x0408102040800000 /* 30 */, 0x0810204080000000 /* 31 */,
		0x0000000102040810 /* 32 */, 0x0000010204081020 /* 33 */, 0x0001020408102040 /* 34 */, 0x0102040810204080 /* 35 */,
		0x0204081020408000 /* 36 */, 0x0408102040800000 /* 37 */, 0x0810204080000000 /* 38 */, 0x1020408000000000 /* 39 */,
		0x0000010204081020 /* 40 */, 0x0001020408102040 /* 41 */, 0x0102040810204080 /* 42 */, 0x0204081020408000 /* 43 */,
		0x0408102040800000 /* 44 */, 0x0810204080000000 /* 45 */, 0x1020408000000000 /* 46 */, 0x2040800000000000 /* 47 */,
		0x0001020408102040 /* 48 */, 0x0102040810204080 /* 49 */, 0x0204081020408000 /* 50 */, 0x0408102040800000 /* 51 */,
		0x0810204080000000 /* 52 */, 0x1020408000000000 /* 53 */, 0x2040800000000000 /* 54 */, 0x4080000000000000 /* 55 */,
		0x0102040810204080 /* 56 */, 0x0204081020408000 /* 57 */, 0x0408102040800000 /* 58 */, 0x0810204080000000 /* 59 */,
		0x1020408000000000 /* 60 */, 0x2040800000000000 /* 61 */, 0x4080000000000000 /* 62 */, 0x8000000000000000 /* 63 */,
	};
	static const U64 rankMask[8] {
		0x00000000000000ff, 0x000000000000ff00, 0x0000000000ff0000, 0x00000000ff000000,
		0x000000ff00000000, 0x0000ff0000000000, 0x00ff000000000000, 0xff00000000000000,
	};
	static const U64 fileMask[8] {
		0x0101010101010101, 0x0202020202020202, 0x0404040404040404, 0x0808080808080808,
		0x1010101010101010, 0x2020202020202020, 0x4040404040404040, 0x8080808080808080,
	};
	static const unsigned short firstRankAttacks[8][64] {
		// [h]gfedcb[a]
		// Slider is on a-file
		{
			0xfe /* 000000 */, 0x02 /* 000001 */, 0x06 /* 000010 */, 0x02 /* 000011 */,
			0x0e /* 000100 */, 0x02 /* 000101 */, 0x06 /* 000110 */, 0x02 /* 000111 */,
			0x1e /* 001000 */, 0x02 /* 001001 */, 0x06 /* 001010 */, 0x02 /* 001011 */,
			0x0e /* 001100 */, 0x02 /* 001101 */, 0x06 /* 001110 */, 0x02 /* 001111 */,
			0x3e /* 010000 */, 0x02 /* 010001 */, 0x06 /* 010010 */, 0x02 /* 010011 */,
			0x0e /* 010100 */, 0x02 /* 010101 */, 0x06 /* 010110 */, 0x02 /* 010111 */,
			0x1e /* 011000 */, 0x02 /* 011001 */, 0x06 /* 011010 */, 0x02 /* 011011 */,
			0x0e /* 011100 */, 0x02 /* 011101 */, 0x06 /* 011110 */, 0x02 /* 011111 */,
			0x7e /* 100000 */, 0x02 /* 100001 */, 0x06 /* 100010 */, 0x02 /* 100011 */,
			0x0e /* 100100 */, 0x02 /* 100101 */, 0x06 /* 100110 */, 0x02 /* 100111 */,
			0x1e /* 101000 */, 0x02 /* 101001 */, 0x06 /* 101010 */, 0x02 /* 101011 */,
			0x0e /* 101100 */, 0x02 /* 101101 */, 0x06 /* 101110 */, 0x02 /* 101111 */,
			0x3e /* 110000 */, 0x02 /* 110001 */, 0x06 /* 110010 */, 0x02 /* 110011 */,
			0x0e /* 110100 */, 0x02 /* 110101 */, 0x06 /* 110110 */, 0x02 /* 110111 */,
			0x1e /* 111000 */, 0x02 /* 111001 */, 0x06 /* 111010 */, 0x02 /* 111011 */,
			0x0e /* 111100 */, 0x02 /* 111101 */, 0x06 /* 111110 */, 0x02 /* 111111 */,
		},
		// Slider is on b-file
		{
			0xfd /* 000000 */, 0xfd /* 000001 */, 0x05 /* 000010 */, 0x05 /* 000011 */,
			0x0d /* 000100 */, 0x0d /* 000101 */, 0x05 /* 000110 */, 0x05 /* 000111 */,
			0x1d /* 001000 */, 0x1d /* 001001 */, 0x05 /* 001010 */, 0x05 /* 001011 */,
			0x0d /* 001100 */, 0x0d /* 001101 */, 0x05 /* 001110 */, 0x05 /* 001111 */,
			0x3d /* 010000 */, 0x3d /* 010001 */, 0x05 /* 010010 */, 0x05 /* 010011 */,
			0x0d /* 010100 */, 0x0d /* 010101 */, 0x05 /* 010110 */, 0x05 /* 010111 */,
			0x1d /* 011000 */, 0x1d /* 011001 */, 0x05 /* 011010 */, 0x05 /* 011011 */,
			0x0d /* 011100 */, 0x0d /* 011101 */, 0x05 /* 011110 */, 0x05 /* 011111 */,
			0x7d /* 100000 */, 0x7d /* 100001 */, 0x05 /* 100010 */, 0x05 /* 100011 */,
			0x0d /* 100100 */, 0x0d /* 100101 */, 0x05 /* 100110 */, 0x05 /* 100111 */,
			0x1d /* 101000 */, 0x1d /* 101001 */, 0x05 /* 101010 */, 0x05 /* 101011 */,
			0x0d /* 101100 */, 0x0d /* 101101 */, 0x05 /* 101110 */, 0x05 /* 101111 */,
			0x3d /* 110000 */, 0x3d /* 110001 */, 0x05 /* 110010 */, 0x05 /* 110011 */,
			0x0d /* 110100 */, 0x0d /* 110101 */, 0x05 /* 110110 */, 0x05 /* 110111 */,
			0x1d /* 111000 */, 0x1d /* 111001 */, 0x05 /* 111010 */, 0x05 /* 111011 */,
			0x0d /* 111100 */, 0x0d /* 111101 */, 0x05 /* 111110 */, 0x05 /* 111111 */,
		},
		// Slider is on c-file
		{
			0xfb /* 000000 */, 0xfa /* 000001 */, 0xfb /* 000010 */, 0xfa /* 000011 */,
			0x0b /* 000100 */, 0x0a /* 000101 */, 0x0b /* 000110 */, 0x0a /* 000111 */,
			0x1b /* 001000 */, 0x1a /* 001001 */, 0x1b /* 001010 */, 0x1a /* 001011 */,
			0x0b /* 001100 */, 0x0a /* 001101 */, 0x0b /* 001110 */, 0x0a /* 001111 */,
			0x3b /* 010000 */, 0x3a /* 010001 */, 0x3b /* 010010 */, 0x3a /* 010011 */,
			0x0b /* 010100 */, 0x0a /* 010101 */, 0x0b /* 010110 */, 0x0a /* 010111 */,
			0x1b /* 011000 */, 0x1a /* 011001 */, 0x1b /* 011010 */, 0x1a /* 011011 */,
			0x0b /* 011100 */, 0x0a /* 011101 */, 0x0b /* 011110 */, 0x0a /* 011111 */,
			0x7b /* 100000 */, 0x7a /* 100001 */, 0x7b /* 100010 */, 0x7a /* 100011 */,
			0x0b /* 100100 */, 0x0a /* 100101 */, 0x0b /* 100110 */, 0x0a /* 100111 */,
			0x1b /* 101000 */, 0x1a /* 101001 */, 0x1b /* 101010 */, 0x1a /* 101011 */,
			0x0b /* 101100 */, 0x0a /* 101101 */, 0x0b /* 101110 */, 0x0a /* 101111 */,
			0x3b /* 110000 */, 0x3a /* 110001 */, 0x3b /* 110010 */, 0x3a /* 110011 */,
			0x0b /* 110100 */, 0x0a /* 110101 */, 0x0b /* 110110 */, 0x0a /* 110111 */,
			0x1b /* 111000 */, 0x1a /* 111001 */, 0x1b /* 111010 */, 0x1a /* 111011 */,
			0x0b /* 111100 */, 0x0a /* 111101 */, 0x0b /* 111110 */, 0x0a /* 111111 */,
		},
		// Slider is on d-file
		{
			0xf7 /* 000000 */, 0xf6 /* 000001 */, 0xf4 /* 000010 */, 0xf4 /* 000011 */,
			0xf7 /* 000100 */, 0xf6 /* 000101 */, 0xf4 /* 000110 */, 0xf4 /* 000111 */,
			0x17 /* 001000 */, 0x16 /* 001001 */, 0x14 /* 001010 */, 0x14 /* 001011 */,
			0x17 /* 001100 */, 0x16 /* 001101 */, 0x14 /* 001110 */, 0x14 /* 001111 */,
			0x37 /* 010000 */, 0x36 /* 010001 */, 0x34 /* 010010 */, 0x34 /* 010011 */,
			0x37 /* 010100 */, 0x36 /* 010101 */, 0x34 /* 010110 */, 0x34 /* 010111 */,
			0x17 /* 011000 */, 0x16 /* 011001 */, 0x14 /* 011010 */, 0x14 /* 011011 */,
			0x17 /* 011100 */, 0x16 /* 011101 */, 0x14 /* 011110 */, 0x14 /* 011111 */,
			0x77 /* 100000 */, 0x76 /* 100001 */, 0x74 /* 100010 */, 0x74 /* 100011 */,
			0x77 /* 100100 */, 0x76 /* 100101 */, 0x74 /* 100110 */, 0x74 /* 100111 */,
			0x17 /* 101000 */, 0x16 /* 101001 */, 0x14 /* 101010 */, 0x14 /* 101011 */,
			0x17 /* 101100 */, 0x16 /* 101101 */, 0x14 /* 101110 */, 0x14 /* 101111 */,
			0x37 /* 110000 */, 0x36 /* 110001 */, 0x34 /* 110010 */, 0x34 /* 110011 */,
			0x37 /* 110100 */, 0x36 /* 110101 */, 0x34 /* 110110 */, 0x34 /* 110111 */,
			0x17 /* 111000 */, 0x16 /* 111001 */, 0x14 /* 111010 */, 0x14 /* 111011 */,
			0x17 /* 111100 */, 0x16 /* 111101 */, 0x14 /* 111110 */, 0x14 /* 111111 */,
		},
		// Slider is on e-file
		{
			0xef /* 000000 */, 0xee /* 000001 */, 0xec /* 000010 */, 0xec /* 000011 */,
			0xe8 /* 000100 */, 0xe8 /* 000101 */, 0xe8 /* 000110 */, 0xe8 /* 000111 */,
			0xef /* 001000 */, 0xee /* 001001 */, 0xec /* 001010 */, 0xec /* 001011 */,
			0xe8 /* 001100 */, 0xe8 /* 001101 */, 0xe8 /* 001110 */, 0xe8 /* 001111 */,
			0x2f /* 010000 */, 0x2e /* 010001 */, 0x2c /* 010010 */, 0x2c /* 010011 */,
			0x28 /* 010100 */, 0x28 /* 010101 */, 0x28 /* 010110 */, 0x28 /* 010111 */,
			0x2f /* 011000 */, 0x2e /* 011001 */, 0x2c /* 011010 */, 0x2c /* 011011 */,
			0x28 /* 011100 */, 0x28 /* 011101 */, 0x28 /* 011110 */, 0x28 /* 011111 */,
			0x6f /* 100000 */, 0x6e /* 100001 */, 0x6c /* 100010 */, 0x6c /* 100011 */,
			0x68 /* 100100 */, 0x68 /* 100101 */, 0x68 /* 100110 */, 0x68 /* 100111 */,
			0x6f /* 101000 */, 0x6e /* 101001 */, 0x6c /* 101010 */, 0x6c /* 101011 */,
			0x68 /* 101100 */, 0x68 /* 101101 */, 0x68 /* 101110 */, 0x68 /* 101111 */,
			0x2f /* 110000 */, 0x2e /* 110001 */, 0x2c /* 110010 */, 0x2c /* 110011 */,
			0x28 /* 110100 */, 0x28 /* 110101 */, 0x28 /* 110110 */, 0x28 /* 110111 */,
			0x2f /* 111000 */, 0x2e /* 111001 */, 0x2c /* 111010 */, 0x2c /* 111011 */,
			0x28 /* 111100 */, 0x28 /* 111101 */, 0x28 /* 111110 */, 0x28 /* 111111 */,
            
		},
		// Slider is on f-file
		{
			0xdf /* 000000 */, 0xde /* 000001 */, 0xdc /* 000010 */, 0xdc /* 000011 */,
			0xd8 /* 000100 */, 0xd8 /* 000101 */, 0xd8 /* 000110 */, 0xd8 /* 000111 */,
			0xd0 /* 001000 */, 0xd0 /* 001001 */, 0xd0 /* 001010 */, 0xd0 /* 001011 */,
			0xd0 /* 001100 */, 0xd0 /* 001101 */, 0xd0 /* 001110 */, 0xd0 /* 001111 */,
			0xdf /* 010000 */, 0xde /* 010001 */, 0xdc /* 010010 */, 0xdc /* 010011 */,
			0xd8 /* 010100 */, 0xd8 /* 010101 */, 0xd8 /* 010110 */, 0xd8 /* 010111 */,
			0xd0 /* 011000 */, 0xd0 /* 011001 */, 0xd0 /* 011010 */, 0xd0 /* 011011 */,
			0xd0 /* 011100 */, 0xd0 /* 011101 */, 0xd0 /* 011110 */, 0xd0 /* 011111 */,
			0x5f /* 100000 */, 0x5e /* 100001 */, 0x5c /* 100010 */, 0x5c /* 100011 */,
			0x58 /* 100100 */, 0x58 /* 100101 */, 0x58 /* 100110 */, 0x58 /* 100111 */,
			0x50 /* 101000 */, 0x50 /* 101001 */, 0x50 /* 101010 */, 0x50 /* 101011 */,
			0x50 /* 101100 */, 0x50 /* 101101 */, 0x50 /* 101110 */, 0x50 /* 101111 */,
			0x5f /* 110000 */, 0x5e /* 110001 */, 0x5c /* 110010 */, 0x5c /* 110011 */,
			0x58 /* 110100 */, 0x58 /* 110101 */, 0x58 /* 110110 */, 0x58 /* 110111 */,
			0x50 /* 111000 */, 0x50 /* 111001 */, 0x50 /* 111010 */, 0x50 /* 111011 */,
			0x50 /* 111100 */, 0x50 /* 111101 */, 0x50 /* 111110 */, 0x50 /* 111111 */,
		},
		// Slider is on g-file
		{
			0xbf /* 000000 */, 0xbe /* 000001 */, 0xbc /* 000010 */, 0xbc /* 000011 */,
			0xb8 /* 000100 */, 0xb8 /* 000101 */, 0xb8 /* 000110 */, 0xb8 /* 000111 */,
			0xb0 /* 001000 */, 0xb0 /* 001001 */, 0xb0 /* 001010 */, 0xb0 /* 001011 */,
			0xb0 /* 001100 */, 0xb0 /* 001101 */, 0xb0 /* 001110 */, 0xb0 /* 001111 */,
			0xa0 /* 010000 */, 0xa0 /* 010001 */, 0xa0 /* 010010 */, 0xa0 /* 010011 */,
			0xa0 /* 010100 */, 0xa0 /* 010101 */, 0xa0 /* 010110 */, 0xa0 /* 010111 */,
			0xa0 /* 011000 */, 0xa0 /* 011001 */, 0xa0 /* 011010 */, 0xa0 /* 011011 */,
			0xa0 /* 011100 */, 0xa0 /* 011101 */, 0xa0 /* 011110 */, 0xa0 /* 011111 */,
			0xbf /* 100000 */, 0xbe /* 100001 */, 0xbc /* 100010 */, 0xbc /* 100011 */,
			0xb8 /* 100100 */, 0xb8 /* 100101 */, 0xb8 /* 100110 */, 0xb8 /* 100111 */,
			0xb0 /* 101000 */, 0xb0 /* 101001 */, 0xb0 /* 101010 */, 0xb0 /* 101011 */,
			0xb0 /* 101100 */, 0xb0 /* 101101 */, 0xb0 /* 101110 */, 0xb0 /* 101111 */,
			0xa0 /* 110000 */, 0xa0 /* 110001 */, 0xa0 /* 110010 */, 0xa0 /* 110011 */,
			0xa0 /* 110100 */, 0xa0 /* 110101 */, 0xa0 /* 110110 */, 0xa0 /* 110111 */,
			0xa0 /* 111000 */, 0xa0 /* 111001 */, 0xa0 /* 111010 */, 0xa0 /* 111011 */,
			0xa0 /* 111100 */, 0xa0 /* 111101 */, 0xa0 /* 111110 */, 0xa0 /* 111111 */,
		},
		// Slider is on h-file
		{
			0x7f /* 000000 */, 0x7e /* 000001 */, 0x7c /* 000010 */, 0x7c /* 000011 */,
			0x78 /* 000100 */, 0x78 /* 000101 */, 0x78 /* 000110 */, 0x78 /* 000111 */,
			0x70 /* 001000 */, 0x70 /* 001001 */, 0x70 /* 001010 */, 0x70 /* 001011 */,
			0x70 /* 001100 */, 0x70 /* 001101 */, 0x70 /* 001110 */, 0x70 /* 001111 */,
			0x60 /* 010000 */, 0x60 /* 010001 */, 0x60 /* 010010 */, 0x60 /* 010011 */,
			0x60 /* 010100 */, 0x60 /* 010101 */, 0x60 /* 010110 */, 0x60 /* 010111 */,
			0x60 /* 011000 */, 0x60 /* 011001 */, 0x60 /* 011010 */, 0x60 /* 011011 */,
			0x60 /* 011100 */, 0x60 /* 011101 */, 0x60 /* 011110 */, 0x60 /* 011111 */,
			0x40 /* 100000 */, 0x40 /* 100001 */, 0x40 /* 100010 */, 0x40 /* 100011 */,
			0x40 /* 100100 */, 0x40 /* 100101 */, 0x40 /* 100110 */, 0x40 /* 100111 */,
			0x40 /* 101000 */, 0x40 /* 101001 */, 0x40 /* 101010 */, 0x40 /* 101011 */,
			0x40 /* 101100 */, 0x40 /* 101101 */, 0x40 /* 101110 */, 0x40 /* 101111 */,
			0x40 /* 110000 */, 0x40 /* 110001 */, 0x40 /* 110010 */, 0x40 /* 110011 */,
			0x40 /* 110100 */, 0x40 /* 110101 */, 0x40 /* 110110 */, 0x40 /* 110111 */,
			0x40 /* 111000 */, 0x40 /* 111001 */, 0x40 /* 111010 */, 0x40 /* 111011 */,
			0x40 /* 111100 */, 0x40 /* 111101 */, 0x40 /* 111110 */, 0x40 /* 111111 */,
		}
	};
    static const U64 allKnightAttacks[64] {
        0x0000000000020400, 0x0000000000050800, 0x00000000000a1100, 0x0000000000142200,
        0x0000000000284400, 0x0000000000508800, 0x0000000000a01000, 0x0000000000402000,
		0x0000000002040004, 0x0000000005080008, 0x000000000a110011, 0x0000000014220022,
        0x0000000028440044, 0x0000000050880088, 0x00000000a0100010, 0x0000000040200020,
		0x0000000204000402, 0x0000000508000805, 0x0000000a1100110a, 0x0000001422002214,
        0x0000002844004428, 0x0000005088008850, 0x000000a0100010a0, 0x0000004020002040,
		0x0000020400040200, 0x0000050800080500, 0x00000a1100110a00, 0x0000142200221400,
        0x0000284400442800, 0x0000508800885000, 0x0000a0100010a000, 0x0000402000204000,
		0x0002040004020000, 0x0005080008050000, 0x000a1100110a0000, 0x0014220022140000,
        0x0028440044280000, 0x0050880088500000, 0x00a0100010a00000, 0x0040200020400000,
		0x0204000402000000, 0x0508000805000000, 0x0a1100110a000000, 0x1422002214000000,
        0x2844004428000000, 0x5088008850000000, 0xa0100010a0000000, 0x4020002040000000,
		0x0400040200000000, 0x0800080500000000, 0x1100110a00000000, 0x2200221400000000,
        0x4400442800000000, 0x8800885000000000, 0x100010a000000000, 0x2000204000000000,
		0x0004020000000000, 0x0008050000000000, 0x00110a0000000000, 0x0022140000000000,
        0x0044280000000000, 0x0088500000000000, 0x0010a00000000000, 0x0020400000000000,
    };
    static const U64 allPawnAttacks[2][64] {
		// White Pawn
        {
            0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,
            0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,
            0x0000000001030000, 0x0000000002070000, 0x00000000040e0000, 0x00000000081c0000,
            0x0000000010380000, 0x0000000020700000, 0x0000000040e00000, 0x0000000080c00000,
            0x0000000003000000, 0x0000000007000000, 0x000000000e000000, 0x000000001c000000,
            0x0000000038000000, 0x0000000070000000, 0x00000000e0000000, 0x00000000c0000000,
            0x0000000300000000, 0x0000000700000000, 0x0000000e00000000, 0x0000001c00000000,
            0x0000003800000000, 0x0000007000000000, 0x000000e000000000, 0x000000c000000000,
            0x0000030000000000, 0x0000070000000000, 0x00000e0000000000, 0x00001c0000000000,
            0x0000380000000000, 0x0000700000000000, 0x0000e00000000000, 0x0000c00000000000,
            0x0003000000000000, 0x0007000000000000, 0x000e000000000000, 0x001c000000000000,
            0x0038000000000000, 0x0070000000000000, 0x00e0000000000000, 0x00c0000000000000,
            0x0300000000000000, 0x0700000000000000, 0x0e00000000000000, 0x1c00000000000000,
            0x3800000000000000, 0x7000000000000000, 0xe000000000000000, 0xc000000000000000,
            0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,
            0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,
		},
        // Black Pawn
        {
            0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,
            0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,
            0x0000000000000003, 0x0000000000000007, 0x000000000000000e, 0x000000000000001c,
            0x0000000000000038, 0x0000000000000070, 0x00000000000000e0, 0x00000000000000c0,
            0x0000000000000300, 0x0000000000000700, 0x0000000000000e00, 0x0000000000001c00,
            0x0000000000003800, 0x0000000000007000, 0x000000000000e000, 0x000000000000c000,
            0x0000000000030000, 0x0000000000070000, 0x00000000000e0000, 0x00000000001c0000,
            0x0000000000380000, 0x0000000000700000, 0x0000000000e00000, 0x0000000000c00000,
            0x0000000003000000, 0x0000000007000000, 0x000000000e000000, 0x000000001c000000,
            0x0000000038000000, 0x0000000070000000, 0x00000000e0000000, 0x00000000c0000000,
            0x0000000300000000, 0x0000000700000000, 0x0000000e00000000, 0x0000001c00000000,
            0x0000003800000000, 0x0000007000000000, 0x000000e000000000, 0x000000c000000000,
            0x0000030100000000, 0x0000070200000000, 0x00000e0400000000, 0x00001c0800000000,
            0x0000381000000000, 0x0000702000000000, 0x0000e04000000000, 0x0000c08000000000,
            0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,
            0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,
        }
	};  // White Pawn = 0, Black Pawn = 1
    static const U64 allKingAttacks[64] {
        0x0000000000000302, 0x0000000000000705, 0x0000000000000e0a, 0x0000000000001c14,
        0x0000000000003828, 0x0000000000007050, 0x000000000000e0a0, 0x000000000000c040,
		0x0000000000030203, 0x0000000000070507, 0x00000000000e0a0e, 0x00000000001c141c,
        0x0000000000382838, 0x0000000000705070, 0x0000000000e0a0e0, 0x0000000000c040c0,
		0x0000000003020300, 0x0000000007050700, 0x000000000e0a0e00, 0x000000001c141c00,
        0x0000000038283800, 0x0000000070507000, 0x00000000e0a0e000, 0x00000000c040c000,
		0x0000000302030000, 0x0000000705070000, 0x0000000e0a0e0000, 0x0000001c141c0000,
        0x0000003828380000, 0x0000007050700000, 0x000000e0a0e00000, 0x000000c040c00000,
		0x0000030203000000, 0x0000070507000000, 0x00000e0a0e000000, 0x00001c141c000000,
        0x0000382838000000, 0x0000705070000000, 0x0000e0a0e0000000, 0x0000c040c0000000,
		0x0003020300000000, 0x0007050700000000, 0x000e0a0e00000000, 0x001c141c00000000,
        0x0038283800000000, 0x0070507000000000, 0x00e0a0e000000000, 0x00c040c000000000,
		0x0302030000000000, 0x0705070000000000, 0x0e0a0e0000000000, 0x1c141c0000000000,
        0x3828380000000000, 0x7050700000000000, 0xe0a0e00000000000, 0xc040c00000000000,
		0x0203000000000000, 0x0507000000000000, 0x0a0e000000000000, 0x141c000000000000,
        0x2838000000000000, 0x5070000000000000, 0xa0e0000000000000, 0x40c0000000000000,
    };

	/*
	inline U64 fileAttacks(const U64 & occupied, const unsigned short & squareIndex);
	inline U64 rankAttacks(const U64 & occupied, const unsigned short & squareIndex);
	inline U64 diagonalAttacks(const U64 & occupied, const unsigned short & squareIndex);
	inline U64 antiDiagonalAttacks(const U64 & occupied, const unsigned short & squareIndex);
    
    inline U64 pawnAttacks(const U64 & whiteOccupied, const U64 & blackOccupied, const unsigned short & squareIndex, bool pawnIsWhite);
    inline U64 kingAttacks(const U64 & whiteOccupied, const U64 & blackOccupied, const unsigned short & squareIndex, bool kingIsWhite);
    inline U64 queenAttacks(const U64 & occupied, const unsigned short & squareIndex);
    inline U64 rookAttacks(const U64 & occupied, const unsigned short & squareIndex);
    inline U64 bishopAttacks(const U64 & occupied, const unsigned short & squareIndex);
    inline U64 knightAttacks(const U64 & occupied, const unsigned short & squareIndex);
	*/
	
	inline U64 fileAttacks(const U64 & occupied, const unsigned short & squareIndex) {
		const U64 & a1h8Diag = 0x8040201008040201;
		const U64 & c2h7Diag = 0x0080402010080400;
		
		unsigned int file = squareIndex & 7;
		U64 temp = KGBitboardUtil::fileMask[0] & (occupied >> file);
		temp = (c2h7Diag * temp) >> 58;
		temp = a1h8Diag * KGBitboardUtil::firstRankAttacks[(squareIndex ^ 56) >> 3][temp];
		return (KGBitboardUtil::fileMask[7] & temp) >> (file ^ 7);
	}
	
	inline U64 rankAttacks(const U64 & occupied, const unsigned short & squareIndex) {
		const unsigned int & rank = (squareIndex >> 3) & 7;
		const unsigned int & file = (squareIndex & 7);
		
		U64 temp = occupied & rankMask[rank];
		temp = KGBitboardUtil::firstRankAttacks[file][(temp >> ((rank * 8) + 1) & 077)];	// Extract 6-bit occupancy index
		return temp << (rank * 8);
	}
	
	inline U64 diagonalAttacks(const U64 & occupied, const unsigned short & squareIndex) {
		const unsigned int & file = squareIndex & 7;
		U64 temp = KGBitboardUtil::diagonalMask[squareIndex] & occupied;
		temp = (KGBitboardUtil::fileMask[1] * temp) >> 58;
		temp = KGBitboardUtil::fileMask[0] * KGBitboardUtil::firstRankAttacks[file][temp];
		return KGBitboardUtil::diagonalMask[squareIndex] & temp;
	}
	
	inline U64 antiDiagonalAttacks(const U64 & occupied, const unsigned short & squareIndex) {
		const unsigned int & file = squareIndex & 7;
		U64 temp = KGBitboardUtil::antiDiagonalMask[squareIndex] & occupied;
		temp = (KGBitboardUtil::fileMask[1] * temp) >> 58;
		temp = KGBitboardUtil::fileMask[0] * KGBitboardUtil::firstRankAttacks[file][temp];
		return KGBitboardUtil::antiDiagonalMask[squareIndex] & temp;
	}
	
#pragma mark - Piece Attacks
	
	inline U64 pawnAttacks(const U64 & whiteOccupied, const U64 & blackOccupied, const unsigned short & squareIndex, bool pawnIsWhite) {
		const U64 & occupied = whiteOccupied | blackOccupied;
		U64 attacks = 0;
		
		if (pawnIsWhite) {
			// extract the blockers on the same file
			attacks = (KGBitboardUtil::allPawnAttacks[0][squareIndex] ^ occupied) & KGBitboardUtil::allPawnAttacks[0][squareIndex] & KGBitboardUtil::fileMask[squareIndex & 7];
			U64 capturable = blackOccupied & ~KGBitboardUtil::fileMask[squareIndex & 7]; // Extact the opponent occupied on the flanks
			attacks |= KGBitboardUtil::allPawnAttacks[0][squareIndex] & capturable;
			
			// On pawn double push, unset the higher square if lower is blocking
			if (((squareIndex >> 3) & 7) == 1 && !(attacks & fileMask[squareIndex & 7] & rankMask[2])) {
				attacks = attacks & ~rankMask[3];
			}
		} else {
			// extract the blockers on the same file
			attacks = (KGBitboardUtil::allPawnAttacks[1][squareIndex] ^ occupied) & KGBitboardUtil::allPawnAttacks[1][squareIndex] & KGBitboardUtil::fileMask[squareIndex & 7];
			U64 capturable = whiteOccupied & ~KGBitboardUtil::fileMask[squareIndex & 7]; // Extact the opponent occupied on the flanks
			attacks |= KGBitboardUtil::allPawnAttacks[1][squareIndex] & capturable;
			
			// On pawn double push, unset the higher square if lower is blocking
			if (((squareIndex >> 3) & 7) == 6 && !(attacks & fileMask[squareIndex & 7] & rankMask[5])) {
				attacks = attacks & ~rankMask[4];
			}
		}
		
		return attacks;
	}
	
	inline U64 kingAttacks(const U64 & whiteOccupied, const U64 & blackOccupied, const unsigned short & squareIndex, bool kingIsWhite) {
		U64 attacks = 0;
		
		if (kingIsWhite) {
			attacks = (KGBitboardUtil::allKingAttacks[squareIndex] ^ whiteOccupied) & KGBitboardUtil::allKingAttacks[squareIndex];
			U64 capturable = KGBitboardUtil::allKingAttacks[squareIndex] & blackOccupied;
			attacks |= capturable;
		} else {
			attacks = (KGBitboardUtil::allKingAttacks[squareIndex] ^ blackOccupied) & KGBitboardUtil::allKingAttacks[squareIndex];
			U64 capturable = KGBitboardUtil::allKingAttacks[squareIndex] & whiteOccupied;
			attacks |= capturable;
		}
		
		return attacks;
	}
		
	inline U64 rookAttacks(const U64 & occupied, const unsigned short & squareIndex) {
		return KGBitboardUtil::fileAttacks(occupied, squareIndex) | KGBitboardUtil::rankAttacks(occupied, squareIndex);
	}
	
	inline U64 bishopAttacks(const U64 & occupied, const unsigned short & squareIndex) {
		return KGBitboardUtil::diagonalAttacks(occupied, squareIndex) | KGBitboardUtil::antiDiagonalAttacks(occupied, squareIndex);
	}
	
	inline U64 queenAttacks(const U64 & occupied, const unsigned short & squareIndex) {
		return KGBitboardUtil::rookAttacks(occupied, squareIndex) | KGBitboardUtil::bishopAttacks(occupied, squareIndex);
	}
	
	inline U64 knightAttacks(const U64 & occupied, const unsigned short & squareIndex) {
		return (KGBitboardUtil::allKnightAttacks[squareIndex] ^ occupied) & KGBitboardUtil::allKnightAttacks[squareIndex];
	}
		
	std::string prettyBitmap(const U64 & bitmap, int xIndex = -1);
}

#endif /* defined(__KindergartenBitboard__KGBitboardUtil__) */
