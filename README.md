# kbuilder <br/> <a target="_blank" href="https://aur.archlinux.org/packages/kbuilder" title="AUR Version"><img src="https://img.shields.io/badge/AUR%20Stable-0.2.2-blue?style=flat-square&logo=archlinux"></a> <a target="_blank" href="https://github.com/AnnikaV9/kbuilder" title="Github Version"><img src="https://img.shields.io/badge/Github%20Dev-0.2.2-9cf?style=flat-square&logo=github"></a> <a target="_blank" href="https://github.com/AnnikaV9/kbuilder/blob/master/LICENSE" title="License"><img src="https://img.shields.io/badge/License-The%20Unlicense-red?style=flat-square"></a>
kbuilder is a bash script that allows you to build and install your own custom kernel packages with custom patches and configurations, for Arch Linux. It fetches the stock vanilla kernel's [PKGBUILD](https://raw.githubusercontent.com/archlinux/svntogit-packages/packages/linux/trunk/PKGBUILD), and uses it as a template to build your custom kernel.

<br/>

### <details><summary>Screenshots</summary><br /><img src="https://user-images.githubusercontent.com/68383195/166893293-859aa2d9-d681-46d9-a9a9-af73f0db20b1.png"/><br /><br /><img src="https://user-images.githubusercontent.com/68383195/166893298-4f32b1cb-e28a-43aa-aec0-39c7956d42db.png"/></details>

<br />
<br />

## Installation
The [stable version](https://aur.archlinux.org/packages/kbuilder) is available on the [AUR](https://aur.archlinux.org/).

To install the dev version from this repository:
```
# Clone the repository
git clone https://github.com/AnnikaV9/kbuilder

# Change the working directory
cd kbuilder

# Prepare the package
bash package.sh

# Install kbuilder
makepkg -si
```

<br />
<br />

## Usage
```
➜  ~ kbuilder help
usage: kbuilder <command>

commands:
    help        show this message
    build       fetch and build a kernel with makepkg
    install     install the built kernel with pacman
    version     show kbuilder version
```
During the build process, kbuilder will inject a bash shell into the PKGBUILD.
This will spawn the shell right before `build()` is called, allowing you to add any patches or change the kernel config interactively.

#### Example usage
To fetch the kernel sources and build the packages *linux-kbuilder-custom*, *linux-kbuilder-custom-headers* and *linux-kbuilder-custom-docs*:
```
kbuilder build
```
Note: Build directory is `~/.kbuilder`

<br />

To install the built packages:
```
kbuilder install
```

<br />

To specify the number of jobs to use during the build, and a custom package name:
```
KBUILDER_BUILD_JOBS=x KBUILDER_PKG_NAME=linux-<your_custom_name> kbuilder build
```

<br />
<br />

## Hooks
kbuilder looks for hooks in `/etc/kbuilder/hooks/`, and uses run-parts to execute them right before `build()` is called. The run-parts command is executed with the flag `--regex "kbuilder-hook-*"`. 

An example hook:

```bash
#!/bin/bash
#
# kbuilder hook for applying graysky2's kernel compiler patch:
# https://github.com/graysky2/kernel_compiler_patch
#

SOURCE="https://raw.githubusercontent.com/graysky2/kernel_compiler_patch/master"
PATCH="more-uarches-for-kernel-5.17+.patch"
HOOK_NAME="cpu-optimize-hook"

curl -o $PATCH $SOURCE/$PATCH || { echo -e "$HOOK_NAME failed when fetching $PATCH from $SOURCE" ; exit 1; }
patch -Np1 -i "$PATCH" || { echo -e "$HOOK_NAME failed when applying $PATCH" ; exit 1; }

```

To create and enable a hook:
```
vim xx-builder-hook-hookname
sudo cp xx-builder-hook-hookname /etc/kbuilder/hooks/
sudo chmod +x /etc/kbuilder/hooks/xx-kbuilder-hook-hookname
```
Where *xx* is a number which would change depending on the hook's order.

<br />
<br />

## Contributors

- ![pfp](https://avatars.githubusercontent.com/u/68383195?v=4&s=20) **[AnnikaV9](https://github.com/AnnikaV9)**
- ![pfp](https://avatars.githubusercontent.com/u/47404953?v=4&s=20) **[wael444](https://github.com/wael444)**
