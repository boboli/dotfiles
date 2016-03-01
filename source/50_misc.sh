# Prevent less from clearing the screen while still showing colors.
export LESS=-XR

# Set the terminal's title bar.
function titlebar() {
  echo -n $'\e]0;'"$*"$'\a'
}

# turn off annoying ctrl-Q/S issues
stty ixany
stty ixoff -ixon
