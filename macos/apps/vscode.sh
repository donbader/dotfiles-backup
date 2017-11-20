# Link
# ln -sf `pwd`/$(dirname $0)/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
# ln -sf `pwd`/$(dirname $0)/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
# ln -sf `pwd`/$(dirname $0)/vscode/snippets ~/Library/Application\ Support/Code/User/snippets
# ln -sf `pwd`/$(dirname $0)/vscode/projects.json ~/Library/Application\ Support/Code/User/projects.json

rm -rf ~/Library/Application\ Support/Code/User
ln -sf `pwd`/$(dirname $0)/vscode/User ~/Library/Application\ Support/Code
