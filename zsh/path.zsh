export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
export PATH=/usr/local/bin:$PATH
export PATH="$(greadlink --canonicalize $(dirname $0)/../bin):$PATH"
export PATH=~/bin:$PATH

# rvm 
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
