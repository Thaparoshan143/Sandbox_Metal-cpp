### Repo for metal-cpp sandbox (CMake build system, configed for vscode)

> [!Note]
> This is created on/for Apple Silicon (namely M1, macOS). Please refer to the Apple developer website for further information, [here](https://developer.apple.com/metal/cpp/)

**How to use**
- clone repo
```bash
git clone -b vscode+glfw https://github.com/Thaparoshan143/Sandbox_Metal-cpp path/to/clone
```

- open in vscode 
```bash
code .
```

**Commands**
- config and builds from CMakeList
```bash
bash config.sh
```
- run the binary executable
```bash
bash run.sh
```
- clean the build files
```bash
bash clean.sh
```

**Requirements**
- macOS 15.2+
- Xcode (also, command line tools)
- glfw (3.4, optional from brew)

**Folder Structure**
- **includes**: external/dependencies header files
- **lib**: dylib (for now, glfw)
- **source**: main source files..

Special thanks to [Metal Tutorial](https://metaltutorial.com/) for giving baseline.
