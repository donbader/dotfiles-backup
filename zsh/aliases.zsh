# Standard aliases
alias ll='ls -l'
alias lla='ls -lA'
alias la='ls -A'
alias lt='ls -lArt'
alias sl=ls
alias d='dirs -v | head -10'
alias cls='clear'

# Custom functions
(! declare -f cdandls > /dev/null ) && cdandls(){ cd $1 && ls; } && alias cd="cdandls"


# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Applications
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias vim='/usr/local/bin/nvim'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | \
awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
	alias "${method}"="lwp-request -m '${method}'"
done

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# Remove .DS_Store recursively
alias rmds='find . -name ‘.DS_Store’ -type f -delete'

# re-source ~/.zshrc
alias reloadrc='source ~/.zshrc'

# vscode = code
alias vscode='code'

# Rails
alias rails-reset-db='bundle exec rake db:drop db:setup db:migrate'
alias rails-rbm='bundle exec rake db:rollback db:migrate'

# Coinmon
alias coin='coinmon -c sgd -p' # My balances
alias cointop='coinmon -t 20' # Top 20 rank coins
alias coinedit='vim ~/.Coinmon/portfolio.json'

glf() {
	local g=(
		git log
		--graph
    --format='%C(red)%h -%C(yellow)%d %C(auto)%s %C(blue)%an %C(green)(%ad)'
		--color=always
		"$@"
	)

	local fzf=(
		fzf
		--ansi
		--reverse
		--tiebreak=index
		--no-sort
		--bind=ctrl-s:toggle-sort
		--preview 'f() { set -- $(echo -- "$@" | grep -o "[a-f0-9]\{7\}"); [ $# -eq 0 ] || git show --color=always $1; }; f {}'
    --bind "ctrl-m:execute:
              (grep -o '[a-f0-9]\{7\}' | head -1 |
              xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
              {}
FZF-EOF"
	)
	$g | $fzf
}
