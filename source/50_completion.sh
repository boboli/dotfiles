# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/Users/bobo/.zshrc'

fpath=(/usr/local/share/zsh-completions $fpath)

autoload -Uz compinit
compinit
autoload -U select-word-style
select-word-style bash
# End of lines added by compinstall

source ~/compiles/arcanist/resources/shell/bash-completion
