#!/usr/bin/env bash
set -eou pipefail

# Get homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update brew
brew update

# Install sbt
brew install sbt

# Install python3
brew upgrade python3 || brew install python3

# Install vim
brew upgrade vim || brew install vim

# Install rust stuff
curl https://sh.rustup.rs -sSf | sh
rustup default nightly

# Install haskell
brew cask install haskell-platform
cabal update

# Install idris
cabal install idris

# Install some nice utilities
cargo install sn
cargo install tokei
cargo install ripgrep
cargo install cargo-wa
cargo install pijul
