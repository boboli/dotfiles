# Case-insensitive globbing (used in pathname expansion)
setopt -s nocaseglob

export GREP_OPTIONS='--color=auto'

# Prevent less from clearing the screen while still showing colors.
export LESS=-XR

# Set the terminal's title bar.
function titlebar() {
  echo -n $'\e]0;'"$*"$'\a'
}

# SSH auto-completion based on entries in known_hosts.
if [[ -e ~/.ssh/known_hosts ]]; then
  complete -o default -W "$(cat ~/.ssh/known_hosts | sed 's/[, ].*//' | sort | uniq | grep -v '[0-9]')" ssh scp sftp
fi

# turn off annoying ctrl-Q/S issues
stty ixany
stty ixoff -ixon

# Keeps the paths from growing too big
typeset -U path manpath fpath
