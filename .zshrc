# I can't take credit for a lot of these
# here are some resources where I found options:
#
# - https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html
# - Iterm2 color scheme: spacegray
#

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/randi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	apache2-macports
	colored-man-pages
	git
	mysql-macports
	node
	npm
	nvm
	tmux
	vagrant
	vscode
	vundle
	z
)

source $ZSH/oh-my-zsh.sh

# Aliasing vim to neovim
alias vi="nvim"
alias vim="nvim"

# Mapping php for MAMP
#alias php7='/Applications/MAMP/bin/php/php7.0.32/bin/php -c "/Library/Application Support/appsolute/MAMP PRO/conf/php7.0.32.ini"'
#alias pear7='/Applications/MAMP/bin/php/php7.0.32/bin/pear'
#alias pecl7='/Applications/MAMP/bin/php/php7.0.32/bin/pecl'

# From "brew" php@5.6
#export PATH="/usr/local/opt/php@5.6/bin:$PATH"
#export PATH="/usr/local/opt/php@5.6/sbin:$PATH"

# From "brew" php@7.1
#export PATH="/usr/local/opt/php@7.1/bin:$PATH"
#export PATH="/usr/local/opt/php@7.1/sbin:$PATH"

# Navigation shortcuts
## get rid of command not found ##
alias cd..='cd ..'
 
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias code='code-insiders'

alias glog='git log --oneline --graph --decorate'

# Removing the username
DEFAULT_USER prompt_context(){}

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

alias tmux="TERM=screen-256color-bce tmux"

export PATH="/usr/local/opt/openssl/bin:$PATH"

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
