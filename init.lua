-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.o.encoding = "utf-8" -- set encoding
vim.o.showmatch = true -- show matching
vim.o.ignorecase = true -- case insensitive
vim.o.hlsearch = true -- highlight search
vim.o.incsearch = true -- incremental search
vim.o.tabstop = 4 -- number of columns occupied by a tab
vim.o.softtabstop = 4 -- see multiple spaces as tabstops so <BS> does the right thing
vim.o.expandtab = true -- converts tabs to white space
vim.o.shiftwidth = 4 -- width for autoindents
-- vim.o.numberwidth = 2
vim.o.wildmode = "longest,list" -- get bash-like tab completions
vim.o.mouse = "a" -- enable mouse click
vim.o.clipboard = "unnamedplus" -- using system clipboard
vim.cmd("filetype plugin on")
vim.o.cursorline = true
vim.o.cursorcolumn = true
-- vim.o.ttyfast = true -- Speed up scrolling in Vim
-- vim.o.signcolumn = "number" -- signcolumn to numbers
vim.cmd("hi WhichKeyFloat ctermbg=0") -- whichkey background to termguicolors
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 25
-- vim.o.fillchars = "fold:\\ ,vert:\\│,eob:\\ ,msgsep:‾" -- remove '~'
-- vim.cmd('autocmd FOld fold:\\ ,vert:\\│,eob:\\ ,msgsep:‾')
vim.opt.fillchars = { eob = " " }
vim.o.background = "dark"
vim.o.cmdheight = 0
vim.o.termguicolors = true
vim.o.swapfile = false
vim.o.splitbelow = true

vim.cmd("command! RCpp :!clang++ -std=c++20 -Wall -Wextra -g % -o %:t:r && ./%:t:r")
vim.cmd("command! RPython :!python3 %")

vim.g.neovide_transparency = 0.9
vim.g.transparency = 0.9
vim.g.neovide_padding_top = 0
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_right = 0
vim.g.neovide_padding_left = 0
-- vim.opt.guifont = { "Berkeley Mono Variable:h10.5" }
-- vim.opt.guifont = { "OperatorMono Nerd Font Medium:h10.3" }
vim.opt.guifont = { "Iosevka Fixed:h10" }
vim.o.linespace = 2
vim.g.neovide_scale_factor = 1.0

-- vim.cmd("autocmd ColorScheme * highlight Normal guibg=#0e0e0e")
vim.cmd("autocmd ColorScheme * highlight String gui=italic guifg=#808F80")
vim.cmd("autocmd ColorScheme * highlight Constant guifg=#808F80")
vim.cmd("autocmd ColorScheme * highlight Statement guifg=#7F7070")
vim.cmd("autocmd ColorScheme * highlight Function guifg=#90909F")
vim.cmd("autocmd ColorScheme * highlight Type guifg=#8F8F80")
vim.cmd("autocmd ColorScheme * highlight @type.builtin gui=none guifg=#8F8F80")
vim.cmd("colorscheme eyes")
