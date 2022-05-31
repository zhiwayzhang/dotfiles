ZSH_THEME="clean"

plugins=(git sudo zsh-autosuggestions zsh-syntax-highlighting vscode)

source $ZSH/oh-my-zsh.sh
alias setproxy="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"
alias unsetproxy="unset https_proxy http_proxy all_proxy"
alias vim="nvim"
alias c="clear"
alias ls="exa"
alias ra="ranger"
alias myip="curl -L ip.tool.lu"
alias bpython="/usr/local/bin/python3"
alias bpip="/usr/local/bin/pip3"
alias exgo="CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go"
alias 🐍="python3"
alias 🐍🐍="bpython"
alias pg++="g++ -g -w -std=c++11"
alias ts="tmux split-window -h"
alias tsh="tmux split-window"
