# zshrc/80_history
#
# Set up command line history functions
#
# Copyright © 1994–2008 martin f. krafft <madduck@madduck.net>
# Released under the terms of the Artistic Licence 2.0
#
# Source repository: git://git.madduck.net/etc/zsh.git
#

# typeset -g on this one to make warn_create_global happy
typeset -g HISTFILE=$ZVARDIR/history-$HOST
[[ -e $ZVARDIR/history ]] && mv $ZVARDIR/history $HISTFILE
HISTSIZE=10000
SAVEHIST=$HISTSIZE
LISTMAX=1000

# append to the history as line are executed in the shell
setopt inc_append_history

# update the history from other shells as commands are run
setopt share_history

# treat ! specially like csh did
setopt bang_hist

# ignore all duplicates in the history (keeping the most recent)
setopt hist_ignore_all_dups

# save timestamp and duration with each event
setopt extended_history

# properly lock the file on write, if that option exists
setopt hist_fcntl_lock 2>/dev/null

# skip over non-contiguous duplicates when searching history
setopt hist_find_no_dups

# don't store commands starting with a space in the history file
setopt hist_ignore_space

# don't store history/fc -l invocations
setopt hist_no_store

# remove superfluous blanks from each command line
setopt hist_reduce_blanks

# vim:ft=zsh
