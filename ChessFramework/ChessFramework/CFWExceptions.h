//
//  CFWExceptions.h
//  ChessFramework
//
//  Created by Santhosbaala RS on 23/08/13.
//  Copyright (c) 2013 64cloud. All rights reserved.
//

#ifndef ChessFramework_CFWExceptions_h
#define ChessFramework_CFWExceptions_h

#include <string>
#include <exception>

namespace sfc {
	namespace cfw {
		
		struct malformed_castling_options : public std::invalid_argument {
			explicit malformed_castling_options(const std::string & __s) : invalid_argument(__s) { }
			explicit malformed_castling_options(const char * __s) : invalid_argument(__s) { }
		};
		
		struct illegal_position_setup : public std::invalid_argument {
			explicit illegal_position_setup(const std::string & __s) : invalid_argument(__s) { }
			explicit illegal_position_setup(const char * __s) : invalid_argument(__s) { }
		};
		
		struct malformed_fen_string : public std::invalid_argument {
			explicit malformed_fen_string(const std::string & __s) : invalid_argument(__s) { }
			explicit malformed_fen_string(const char * __s) : invalid_argument(__s) { }
		};
	}
}

#endif
