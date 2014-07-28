export LANG=ja_JP.UTF-8
export EDITOR=vim
export VISUAL=vim

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# tmux. must be last.
if [ $SHLVL = 1 ]; then
  tmux a || tmux -f $HOME/.tmux.conf
fi
