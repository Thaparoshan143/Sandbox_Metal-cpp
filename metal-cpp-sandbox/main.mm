#include "mtl_engine.hpp"

int main() {

    MTLEngine engine {};
    
    engine.Init();
    engine.Run();
    engine.Cleanup();
    
    return 0;
}
