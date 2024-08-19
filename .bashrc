#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -al --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
PS1='[\u@\h \W]\$ '


open_in_nvim(){
	nvim "$(fzf)"
}

bind -x '"\C-f": open_in_nvim'
