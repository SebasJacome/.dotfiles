#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -al --color=auto'
alias la='ls -a --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias ~='cd ~'
alias ..='cd ..'
alias ff='fastfetch --logo-color-1 reset_blink_dim_blue --logo-color-2 light_blue'

#PS1='[\u@\h \w]\$ '


open_in_nvim(){
	nvim "$(fzf)"
}
source /usr/share/git/completion/git-prompt.sh
source /usr/share/nvm/init-nvm.sh

bind -x '"\C-f": open_in_nvim'
PS1='[\u \w$(__git_ps1 " (%s)")]\$ '

ff
