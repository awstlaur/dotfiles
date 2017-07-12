################################################################################
## Enviornment #################################################################
################################################################################

# Append local bins to PATH
PATH="$PATH:$HOME/bin"
PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$HOME/.cargo/bin"

export PATH

# we do not _load_ nvm here, as oh-my-zsh has a plugin to take care of that.
export NVM_DIR=$HOME/.nvm

export EDITOR="vim"

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

################################################################################
## Color #######################################################################
################################################################################


### LESS ###
# Enable syntax-highlighting in less.
# Depends on gnu source-highlight
export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=" -R "
