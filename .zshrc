# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="avit"

# Set tmux in 256 color mode (make vim look better)
alias tmux='TERM=xterm-256color tmux'

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras ruby brew bundler osx rails web-search)

source $ZSH/oh-my-zsh.sh

# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:/Applications/Postgres.app:$PATH
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH
export PATH=$PATH:$HOME/bork/bin

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Make vim the default editor
export EDITOR=vim

# aliases
alias zshrc="vim ~/.zshrc"
alias srczsh="source ~/.zshrc"
alias local5="open http://localhost:5000"
alias local3="open http://localhost:3000"
alias localrts="open http://localhost:3000/rails/info/routes"
