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
plugins=(git git-extras wp-cli)

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Make vim the default editor
export EDITOR=vim

source $ZSH/oh-my-zsh.sh

# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=/Applications/Postgres.app/Contents/Versions/9.6/bin:$PATH
export PATH=$HOME/bork/bin:/.rbenv/bin:$PATH
export NODE_PATH='/usr/local/lib/node_modules'

# rbenv
eval "$(rbenv init -)"

#  Use the correct load path in a TMUX session
if [ -n "$TMUX" ]; then
    eval "$(rbenv init -)"
fi

# aliases
alias srczsh="source ~/.zshrc"
alias clicheck="(cd dotfiles/install ; bork satisfy cli.sh)"
alias js="cd ~/Javascript ; ls"
alias jsvue="cd ~/Javascript/vue ; ls"
alias sb="cd ~/Scotchbox"

# ScotchBox new site: scotchbox my-project
scotchbox() {
  git clone https://github.com/scotch-io/scotch-box-pro "$1"
}

# NVM stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#WP CLI
#autoload bashcompinit
bashcompinit
source /Users/jordan/wp-completion.bash
