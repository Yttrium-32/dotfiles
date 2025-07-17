# My dotfiles
This repo stores all the config files that aren't updated often enough to need
their own repo. Requires the use of [GNU stow](https://www.gnu.org/software/stow/)
and [GNU make](https://www.gnu.org/software/make/)

Pre-commit hook needs [pre-commit](https://pre-commit.com/#install) to be installed.

The dependency list can easily be edited in the Makefile. Simply add or remove
packages to `DEPS` for main repo packages, or to `AUR_DEPS` for AUR packages.

## Usage
#### Print this file:
```bash
    make help
```

#### Install and symlink everything
```bash
   make all
```

#### Install all dependencies (including fonts):
```bash
   make alldeps
```

#### Install just the fonts:
```bash
    make fonts
```

#### Install packages from the main repo:
```bash
    make deps
```

#### Symlink config files
```bash
    make install
```

#### Delete all symlinks
```bash
    make clean
```
