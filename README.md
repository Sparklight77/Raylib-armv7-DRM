# Raylib ARM Cross-Builds for DRM Platforms

This repository contains **cross-compiled raylib** SDK for **ARMv7** and **ARM64** architectures targeting the **Direct Rendering Manager (DRM)** platform using **OpenGL ES 2**. It produces ready-to-use SDK tarballs including raylib static libraries and headers.

---

## Features

- Cross-compiles raylib for:
  - **ARMv7** (`arm-linux-gnueabihf`)
  - **ARM64** (`aarch64-linux-gnu`)
- Targets DRM platform with OpenGL ES 2 support.
- Produces static library `libraylib.a` and header files.
- Packages SDK in `.tar.gz` archives named with current date (format `dd-mm-yyyy`).
- Uploads build artifacts automatically to GitHub Actions.
- Uses shallow clone of raylib repo to speed up builds.
- Compatible with Linux ARM environments and similar setups.



---

Repository Structure

├── .github/workflows/build-raylib.yml      # GitHub Actions workflow
├── cmake/
│   ├── Toolchain-armv7-linux-gnueabihf.cmake
│   └── Toolchain-aarch64-linux-gnu.cmake
└── README.md


---

> Warning: The workflow builds raylib without examples or games for a clean SDK. The build automatically initiates after every 12 hours to provide Bleeding Edge Builds. It is NOT RECOMMENDED to use these for actual projects as these are highly experimental and can break the functionality.

> Note: The build uses OpenGL ES 2 internally because raylib currently defaults to GLES2 on DRM.




---

> Info: The workflow assumes availability of cross-toolchains on Ubuntu runners (gcc-arm-linux-gnueabihf and gcc-aarch64-linux-gnu). If you customize runners, ensure these packages are installed


> Info: The tarball contains the following structure:

raylib-<arch>/
├── include/    # Header files (.h)
└── lib/        # Static library libraylib.a



> Info: You can customize the workflow to add example builds or shared library outputs if needed. 


## Customization & Extending:


-$ Add BUILD_EXAMPLES=ON in CMake config step to build examples.


-$ Add -DBUILD_SHARED_LIBS=ON to produce shared libraries (.so).


-$ djust platform flags to target different DRM setups or GLES versions.

---

License

This workflow and tooling scripts follows raylib license. Nothing is changed at all.

---

Built specially for your raylib ARM projects.
