cmake_minimum_required(VERSION 3.2.0)

project(sandbox VERSION 1.0.0)
set(CMAKE_CXX_STANDARD 17)

add_executable(${PROJECT_NAME} ./source/mtl_header_impl.cpp ./source/mtl_engine.mm ./source/main.mm)

target_include_directories(${PROJECT_NAME} PRIVATE ${PROJECT_SOURCE_DIR}/includes/)
target_include_directories(${PROJECT_NAME} PRIVATE ${PROJECT_SOURCE_DIR}/source/)

target_link_libraries(${PROJECT_NAME} 
    "-framework Cocoa" 
    "-framework Metal" 
    "-framework Foundation"
    "-framework MetalKit" 
    "-framework QuartzCore" objc)

# this is based on the homebrew install
# if not installed use brew install glfw@version
# else change the link library to the relative lib folder if any.. eg: /lib/..
target_link_libraries(${PROJECT_NAME} ${PROJECT_SOURCE_DIR}/lib/libglfw.3.4.dylib)