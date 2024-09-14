#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -al --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
#PS1='[\u@\h \w]\$ '


open_in_nvim(){
	nvim "$(fzf)"
}
source /usr/share/git/completion/git-prompt.sh

bind -x '"\C-f": open_in_nvim'
PS1='[\u \w$(__git_ps1 " (%s)")]\$ '

fastfetch
