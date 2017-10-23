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
## `<Leader>` + ? (Leader=',')
#### `<Leader>` `vimrc`
Instantly edit vim configurations file.  

#### `<Leader>` `a`
Select all file content  

#### `<Leader>` `[`    or   `<Leader>` `]`
Indent to left / right  

#### Quicker tab movement
- `<Leader>` `<Tab>` Switch to next tab  

- `<Leader>` `1`~`9` Switch to #th Tab  

- `<Leader>` `t` Create new empty tab  

- `<Leader>` `w` Close current tab  

#### Quicker window movement
- `<Ctrl>` `h` `j` `k` `l` Switch between every windows (Including tmux)  


#### `gV`
Re-select pasted region

#### `<Esc>` `<Esc>`
stop highlighting the result of search


#### Quicker file operations
- `<Leader>` `q` Close all windows and tabs  

- `<Leader>` `s` Save current file  

# Plugins Usage

#### Select region
keep pressing `v` in normal mode  
(See https://github.com/terryma/vim-expand-region)  

#### Easy-Motion
press `s` to in normal mode  
(See https://github.com/easymotion/vim-easymotion)  

#### NERDCommenter
- `<Leader>` `;` Comment/Uncomment the current selection or line  

#### NERDTree
- `<Leader>` `t` Toogle NERDTree (like file explorer)  

#### Ctrlp
- `Ctrl` `p` fuzzy search filename in project root folders  

#### Ag
- `:a/` find keyword(code) in project root folders  

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


