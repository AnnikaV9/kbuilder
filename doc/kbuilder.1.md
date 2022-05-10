% KBUILDER(1) kbuilder 0.2.4
% AnnikaV9 (github.com/AnnikaV9), wael444 (github.com/wael444)
% May 2022

# NAME

kbuilder - Build and install your own custom kernel packages.


# SYNOPSIS

kbuilder \<command>


# DESCRIPTION

kbuilder is a bash script that allows you to build and install your own custom kernel packages with custom patches and configurations. It fetches the stock vanilla kernel's PKGBUILD and config, and uses it as a template for building your kernel.


# COMMANDS

**help**
: display a help message

**build**
: fetch and build a kernel with makepkg

**install**
: install the built kernel with pacman

**version**
: show kbuilder version


# EXAMPLES

**$ kbuilder build**
: Fetch the kernel sources and build the packages with the default names: *linux-kbuilder-custom*, *linux-kbuilder-custom-headers* and *linux-kbuilder-custom-docs*

**$ KBUILDER_BUILD_JOBS=4 KBUILDER_PKG_NAME=linux-intel-optimized kbuilder build**
: Build the kernel with 4 threads and name the built package *linux-intel-optimized*


# LICENSE

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and  successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to \<http://unlicense.org/>
