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

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

## keyboard delay setting
xset r rate 290 40
## black screen after 120 second
xset s 120

## after 10 minute pm-suspend
#xautolock -time 10 -locker "sudo pm-suspend" &

## disable touchpad
#xinput --disable 11
## disable touchpad edge scrolling
synclient VertEdgeScroll=0

## 드랍박스 스타트
#dropbox start
## 텔레그램 스타트
#./Documents/Telegram/Telegram

## natural scrolling setting
synclient HorizTwoFingerScroll=1
synclient HorizScrollDelta=-111
synclient VertScrollDelta=-111



## xrandr setting create 2560 mode
xrandr --newmode 2560x1440@60R 241.50 2560 2608 2640 2720 1440 1443 1448 1481 +hsync -vsync
xrandr --addmode HDMI1 2560x1440@60R
#xrandr --output HDMI1 --mode 2560x1440@60R --auto --above eDP1

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
