# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# VIM friendly setup
# Use gnome-tweaks to use Caps-Lock as Ctrl
# xcape (needs installing) to use Ctrl_L as escape
xcape -t 500 -e 'Caps_Lock=Escape'
xcape -t 500 -e 'Control_L=Escape'
xcape -t 500 -e 'Control_R=Escape'
# xcape -t 500 -e 'Shift_R=Tab'

# My local setup
export MYAPP=$HOME/MyApplications
export DOTS=$MYAPP/dots  # DotFiles Location
export PATH=$PATH:$MYAPP/bin

# Add local installation directory
export GOPATH=$MYAPP/go-pkgs

# Add Android Studio
export PATH=$PATH:$HOME/MyApplications/android-studio/bin
alias android="nohup studio > /dev/null &"

source ~/.condarc
