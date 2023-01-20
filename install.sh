#!/user/bin/env bash

if ! command -v brew &> /dev/null
then
  echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Installing GitHub"
brew install gh

echo "Authenticating with GitHub"
gh auth login

echo "Running brew bundle"
brew bundle --file="./Brewfile"

echo "Installing asciicast2gif"
npm install --global asciicast2gif

