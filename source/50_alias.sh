alias scpresume="rsync -hP --rsh=ssh"
alias ipython="ipython -i"
alias glog="git log --all --decorate --graph --abbrev-commit"

alias pygrep="find . -name '*.py' | xargs grep --color=auto"
alias pyclean="find . -name '*.pyc' | xargs rm"
alias swpclean="find . -name '*.swp' | xargs rm"
if is_osx; then
    alias vim="mvim -v"
fi
