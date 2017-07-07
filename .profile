# I use ~/.profile as strictly a place to source other,
# more organized files.
#
# Files sourced should be relative shell-agnostic, which,
# to me, means working in bash and zsh.
#
# .extra     can be used for un-commited settings
# .exports   sets common env variables and handles color/highlighting
# .aliases   is for shell-agnostic aliases
# .functions is for shell-agnostic functions
#

for file in $HOME/.{exports,aliases,functions,extra}; do
    [ -r "$file" ] && source "$file"
done


export PATH="$HOME/.cargo/bin:$PATH"
