#include "mtl_engine.hpp"

void MTLEngine::Init()
{
    initMetalDevice();
    initglfwWindow();
}

void MTLEngine::Run()
{
    while(!glfwWindowShouldClose(m_glfwWindow))
    {
        glfwPollEvents();
    }
}

void MTLEngine::Cleanup()
{
    glfwDestroyWindow(m_glfwWindow);
    glfwTerminate();
    m_metalDevice->release();
}

void MTLEngine::initglfwWindow()
{
    if(!glfwInit())
    {
        std::cout << "Unable to initialize glfw" << std::endl;
        exit(EXIT_FAILURE);
    }
    
    // hint to glfw to not create openGL context..
    glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);
    
    WindowProps defWinProp {};
    m_glfwWindow = glfwCreateWindow(defWinProp.width, defWinProp.height, defWinProp.label.c_str(), NULL, NULL);
    if (!m_glfwWindow)
    {
        std::cout << "Cannot create glfw Window" << std::endl;
        glfwTerminate();
        exit(EXIT_FAILURE);
    }
 
    // get the cocoa handle from the glfw and reconfig on metal
    m_metalWindow = glfwGetCocoaWindow(m_glfwWindow);
    m_metalLayer = [CAMetalLayer layer];
    m_metalLayer.device = (__bridge id<MTLDevice>)m_metalDevice;
    m_metalLayer.pixelFormat = MTLPixelFormatBGRA8Unorm;
    m_metalWindow.contentView.layer = m_metalLayer;
    m_metalWindow.contentView.wantsLayer = YES;
}

void MTLEngine::initMetalDevice()
{
    m_metalDevice = MTL::CreateSystemDefaultDevice();
    
    std::cout << "Device GPU name in use : " << m_metalDevice->name()->cString(NS::UTF8StringEncoding) << std::endl;
}
