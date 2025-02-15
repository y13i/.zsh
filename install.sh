#!/bin/zsh

# Define the ZSH_CUSTOM directory
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

# Function to clone a git repository if it doesn't already exist
clone_repo() {
  local repo_url=$1
  local target_dir=$2

  if [ ! -d "$target_dir" ]; then
    git clone "$repo_url" "$target_dir"
  else
    echo "Directory $target_dir already exists. Skipping clone."
  fi
}

# Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "Oh My Zsh is already installed. Skipping installation."
fi

# Clone zsh-history-substring-search plugin
clone_repo "https://github.com/zsh-users/zsh-history-substring-search" "$ZSH_CUSTOM/plugins/zsh-history-substring-search"

# Clone zsh-autosuggestions plugin
clone_repo "https://github.com/zsh-users/zsh-autosuggestions" "$ZSH_CUSTOM/plugins/zsh-autosuggestions"

# Clone zsh-syntax-highlighting plugin
clone_repo "https://github.com/zsh-users/zsh-syntax-highlighting.git" "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"

# Clone zsh-expand plugin
clone_repo "https://github.com/MenkeTechnologies/zsh-expand.git" "$ZSH_CUSTOM/plugins/zsh-expand"

# Clone the user's .zsh repository
clone_repo "https://github.com/y13i/.zsh.git" "$HOME/.zsh"

# Set ZDOTDIR in .zshenv
if ! grep -q "export ZDOTDIR=\$HOME/.zsh" "$HOME/.zshenv"; then
  echo "export ZDOTDIR=\$HOME/.zsh" > "$HOME/.zshenv"
else
  echo "ZDOTDIR is already set in .zshenv. Skipping."
fi

echo "Installation complete."
