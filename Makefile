LN=ln -sv
DIR=mkdir -p

all: ../.*

../.config:
	$(DIR) $@

../.config/git: ../.config
	$(LN) git $@

../.config/nvim: ../.config
	$(LN) nvim $@

../.ctags:
	$(LN) ctags/ctags $@

../.editrc:
	$(LN) vimify/editrc $@

../.gemrc:
	$(LN) ruby/gemrc $@

../.inputrc:
	$(LN) vimify/inputrc $@

../.tmux.conf:
	$(LN) tmux/tmux.conf $@

../.zlogin:
	$(LN) zsh/prezto/runcoms/zlogin $@

../.zlogout:
	$(LN) zsh/prezto/runcoms/zlogout $@
