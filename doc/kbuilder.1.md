% KBUILDER(1) kbuilder 0.3.0
% AnnikaV9 (github.com/AnnikaV9), wael444 (github.com/AnnikaV9)
% 10 May 2022

# NAME
kbuilder - Build and install your own custom kernel packages.

# SYNOPSIS
kbuilder \<command>

# DESCRIPTION
kbuilder is a bash script that allows you to build one of the four officially supported kernels locally with your own optional patches and configuration, under a different package name.

For example, you could fetch the sources of the linux-lts kernel, apply a patch that optimizes the kernel for intel processors, and install that kernel as linux-lts-intel-optimized.

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
:   Should be set as 'linux', 'linux-lts', 'linux-zen' or 'linux-hardened'. kbuilder will fetch and build the kernel specified with this variable. Defaults to 'linux'. 

\-\-\- **KBUILDER_PKG_NAME_APPEND**
:   Can be set as any string. It will be appended to the end of the kernel version and the kernel package. Defaults to 'kbuilder-custom'.

\-\-\- **KBUILDER_BUILD_JOBS**
: should be set as an integer. kbuilder will replace the `make all` line in the PKGBUILD with `make -jX all`, where X is the integer specified.

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
