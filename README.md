# My Minimal Vim Config file

This is my minimal Vim and Neovim config! Let WhichKey and NERDTree make my life easier.

Update(8/24. 2022):

Well, I think it is no longer "Minimal" XDD, it's getting bigger.

## Bug fixed:

After set 256 color support, now GUI run on Git Bash (on Windows) can also looks pretty.

## Before Started

Install VimPlug from [VimPlug](https://github.com/junegunn/vim-plug) Repo, select Vim version. If you use Neovim, install the one for Neovim.

Make directory: `~/.config/vim/plugin`. If you use Neovim , check if `~/.config/nvim/plugged/` is made.

## Quick Start

1. Run `git clone https://github.com/i-am-harveyt/MyVimConfig.git`.

2. Move `vimrc` to root directory, and rename `vimrc` to `.vimrc` If you use Neovim, move `init.vim` to `.config/nvim/`.

3. Run `vim +PlugInstall`.


## Features

The only feature is that, this can make your life a tiny little bit easier.

If your life is easy enough, you can say there's no feature. 

## Packages which you may have to read their README file that I used in this Config.

[WhichKey](https://github.com/liuchengxu/vim-which-key): A great thing for people who don't(or cannot) remember commands like me. Hit Space, good thing happends.

NERDTree: A side bar that list all your files in this directory, you can also navigate in it, which makes your life easier.(I'm not sure which is the original repo)

[Commentary](https://github.com/tpope/vim-commentary): Space+/, add/remove comment

[CoC](https://github.com/neoclide/coc.nvim): Auto-completion.

## Remove

Remove config file and plugin folder

