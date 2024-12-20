# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export XDG_CONFIG_HOME="$HOME/.config"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# available, but disabled: git
plugins=(ssh-agent jq)

if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh-completions:${FPATH}"
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

source $ZSH/oh-my-zsh.sh

source <(fzf --zsh)
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG="pl_PL.UTF-8"
export LC_COLLATE="pl_PL.UTF-8"
export LC_CTYPE="pl_PL.UTF-8"
export LC_MESSAGES="pl_PL.UTF-8"
export LC_MONETARY="pl_PL.UTF-8"
export LC_NUMERIC="pl_PL.UTF-8"
export LC_TIME="pl_PL.UTF-8"
export LC_ALL="pl_PL.UTF-8"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias cdk="cd ~/koleo/"
alias cdkd="cd ~/koleo-docker"
alias dcup="docker-compose up -d && docker-compose attach koleo"
alias dce="docker-compose exec"
alias restart="echo \"Restarting koleo service\"; docker-compose restart koleo"
alias byebug-background="docker-compose exec koleo bash ./byebug-background.sh"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
eval "$(rbenv init - zsh)"
alias nvim-git-session='nvim -S ~/.config/nvim/sessions/session-koleo-$(git branch --show-current | tr -d "\n").vim'

# overwrite oh-my-zsh git plugin command
alias gb="bash kamil/list-my-branches.sh | fzf | xargs git switch"

alias kenv="set -a && source kamil/env-for-rails-console && set +a"

alias icloud="cd /Users/kamilpluszczewicz/Library/Mobile Documents/com~apple~CloudDocs/Rozwój"# alias rubocop="rubocop 2>/dev/null"

alias ssh-staging="ssh serwis@85.194.245.135"
alias ssh-sandbox="ssh serwis@128.204.219.185"

alias ssh-production-12='ssh serwis@192.168.100.12'
alias shh-production-13='ssh serwis@192.168.100.13'
alias ssh-production-22='ssh serwis@192.168.100.22'
alias ssh-production-23='ssh serwis@192.168.100.23'
alias ssh-production-110='ssh serwis@192.168.100.110'
alias ssh-production-111='ssh serwis@192.168.100.111'
alias ssh-production-112='ssh serwis@192.168.100.112'
alias ssh-production-113='ssh serwis@192.168.100.113'
alias ssh-production-210='ssh serwis@192.168.100.210'
alias ssh-production-211='ssh serwis@192.168.100.211'
alias ssh-production-212='ssh serwis@192.168.100.212'
alias ssh-production-213='ssh serwis@192.168.100.213'

# eval "$(zellij setup --generate-auto-start zsh)"

alias merge-to-sandbox='git switch sandbox && git pull && git merge - && git push && git switch -'
alias merge-to-staging='git switch staging && git pull && git merge - && git push && git switch -'

alias ta='tmux attach'
if [[ "$(uname -n)" == "iMac-Kamil.local" ]]; then
  alias rozwoj='cd /Users/kamilpluszczewicz/Library/Mobile\ Documents/com~apple~CloudDocs/Rozwój/Rok\ formacyjny\ 2023-2024 && nvim'
  eval "$(luarocks path)"
  alias ranger="python3 ~/.programs/ranger/ranger.py"
fi

# capture the output of a command so it can be retrieved with ret
# cap () { tee /tmp/capture.out; } # WARN: this clashes with capistrano!

# return the output of the most recent command that was captured by cap
# ret () { cat /tmp/capture.out; }

# Yazi shell wrapper
# From https://yazi-rs.github.io/docs/quick-start
#   > We suggest using this yy shell wrapper that provides the ability
#   > to change the current working directory when exiting Yazi.
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# -- make Ctrl-u delete from cursor to beginning of the line (it doesn't work on zsh by default)
bindkey \^U backward-kill-line

# Ctrl-w - delete a full WORD (including colon, dot, comma, quotes...)
my-backward-kill-word () {
  # Add colon, comma, single/double quotes to word chars
  local WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>:,"'"'"
  zle -f kill # Append to the kill ring on subsequent kills.
  zle backward-kill-word
}
zle -N my-backward-kill-word
bindkey '^w' my-backward-kill-word

my-backward-word () {
  # Add colon, comma, single/double quotes to word chars
  # But it's added locally - it does not affect global variable.
  local WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>:,"'"'"
  zle backward-word
}
zle -N my-backward-word
bindkey '^[B' my-backward-word

my-forward-word () {
  # Add colon, comma, single/double quotes to word chars
  local WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>:,"'"'"
  zle forward-word
}
zle -N my-forward-word
bindkey '^[F' my-forward-word
alias nvim-kickstart='NVIM_APPNAME="nvim-kickstart" nvim'
alias generate-routes-file="rails routes --no-expanded | grep -e '^--\[' -e '^Prefix' -e '^URI' -e '^Controller#Action' -e '^Verb' > /Users/kamilpluszczewicz/koleo/kamil/routes.txt"

alias lg=lazygit

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

