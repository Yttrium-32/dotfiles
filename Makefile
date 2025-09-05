.PHONY: all install clean check_clean deps alldeps help
.DEFAULT_GOAL := help

current_dir := $(dir $(abspath $(firstword $(MAKEFILE_LIST))))

FONTS += ttf-iosevka-nerd \
		 ttf-iosevkaterm-nerd \
		 adobe-source-code-pro-fonts \
		 adobe-source-han-sans-cn-fonts \
		 adobe-source-han-sans-jp-fonts \
		 adobe-source-han-sans-kr-fonts \
		 noto-fonts-cjk \
		 noto-fonts-emoji

DEPS += stow \
		kitty \
		git \
		ffmpeg \
		neovim \
		xclip \
		ripgrep \
		mpd \
		ncmpcpp \
		mpc \
		ncdu \
		redshift \
		fzf \
		zoxide \
		eza \
		fd \
		gperf \
		pre-commit \
		yay \
		mpv \
		yt-dlp \
		hunspell \
		keepassxc

AUR_DEPS += conky-cairo-wayland-git \
			googledot-cursor-theme \
			cpu-x-git \
			tdrop-git \
			xdman

all: alldeps install

install:
	stow . --dotfiles -t ~ -v

clean:
	stow -D . --dotfiles -t ~ -v

deps:
	sudo pacman --no-confirm --needed -S $(DEPS)

fonts:
	sudo pacman --no-confirm -needed -S $(FONTS)

alldeps: deps fonts
	yay --needed -S $(AUR_DEPS)

help:
	@cat ./README.md

