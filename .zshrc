# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Commands prepended with a space " " will not be remembered in the history file.
setopt histignorespace

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
plugins=(git git-extras)

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Make vim the default editor
export EDITOR=vim

# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/opt/homebrew/bin:/opt/homebrew/bin -

export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=~/.npm-global/bin:$PATH

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# aliases
alias srczsh="source ~/.zshrc"
alias clicheck="(cd ~/dotfiles/install ; bork satisfy cli.sh)"

# lucagrulla / cw
cw_tail() {
  cw tail --profile $1 --region us-east-1 -f $2
}

export DOCKER_HOST=unix:///Users/$(whoami)/Library/Containers/com.docker.docker/Data/docker.raw.sock