# folder of all of your autocomplete functions
fpath=($HOME/.yadr/zsh/custom_completions $fpath /usr/local/share/zsh/site-functions)

# enable autocomplete function
autoload -U compinit
compinit
