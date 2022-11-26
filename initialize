#!/bin/bash

# install xcode
xcode-select --install

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install brewfile packages
cp Brewfile ~/Brewfile
brew bundle install

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# install cht.sh
PATH_DIR="$HOME/bin"
mkdir -p "$PATH_DIR"
curl https://cht.sh/:cht.sh > "$PATH_DIR/cht.sh"
chmod +x "$PATH_DIR/cht.sh"

# install tree sitter cli
cargo install tree-sitter-cli

# run to copy dotfiles to home
# ./copy_dotfiles_to_home
echo 'Execute to copy dotfiles to home directory: ./copy_dotfiles_to_home'
