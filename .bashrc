[ -n "$PS1" ] && source ~/.bash_profile

# load nvm
# this is left out of the shell-agnostic files because oh-my-zsh loads it
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
