# default editor
export EDITOR="nano"

# colors
export CLICOLOR=1

# history
export HISTSIZE=1048576;
export HISTFILE="$HOME/.bash_history"
export SAVEHIST=$HISTSIZE
export HISTCONTROL=ignoredups:erasedups:ignorespace

# Autocorrect typos in path names when using cd
shopt -s cdspell

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Recursive globbing with "**"
if [ ${BASH_VERSINFO[0]} -ge 4 ]; then
  shopt -s globstar
fi

# append to the history file, don't overwrite it
shopt -s histappend

# Case-insensitive globbing
shopt -s nocaseglob

# Do not autocomplete when accidentally pressing Tab on an empty line
shopt -s no_empty_cmd_completion

# enable programmable completion features
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    source /etc/bash_completion
fi