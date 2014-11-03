# path, the 0 in the filename causes this to load first
export PATH=$PATH:$HOME/.yadr/bin:$HOME/.yadr/bin/yadr
if [[ -e man ]]; then
    export MANPATH=`manpath`:$HOME/.yadr/man
fi
