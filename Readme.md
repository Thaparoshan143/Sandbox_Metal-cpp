### Repo for metal-cpp sandbox (CMake build system, configed for vscode)

#Note: This is created on/for Apple Silicon (namely M1, macOS).

**How to use**

- clone repo
`git clone https://github.com/Thaparoshan143/Sandbox_Metal-cpp -b vscode+glfw .`

- open in vscode 
`code .`

**Commands**
- config and builds from CMakeList `bash config.sh`
- run the binary executable `bash run.sh`
- clean the build files `bash clean.sh`

**Requirements**
- macOS 15.2+
- Xcode (also, command line tools)
- glfw (3.4, optional from brew)

**Folder Structure**
- **includes**: external/dependencies header files
- **lib**: dylib (for now, glfw)
- **source**: main source files..

Special thanks to [Metal Tutorial](https://metaltutorial.com/) for giving baseline.
