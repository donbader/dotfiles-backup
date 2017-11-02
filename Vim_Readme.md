# Neovim

# Installed Plugins (Using [vim-plug](https://github.com/junegunn/vim-plug))

```vim
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'ryanoasis/vim-devicons'
Plug 'terryma/vim-expand-region'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'airblade/vim-gitgutter'
Plug 'sjl/gundo.vim'

" Textobj
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'nelstrom/vim-textobj-rubyblock'

" Fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

if(has('nvim'))
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/neocomplete'
endif
```

# Key shortcuts
## `<Leader>` + ? (Leader='<Space>')
- `<Leader>`+`vimrc` Instantly edit vim configurations file.  

- `<Leader>`+`a` Select all file content  

- `<Leader>`+`w` Save file  

- `<Leader>`+`q` Quit file  

## Others

- `gV` Re-select pasted region  

- `z` stop highlighting the result of search  

- `<` and `>` for Indentation  

#### Line Navigation
(Normal Mode)  
`H` beginning of line  
`L` end of line
  
(Insert Mode)  
`Ctrl`+`a` beginning of line  
`Ctrl`+`e` end of line   

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
press `<Leader>`+`<Leader>` in normal mode  
(See https://github.com/easymotion/vim-easymotion)  

#### NERDCommenter
- `;` Comment/Uncomment the current selection or line  

#### NERDTree
- `<Leader>`+`b` Toogle NERDTree ('b' for sidebar)  

#### FuzzyFinder
- `Ctrl`+`p` fuzzy search filename in project root folders  
- `Ctrl`+`F` find keyword(code) in project root folders  
- `:`+`:` fuzzy Commands

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


# Useful sites
http://kaochenlong.com/2012/04/27/screencast-1-learning-vim-from-the-beginning/
http://kaochenlong.com/2011/12/28/vim-tips/



