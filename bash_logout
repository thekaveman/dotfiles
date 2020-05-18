# executed by bash(1) when login shell exits.

# when leaving the console clear the screen to increase privacy
if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi

# close ssh-agent if running
if [ -n "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -k`
fi
