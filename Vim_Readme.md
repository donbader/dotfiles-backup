# Neovim

# Installed Plugins (Using [vim-plug](https://github.com/junegunn/vim-plug))
- Plug 'tpope/vim-fugitive'
- Plug 'scrooloose/nerdtree'
- Plug 'jistr/vim-nerdtree-tabs'
- Plug 'vim-airline/vim-airline'
- Plug 'morhetz/gruvbox'
- Plug 'easymotion/vim-easymotion'
- Plug 'scrooloose/nerdcommenter'
- Plug 'kien/ctrlp.vim'
- Plug 'terryma/vim-multiple-cursors'
- Plug 'Shougo/deoplete.nvim'
- Plug 'rking/ag.vim'
- Plug 'ryanoasis/vim-devicons'
- Plug 'terryma/vim-expand-region'
- Plug 'christoomey/vim-tmux-navigator'
- Plug 'tpope/vim-surround'
- Plug 'nelstrom/vim-textobj-rubyblock'
- Plug 'kana/vim-textobj-user'


# Key shortcuts
## `<Leader>` + ? (Leader='<Space>')
- `<Leader>`+`vimrc` Instantly edit vim configurations file.  

- `<Leader>`+`a` Select all file content  

- `<Leader>`+`s` Save file  

- `<Leader>`+`q` Quit file  

## Others

- `gV` Re-select pasted region  

- `<Esc>` `<Esc>` stop highlighting the result of search  



#### Tab Navigation
**`-` means "Tab"**
`-=` go to next tab  
`=-` go to previous tab  
`-n` new tab  
`-x` close current tab  
`-o` current tab only  
`-q` quit all tabs  


#### Window Navigation
**`s` means "Split"**
`s` + `left` `right` `up` `down` left/right/up/down split a window(actually a buffer)  
`s` + `h` `j` `k` `l` same operations

# Plugins Usage

#### Select region
keep pressing `v` in normal mode  
(See https://github.com/terryma/vim-expand-region)  

#### Easy-Motion
press `<Leader>` in normal mode  
(See https://github.com/easymotion/vim-easymotion)  

#### NERDCommenter
- `;;` Comment/Uncomment the current selection or line  

#### NERDTree
- `<Leader>`+`b` Toogle NERDTree ('b' for sidebar)  

#### Ctrlp
- `Ctrl` `p` fuzzy search filename in project root folders  

#### Ag
- `<Leader>`+`F` find keyword(code) in project root folders  

#### vim-multiple-cursors
- `<Ctrl>` `n` next matched region  
- `<Ctrl>` `p` back to previous matched region  
- `<Ctrl>` `x` ignore current matched region  

#### vim-surround
(after selection) `S` `symbol`
e.g.  
```
  Hello Wolrd
```

visS"

```
  "Hello Wolrd"
```

### GitGutter
`]h` to navigate to next hunk  
`[h` to navigate to previous hunk  
`<Leader>`+`hl` toggle gitgutter highlighting  

### Gundo
`<Leader>`+`gu` toggle the undo tree  

(See https://github.com/tpope/vim-surround)  

# Tips (macOS)
1. [ How to get Cmd-left/right working with iTerm2 and Vim (without requiring .vimrc changes)? ](https://stackoverflow.com/questions/9595633/how-to-get-cmd-left-right-working-with-iterm2-and-vim-without-requiring-vimrc)



# Todo
- [ ] args usage
- [ ] folding usage
- [ ] Plugin:fugitive usage
- [ ] tabs display not well (ugly?)


# Useful sites
http://kaochenlong.com/2012/04/27/screencast-1-learning-vim-from-the-beginning/
http://kaochenlong.com/2011/12/28/vim-tips/



