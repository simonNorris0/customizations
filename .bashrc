# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH
#export PATH=$PATH:$HOME/code/arduino/bin #arduino-cli
#export PATH=$PATH:$HOME/bin/jgrasp206_19/jgrasp/bin

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias rm="rm -i" # be safe
alias ll="ls --group-directories-first --color=always -Glav"
alias ls="ls --group-directories-first --color=always -Gv"
#alias ncspot="flatpak run io.github.hrkfdn.ncspot"


if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
#umask 077 #no read privileges for others, fedora does not like this
umask 022  #full read privileges for others

cal

unset rc
