export BASH_CONF="bash_profile"
# Aliases
alias editBash="vim ~/.bash_profile"
alias refreshBash="source ~/.bash_profile"

if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

# Path for Prompt
export PATH=~/bin:$PATH
# Custom Color Options for Prompt
txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

# iTerm stuff
# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# Change my command prompt
print_before_the_prompt () {
  # USER ALSO: printf "\n $txtgrn%s: $bldcyn%s $txtpur%s\n$txtrst" "$USER" "$PWD"
    printf "\n $txtgrn%s: $bldcyn%s $txtpur%s\n$txtrst" "$PWD"
}
PROMPT_COMMAND=print_before_the_prompt
PS1='☆ '

# export PATH="/usr/local/mysql/bin:$PATH"
# export PATH="/usr/local/Cellar/mysql/5.5.29/bin:$PATH"
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# For Brew and what not with git
export PATH="/usr/local/bin:$PATH"

# export NVM_DIR="~/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#
# # Auto source NVM on login
# source ~/.nvm/nvm.sh
