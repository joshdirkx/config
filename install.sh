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

echo "Installing editorconfig"
ln -sf ~/.config/editorconfig ~/.editorconfig

echo "Adding brew to $PATH"
set -U fish_user_paths /opt/homebrew/bin $fish_user_paths

echo "Installing Oh My Fish"
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

echo "Installing fisher"
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

echo "Installing fish plugins"
fisher install PatrickF1/fzf.fish
fisher install jorgebucaran/autopair.fish
fisher install joseluisq/gitnow@2.10.0
fisher install meaningful-ooo/sponge
fisher install acomagu/fish-async-prompt

echo "Saving passphrase for ssh"
ssh-add --apple-use-keychain ~/.ssh/id_rsa

echo "Installing Rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

