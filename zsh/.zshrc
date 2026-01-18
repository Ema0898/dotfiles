## Set prompt
# Enable substitution in the prompt.
setopt prompt_subst

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '%F{blue}%b%f%F{red}%u%f:'

# Set variables
NEWLINE=$'\n'

PROMPT='${vcs_info_msg_0_}%F{cyan}%B%~%b%f'"$NEWLINE"'%F{%(?.green.red)}❯%f '

## Set history
HISTFILE=~/.history
HISTSIZE=100000
SAVEHIST=100000
# incremental append history
setopt inc_append_history
# share history across multiple zsh sessions
setopt share_history
# append to history
setopt append_history
# expire duplicates first
setopt hist_expire_dups_first
# do not store duplications
setopt hist_ignore_dups
#ignore duplicates when searching
setopt hist_find_no_dups
# removes blank lines from history
setopt hist_reduce_blanks

# Key binds
bindkey -e
bindkey "\e[A" history-beginning-search-backward
bindkey "\e[B" history-beginning-search-forward
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

# color
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# auto completion
autoload -U compinit && compinit
setopt auto_cd

## menu-style
zstyle ':completion:*' menu select
zstyle ':completion:*' special-dirs true
# case insensitive
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# Tab completion colors
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}


# zoxide
eval "$(zoxide init --cmd cd zsh)"
source /usr/share/fzf/key-bindings.zsh
