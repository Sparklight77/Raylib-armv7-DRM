# 🌠Raylib ARM Cross-Builds for DRM Platforms

This repository contains **cross-compiled raylib** SDK for **ARMv7** and **ARM64** architectures targeting the **Direct Rendering Manager (DRM)** platform using **OpenGL ES 2**. It produces ready-to-use SDK tarballs including raylib static libraries and headers.

---

## 📚About 
- Cross-compiles raylib for:
  - **ARMv7** (`arm-linux-gnueabihf`)
  - **ARM64** (`aarch64-linux-gnu`)
- Targets DRM platform with OpenGL ES 2 support.
- Produces static library `libraylib.a` and header files.
- Compatible with Linux ARM environments and similar setups.



---

## ⏬Download: 
- [Release v5.5](https://github.com/Sparklight77/raylib-arm/releases/tag/arm-5.5)
  - [raylib-5.5_linux_arm64-drm.tar.gz](https://github.com/Sparklight77/raylib-arm/releases/download/arm-5.5/raylib-5.5_linux_arm64-drm.tar.gz)

  - [raylib-5.5_linux_armv7-drm.tar.gz](https://github.com/Sparklight77/raylib-arm/releases/download/arm-5.5/raylib-5.5_linux_armv7-drm.tar.gz)


- [Experimental (GitHub Actions)](https://github.com/Sparklight77/raylib-arm/actions/workflows/raylib-build.yml)


> [!Warning]
> The workflow builds raylib without examples or games for a clean SDK. You can download Bleeding Edge Builds from Actions. It is NOT RECOMMENDED to use these for actual projects as these are highly experimental and can break the functionality.

> [!Note]
> The build uses OpenGL ES 2 internally because raylib currently defaults to GLES2 on DRM.


> [!Important]
> You can customize the workflow to add example builds or shared library outputs if needed. 

## 🗞️License

This workflow and tooling scripts follows raylib license. Nothing is changed at all.