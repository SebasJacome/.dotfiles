export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM="auto"
HISTSIZE= HISTFILESIZE=

[[ $- != *i* ]] && return

alias ls='ls --color=auto --group-directories-first'
alias ll='ls -al --color=auto --group-directories-first'
alias la='ls -a --color=auto --group-directories-first'
alias md='mkdir -pv'
alias rd='rm -rfv'
alias grep='grep --color=auto'
alias vim='nvim'
alias ~='cd ~'
alias ..='cd ..'
alias ff='fastfetch --logo-color-1 reset_blink_dim_blue --logo-color-2 light_blue'
alias mv='mv -v'
alias cp='cp -v'
alias rm='rm -v'
alias asdf='setxkbmap -layout us,us -variant ,intl -option grp:alt_space_toggle'
alias xmod='xmodmap .Xmodmap'
alias ddisplay='xrandr --output HDMI-2 --left-of eDP-1 --auto && ~/.fehbg'
alias odisplay='xrandr --output eDP-1 --off --output HDMI-2 --auto && ~/.fehbg'
alias fehbg='feh --no-fehbg --bg-fill'
alias shot='flameshot & disown && flameshot gui'
alias copa='xmodmap -e "add mod1 = Alt_L"'

#PS1='[\u@\h \w]\$ '

set -o vi
bind -f ~/.inputrc
stty -ixon
open_in_nvim(){
	nvim "$(fzf)"
}

append_path () {
    case ":$PATH:" in
        *:"$1":*)
            ;;
        *)
            PATH="${PATH:+$PATH:}$1"
    esac
}

source /usr/share/git/completion/git-prompt.sh
source /usr/share/nvm/init-nvm.sh

export PATH=$PATH:~/.local/bin

bind -x '"\C-f": open_in_nvim'
PS1='\[\e[38;5;216m\]sj \[\e[0;34m\]\w\[\e[38;5;72m\]$(__git_ps1 " \[\e[38;5;72m\](\[\e[38;5;203m\]%s\[\e[38;5;72m\])")\[\e[0m\] \$ '

ff
. "$HOME/.cargo/env"
. "/home/sjacome/.deno/env"


