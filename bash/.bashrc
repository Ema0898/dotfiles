# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

## Change prompt
# Get git branch function
parse_git_branch() {
     FOO=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1:/'`
        if [ ! -z "$FOO" ]; then echo $FOO; fi
}
 
# Define color variables
BOLD="\[\e[1m\]"
RESETBOLD="\[\e[22m\]"
GREEN="\[\e[32m\]"
RED="\[\e[31m\]"
CYAN="\[\e[36m\]"
RESET="\[\e[0m\]"
BLUE="\[\e[0;34m\]"
PURPLE="\[\e[1;35m\]"
NEWLINE="\n"

# Set PS1
PS1="${BLUE}${BOLD}\$(parse_git_branch)${RESETBOLD}${RESET}${CYAN}${BOLD}\w${RESETBOLD}${RESET}${NEWLINE}\$( [ \$? -eq 0 ] && echo \"${GREEN}\" || echo \"${RED}\" )❯${RESET} "

# zoxide configuration
eval "$(zoxide init --cmd cd bash)"
source /usr/share/fzf/shell/key-bindings.bash
