#ifndef mtl_engine_hpp
#define mtl_engine_hpp

#include <iostream>
using Str = std::string;

#define GLFW_INCLUDE_NONE
#include <GLFW/glfw3.h>
#define GLFW_EXPOSE_NATIVE_COCOA
#include <GLFW/glfw3native.h>

#include <Metal/Metal.hpp>
#include <Metal/Metal.h>
#include <QuartzCore/CAMetalLayer.hpp>
#include <QuartzCore/CAMetalLayer.h>
#include <QuartzCore/QuartzCore.hpp>

struct WindowProps
{
    int width { 1200 };
    int height { 800 };
    Str label { "Metal-cpp" };
};

class MTLEngine
{
public:
    void Init();
    void Run();
    void Cleanup();
    
private:
    void initMetalDevice();
    void initglfwWindow();
    
    // handle to the glfw window instance
    GLFWwindow* m_glfwWindow { nullptr };
    // later get the cocoa window instance from glfw and assign here..
    NSWindow* m_metalWindow { nullptr };
    CAMetalLayer* m_metalLayer { nullptr };
    
    // handle to the actual GPU compute instance i guess
    MTL::Device* m_metalDevice { nullptr };
};

#endif