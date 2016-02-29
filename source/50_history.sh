# History settings

# Allow use to re-edit a faild history substitution.
setopt -s histreedit
# History expansions will be verified before execution.
setopt -s histverify

# Entries beginning with space aren't added into history, and duplicate
# entries will be erased (leaving the most recent entry).
export HISTCONTROL="ignorespace:erasedups"
# Give history timestamps.
export HISTTIMEFORMAT="[%F %T] "
# Lots o' history.
export HISTSIZE=10000
export HISTFILESIZE=10000
bindkey -e
# Easily re-execute the last history command.
alias r="fc -s"
