# Run tmux if exists
if brew ls --versions tmux > /dev/null; then
	[ -z $TMUX ] && exec tmux
else
    echo "tmux isn't installed. (brew install tmux) "
fi


# Path to your oh-my-zsh installation.
export ZSH="$(dirname $0)/oh-my-zsh"

# Never auto apply the theme
ZSH_THEME=""

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
source $ZSH/oh-my-zsh.sh

# For bullet-train prompt custom segments
# See https://github.com/caiogondim/bullet-train.zsh#prompt

# hide context user@hostname
export BULLETTRAIN_CONTEXT_DEFAULT_USER=`whoami`

# Welcome Message
RED='\033[0;31m'
NC='\033[0m' # No Color
echo "Get your ass out of the ${RED}fucking comfort zone${NC}!!"

