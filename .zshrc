[[ $- != *i* ]] && return 

unsetopt NOCASE_GLOB

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM="auto"
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '(%b)'
setopt prompt_subst


function open_in_nvim() {
    { local file=$(command fzf) } < /dev/tty
    if [[ -z $file ]]; then
        return
    fi
    nvim "$file"
}

zle -N open_in_nvim_widget open_in_nvim

alias ~="cd ~"
alias ..='cd ..'
alias ls="ls --color=auto"
alias ll="ls -la --color=auto"
alias la="ls -a --color=auto"
alias grep="grep --color=auto"
alias md="mkdir -p"
alias vim="nvim"
alias ff='fastfetch'
alias python="python3"

bindkey '^F' open_in_nvim_widget
PS1='%F{216}sj %F{blue}%1~%F{72} ${vcs_info_msg_0_}%f \$ '

