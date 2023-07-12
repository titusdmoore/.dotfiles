# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export JAVA_HOME=`/usr/libexec/java_home -v 20`
alias l='ls -ltr'
alias ll='ls -al'
alias gs='git status'
alias graph='git log --all --decorate --oneline --graph'
alias nrs="npm run build && npm start"
alias gf='git fetch'
alias gp='git pull'
alias edge='cd /Volumes/Data'
alias rms='~/.remove-safe/remove-safe'
alias cl='clear'

# COMMENTED OUT BECAUSE I NO LONGER USE MAMP
# PHP_VERSION=$(ls /Applications/MAMP/bin/php/ | sort -n | head -6 | tail -1)
# export PATH=/Applications/MAMP/bin/php/${PHP_VERSION}/bin:$PATH
# alias wp='php /Applications/MAMP/bin/php/${PHP_VERSION}/bin/wp-cli.phar'

export PATH=$PATH:/Users/titusmoore/.local/bin
export PATH=$PATH:$HOME/.tmux/plugins/tmuxifier/bin
export PATH=$PATH:~/.composer/vendor/bin

# Add Flutter to path
export PATH="$PATH:/Users/titusmoore/.flutter/bin"

# pnpm
export PNPM_HOME="/Users/titusmoore/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

function run_fuzzyfiles() { fuzzyfiles; zle reset-prompt; zle redisplay } 
zle -N run_fuzzyfiles
bindkey '^F' run_fuzzyfiles 

# Testing cd function
i() {
  if [ -n "$1" ]; then
    cd /Volumes/Data/dev/work/internal/$1
  else
    cd /Volumes/Data/dev/work/internal
  fi
}

w() {
  if [ -n "$1" ]; then
    cd /Volumes/Data/dev/work/$1
  else
    cd /Volumes/Data/dev/work
  fi
}

p() {
  if [ -n "$1" ]; then
    cd /Volumes/Data/dev/personal/$1
  else
    cd /Volumes/Data/dev/personal
  fi
}

bindkey -v
bindkey ^R history-incremental-search-backward 
bindkey ^S history-incremental-search-forward

# Add timelog to path
alias tm="/Users/titusmoore/.local/bin/time-management"

eval "$(starship init zsh)"
eval "$(tmuxifier init -)"
RTX_PATH=$(which rtx)
eval "$($RTX_PATH activate zsh)"
export PATH="/usr/local/opt/bison/bin:$PATH"
source "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"

