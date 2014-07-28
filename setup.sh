#!/bin/bash

# TODO: check ostype, and least environment.
#function check_env(){}
#function install_env(){}

# TODO: mac only brew doctor
#if ! which brew >/dev/null 2>&1; then
#  echo "brew is not."
#  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
#  brew update
#  brew install openssl readline
#fi

sh ruby/rbenv_install.sh
sh nodebrew/setup_nodebrew.sh

#TODO: if not exist, install
if [ `cat /etc/shells | grep zsh | wc -l` -lt 1 ]; then
  echo "cannot use zsh."
  exit 1
fi

[ "/bin/zsh" != $SHELL ] && chsh -s /bin/zsh

sh zsh/init_oh-my-zsh.sh
sh vim/setup_vim.sh
sh tmux/setup_tmux.sh

sh create_symlink.sh
sh git/setup_git.sh
echo "relaunch terminal."

