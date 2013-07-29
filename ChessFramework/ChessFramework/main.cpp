#include <iostream>
#include <set>

#include "BitboardPosition.h"
#include "BitboardPositionQuerier.h"

using namespace std;
using namespace sfc::cfw;

int main(int argc, const char * argv[]) {
    shared_ptr<BitboardPosition> p = make_shared<BitboardPosition>("8/8/8/8/8/8/8/N7");
    shared_ptr<BitboardPositionQuerier> q = make_shared<BitboardPositionQuerier>(p);
    
    set<Square> expectedAttacks { Square("c2"), Square("b3") };
    set<Square> attacks = q->attacksFrom(Square("a1"));
    
    cout << "\n";
    for (auto s : attacks) {
        cout << s.getLabel() << "\n";
    }
    
    if (expectedAttacks == attacks) {
        cout << "\n Expected attacks satisfied";
    }
}


/*!

@todo Classes to construct: Move, MoveBuilder, GameState, GameStateBuilder.

*/