# bring in the git-prompt helper
if [ -f "/usr/lib/git-core/git-sh-prompt" ]; then
    # debian
    source "/usr/lib/git-core/git-sh-prompt"
elif [ -f "/etc/profile.d/git-prompt.sh" ]; then
    # git for windows
    source "/etc/profile.d/git-prompt.sh"
fi

# user@machine [system] ~/local/path [(git information)]
# $ <cursor>
PS1='\[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\033[32m\]\u@\h \[\033[35m\]$MSYSTEM \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ '

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# If this is an xterm set the title to dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\w\a\]$PS1"
    ;;
*)
    ;;
esac