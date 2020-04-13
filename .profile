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

# ssh-agent start
eval `keychain --eval --agents ssh id_rsa`

# default programs
export TERMINAL=st
export EDITOR=nvim
export VISUAL=nvim
export FILEMANAGER=ranger
export COLORTERM=truecolor

# Config directories:
export ZDOTDIR="$HOME/.config/zsh"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Nodejs
VERSION=v12.16.1
DISTRO=linux-x64
export PATH=/usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:$PATH

# NPM
export PATH=~/.npm-global/bin:$PATH

# add local bin
export PATH=~/.local/bin:$PATH

# ~/ clean-up

