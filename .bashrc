export GPG_TTY=`tty`

if [[ $- != *i* ]]; then
    # Shell is non-interactive.  Be done now!
    return
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# keep this line at the bottom of ~/.bashrc
[ -x /bin/fish ] && SHELL=/bin/fish exec /bin/fish
