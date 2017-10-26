# Run tmux if exists
if brew ls --versions tmux > /dev/null; then
	[ -z $TMUX ] && exec tmux && echo "Launched tmux"
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
plugins=(git task extract)

source $ZSH/oh-my-zsh.sh


# Welcome Message
RED='\033[0;31m'
NC='\033[0m' # No Color
echo "Get your ass out of the ${RED}fucking comfort zone${NC}!!"


# powerlevel9k config
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs root_indicator background_jobs)
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_left"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=5
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX='%F{white}\u256D\u2500%f'
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='%F{white}\u2570>>>%f'
