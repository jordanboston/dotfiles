source ~/.zprezto/init.zsh

alias tmux='TERM=xterm-256color tmux'

ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Make vim the default editor
export EDITOR=vim

# aliases
alias zshconfig="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias local5="open http://localhost:5000"
alias local3="open http://localhost:3000"
alias lrts="open http://localhost:3000/rails/info/routes"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# For Brew and what not with git
export PATH="/usr/local/bin:$PATH"

#  Use the correct load path in a TMUX session
if [ -n "$TMUX" ]; then
    eval "$(rbenv init -)"
fi


