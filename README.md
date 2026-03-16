myenv
=====

.zshrc, .vimrc, ...


## Install

```sh
$ git clone https://github.com/N4NU/.myenv ~/.myenv
```
<!---
$ git submodule init
$ git submodule update
```-->

## Setup
```sh
$ ./setup (vim|zsh)
```

## Maintenance audit (2026-03)
- tmux の `mode-mouse` は現行版で廃止されていたため、`mouse on` に更新しました。
- Vundle の旧リポジトリ `gmarik/Vundle.vim` は現在の `VundleVim/Vundle.vim` に更新しました。
- Vim プラグイン管理は `pathogen` / `NeoBundle` / `Vundle` の併用で、特に NeoBundle は長期間メンテされていないレガシー構成です。
- `vim-scala` や `vim-coffee-script` など、現在は利用頻度が低い可能性のあるプラグインが残っています。

## Legacy dependencies
[vim-pathogen](https://github.com/tpope/vim-pathogen)  
[NeoBundle](https://github.com/Shougo/neobundle.vim) - legacy / unmaintained  
[Vundle](https://github.com/VundleVim/Vundle.vim) - legacy  
[Vim](https://www.vim.org/)  
[Zsh](https://www.zsh.org/)  

