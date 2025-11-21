### This repo contains the sandbox for getting started on with metal-cpp (metal with c++ wrapper) (glfw variant)

> [!Note]
> This is created on/for Apple Silicon (namely M1, macOS).

**How to use**
- clone repo
```bash
git clone https://github.com/Thaparoshan143/Sandbox_Metal-cpp -b xcode+glfw .
```

- open project in xcode (terminal command is as)
```bash
xed .
```

**Requirements**
- macOS 15.2+
- Xcode (also, command line tools)
- glfw (3.4, optional from brew)

**Folder Structure**
- **includes**: external/dependencies header files
- **lib**: dylib (for now, glfw)
- **metal-cpp-sandbox**: main source files..

Please refer to the [Metal Tutorial](https://metaltutorial.com/) to know further.

> [!Note]
> the lib folder contain the dylib for glfw, if your system already contain the glfw (installed from brew) you can delete lib folder and replace the search library path in xcode to the lib path of glfw (eg: brew path at `/opt/homebrew/Cellar/glfw/3.4/lib/`)
