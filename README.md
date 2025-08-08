# My dotfiles
This repo stores all the config files that aren't updated often enough to need
their own repo.

My Neovim setup lives separately [here](https://github.com/Yttrium-32/nvim-config).

## Setup
Install [GNU stow](https://www.gnu.org/software/stow/) and
[GNU make](https://www.gnu.org/software/make/).

For the pre-commit hook, install [pre-commit](https://pre-commit.com/#install)
and run:
```bash
pre-commit install
```

To modify the packages for installation edit the `Makefile`. Simply add or
remove packages to `DEPS` for main repo packages, or to `AUR_DEPS` for AUR
packages.

### Conky weather widget
To the `dot-config/conky/scripts/` directory add a `.env` with the values
`API_KEY` and `CITY_ID` set.

To find your city ID look here: https://openweathermap.org/find

## Usage
| Command        | Description                                 |
| -------------- | ------------------------------------------- |
| `make help`    | Print usage instructions                    |
| `make all`     | Install dependencies and symlink everything |
| `make alldeps` | Install all dependencies (including fonts)  |
| `make fonts`   | Install fonts only                          |
| `make deps`    | Install packages from the main repo         |
| `make install` | Symlink configuration files                 |
| `make clean`   | Remove all symlinks                         |
