# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install


export DEFAULT_USER="rifcoder"
export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH=/home/rifcoder/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="awesome-fontconfig"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse powerline tmux brew osx docker z)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
    git
    taskwarrior
    sudo
    history
    zsh-syntax-highlighting
    zsh-autosuggestions
    osx
    docker
    docker-compose
    gradle
    z
    wd
    tmux
    tmuxinator)


# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time time context)
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
#POWERLEVEL9K_SHORTEN_DELIMITER=""
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=8

POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''

POWERLEVEL9K_DIR_HOME_FOREGROUND='123'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='123'
POWERLEVEL9K_DIR_ETC_FOREGROUND='123'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='123'

POWERLEVEL9K_TIME_FOREGROUND='white'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='white'
POWERLEVEL9K_STATUS_OK_FOREGROUND='green'
POWERLEVEL9k_STATUS_ERROR_FOREGROUND='red'
POWERLEVEL9k_STATUS_ERROR_FOREGROUND='red'

POWERLEVEL9K_TIME_BACKGROUND='clear'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='clear'
POWERLEVEL9K_STATUS_OK_BACKGROUND='clear'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='clear'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='clear'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='clear'

source $ZSH/oh-my-zsh.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="/usr/local/sbin:$PATH"
source ~/.fonts/*.sh

# Source local zsh customizations.
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Source functions and aliases.
[[ -f ~/.zsh_functions ]] && source ~/.zsh_functions
[[ -f ~/.zsh_aliases ]] && source ~/.zsh_aliases

export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"  # This loads nvm

source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[cursor]='bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green,bold'

source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

fpath+=($ZSH/plugins/docker)
autoload -U compinit && compinit

#bd zsh plugin
. $HOME/.zsh/plugins/bd/bd.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/rifcoder/.sdkman"
[[ -s "/home/rifcoder/.sdkman/bin/sdkman-init.sh" ]] && source "/home/rifcoder/.sdkman/bin/sdkman-init.sh"
