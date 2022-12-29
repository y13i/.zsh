# .zsh

```sh
# https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# https://github.com/zsh-users/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# https://github.com/MenkeTechnologies/zsh-expand#install-for-oh-my-zsh
git clone https://github.com/MenkeTechnologies/zsh-expand.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-expand

git clone https://github.com/y13i/.zsh.git ${HOME}/.zsh
echo "export ZDOTDIR=$HOME/.zsh" > $HOME/.zshenv
```
