HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
export KEYTIMEOUT=1
bindkey -v
zstyle :compinstall filename '/home/phi/.zshrc'
autoload -Uz compinit promptinit
compinit
promptinit
prompt adam2
zstyle ':completion:*' menu select
(cat ~/.cache/wal/sequences &)
cat ~/.cache/wal/sequences
source ~/.cache/wal/colors-tty.sh

export DOTS_LOC=/home/phi/dots
export PATH=$PATH:$HOME/.scripts:$HOME/.grapher
alias ls='lsd --color=auto'
alias buildconf='vim '$DOTS_LOC'/script.conf'
alias la='lsd --color=auto -la'
alias vimrc='vim ~/.vimrc'
alias rangerrc='vim ~/.config/ranger/rc.conf'
alias zshrc='vim ~/.zshrc'
alias i3conf='vim ~/.config/i3/config'
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme
