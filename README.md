# About
I mostly use zsh, but like having the option of defaulting to bash.

# Conventions Used
- The file `~/.profile` is the single shell-agnostic entry point; it will source
a number of files that will actually do things.
- The files `~/.zprofile` (sourced by zsh) and `~/.bash_profile` (sourced by
bash) should source `~/.profile` as well as their respective `~/*rc`
files, and do nothing else. 
- The `~/*rc` files will actually do things.