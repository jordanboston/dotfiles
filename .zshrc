# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
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
plugins=(git git-extras wp-cli)

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Make vim the default editor
export EDITOR=vim

source $ZSH/oh-my-zsh.sh

# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=$HOME/bork/bin:$HOME/.composer/vendor/bin:$PATH
export PATH=$HOME/usr/local/go/bin:$PATH
export NODE_PATH='/usr/local/lib/node_modules'

export XDEBUG_CONFIG="idekey=VSCODE"

# docker-sync
if which ruby >/dev/null && which gem >/dev/null; then
  PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

#  Use the correct load path in a TMUX session
if [ -n "$TMUX" ]; then
    eval "$(rbenv init -)"
fi

# aliases
alias srczsh="source ~/.zshrc"
alias clicheck="(cd ~/dotfiles/install ; bork satisfy cli.sh)"
alias dev="cd ~/devApps"

# ScotchBox new site: scotchbox my-project
function scotchbox() {
  git clone https://github.com/scotch-io/scotch-box-pro "$1"
}

# NVM stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#WP CLI
#autoload bashcompinit
# bashcompinit
# source $HOME/wp-completion.bash

# Mobile Development stuff
export JAVA_HOME=$(/usr/libexec/java_home)
# Path for Android Studio
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Change Javac version for Android dev (setjdk 1.8.0)
function setjdk() {
  if [ $# -ne 0 ]; then
   removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
   if [ -n "${JAVA_HOME+x}" ]; then
    removeFromPath $JAVA_HOME
   fi
   export JAVA_HOME=`/usr/libexec/java_home -v $@`
   export PATH=$JAVA_HOME/bin:$PATH
  fi
  echo JAVA_HOME set to $JAVA_HOME
  java -version
 }
 function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
 }

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
