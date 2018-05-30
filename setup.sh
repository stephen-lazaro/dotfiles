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
brew install ghc cabal-install stack
cabal update

# Install Elixir
brew install elixir


# Install npm
brew install node

# Install Purescript
npm install -g purescript
npm install -g pulp bower

# Install idris
cabal install idris

# Install some nice utilities
cargo install sn          # Tin Summer, replacement du
cargo install tokei       # Count code statistics fast
cargo install ripgrep     # Fast rust version of grep
cargo install cargo-wasm  # Cargo support for wasm compilation
cargo install pijul       # darcs like
cargo install bat         # Colorized awesome cat replacement
cabal install ShellCheck  # Syntax checking for bash!
cabal install Agda        # Agda proof assistant

# Setup agda
agda-mode setup

# Setup Coq
echo "Go install CoQ manually because I guess that's what's up you dumb asshole"

# Obtain Carp
git clone git@github.com:carp-lang/Carp.git
cd Carp
stack build
stack install
cd ..


git config --global user.email stephen.lazaro@gmail.com
