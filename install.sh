#!/bin/sh

REPO=https://github.com/xytis/dotfiles.git

if [ ! -d "$HOME/.yadr" ]; then
  echo "Installing YADR for the first time"
  git clone --depth=1 \
    --origin upstream \
    --branch future \
    $REPO "$HOME/.yadr"
  cd "$HOME/.yadr" && make all
else
  echo "YADR is already installed"
  echo "=> checking if git remote matches the source"
  if [ $(git remote get-url upstream) != $REPO ]; then
    echo "=> changing remote address from $(git remote get-url upstream) to $REPO"
    git remote set-url upstream $(REPO)
  fi
fi
