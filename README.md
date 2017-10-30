# Donbader's dotfiles

## Inspired by
- https://github.com/rafeca/dotfiles
- https://github.com/mathiasbynens/dotfiles  


## Oh-my-zsh theme applying
If there is no dependency files (like functions.zsh)
Just replace the `zsh/prompt.zsh` to the `*.zsh-theme` file
```bash
$ curl https://raw.githubusercontent.com/caiogondim/bullet-train.zsh/master/bullet-train.zsh-theme > zsh/prompt.zsh
```

Or if there are a pack of theme -> source redirectly
```bash
$ git clone https://github.com/bhilburn/powerlevel9k zsh/powerlevel9k
$ echo "source '$(dirname $0)/powerlevel9k/powerlevel9k.zsh-theme' > prompt.zsh
```

## Todo
- [ ] iTerm2 configuration
- [ ] MacOs settings configuration (See [awesome-command-line](https://github.com/herrbischoff/awesome-osx-command-line))
- [ ] Make `backup.sh` to backup original dotfiles
- [ ] Make `restore.sh` to restore
- [ ] See https://github.com/wincent/wincent
- [ ] Learn Ansible
    - [Ansible应用介绍] ( http://www.178linux.com/6014 )
    - [現代 IT 人一定要知道的 Ansible 自動化組態技巧 Gitbook] (https://www.gitbook.com/book/chusiang/automate-with-ansible/details)
- [ ] Complete vscode
