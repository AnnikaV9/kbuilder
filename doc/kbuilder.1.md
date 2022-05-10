% KBUILDER(1) kbuilder 0.3.0
% AnnikaV9 (github.com/AnnikaV9), wael444 (github.com/AnnikaV9)
% 10 May 2022

# NAME
kbuilder - Build and install your own custom kernel packages.

# SYNOPSIS
kbuilder \<command>

# DESCRIPTION
kbuilder is a bash script that allows you to build and install your own custom kernel packages with custom patches and configurations. It fetches one of Arch Linux's officially supported kernel packages' PKGBUILD and config, and uses it as a template for building your kernel.

# COMMANDS
\-\-\- **help**
:   Display a help message.

\-\-\- **build**
:   Fetch and build a kernel with makepkg.

\-\-\- **install**
:   Install the build kernel with pacman.

\-\-\- **version**
:   Display kbuilder's version information.

# BUILD VARIABLES
\-\-\- **KBUILDER_SOURCE_PACKAGE**
: One of the four officially support kernels. Uses 'linux' by default. Valid options are linux, linux-lts, linux-zed and linux-hardened

\-\-\- **KBUILDER_PKG_NAME_APPEND**
: A string that will be appended at the end of the kernel version, and the package name. For example, setting this variable to 'patch1' and KBUILDER_SOURCE_PACKAGE to 'linux-lts' will result in a package named 'linux-lts-patch1'

\-\-\- **KBUILDER_BUILD_JOBS**
: The number of threads to use when building the kernel. For example, setting this variable to '8' will replace 'make all' in the PKGBUILD with 'make -j8 all'

# BUGS
Report all bugs at https://github.com/AnnikaV9/kbuilder/issues

# LICENSE
This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
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
