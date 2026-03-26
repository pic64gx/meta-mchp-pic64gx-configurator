# meta-mchp-pic64gx-configurator

A Yocto Project layer for integrating PIC64GX Configurator generated files into AMP (Asymmetric Multiprocessing) builds.

## Description

This layer enables the use of output files from the [MPLAB PIC64GX SDK Extension](https://marketplace.visualstudio.com/items?itemName=Microchip.pic64gx-sdk-extension) configurator tool to build custom AMP images for the PIC64GX Curiosity Kit. It provides bbappend files that inject configuration files into the appropriate recipes during the build process.

## Dependencies

This layer depends on:

- [meta-mchp](https://github.com/linux4microchip/meta-mchp)
- [meta-zephyr](https://git.yoctoproject.org/meta-zephyr)

## Setup

### 1. Add the layer to the build

```bash
bitbake-layers add-layer /path/to/meta-mchp-pic64gx-configurator
```

### 2. Add configuration files

Copy the generated files from PIC64GX Configurator to the appropriate locations:

```bash
cp context_a.dtso recipes-bsp/dt-overlay-mchp/files/
cp context_b.overlay recipes-zephyr/pic64gx-zephyr-amp-demo/files/

```

### 3. Build the image

```bash
MACHINE=pic64gx-curiosity-kit-amp bitbake mchp-base-image-sdk
```
