# History settings

# Entries beginning with space aren't added into history, and duplicate
# entries will be erased (leaving the most recent entry).
export HISTCONTROL="ignorespace:erasedups"
# Give history timestamps.
export HISTTIMEFORMAT="[%F %T] "
# Lots o' history.
export HISTFILE=~/.histfile
export HISTSIZE=10000
export HISTFILESIZE=10000
export SAVEHIST=10000
bindkey -e
# Easily re-execute the last history command.
alias r="fc -s"
