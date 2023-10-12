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

vim.g.autoformat = false -- globally

-- vim.cmd("command! RCpp :!clang++ -std=c++20 -Wall -Wextra -g % -o %:t:r && ./%:t:r")
vim.cmd("command! RCpp :!clang++ -std=c++20 -Wall -Wextra -g % -o %:t:r && ./%:t:r")
vim.cmd("command! RPython :!python3 %")

vim.g.neovide_transparency = 0.7
vim.g.transparency = 0.9
vim.g.neovide_padding_top = 0
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_right = 0
vim.g.neovide_padding_left = 0
-- vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_refresh_rate = 144
vim.g.neovide_refresh_rate_idle = 5
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_antialiasing = true
vim.opt.guifont = { "IosevkaTerm Nerd Font:h11.3" }
-- vim.opt.guifont = { "BlexMono Nerd Font:h10" }
-- vim.opt.guifont = { "FiraCode Nerd Font:h10" }
vim.o.linespace = 2
vim.g.neovide_scale_factor = 1.0

-- vim.cmd("autocmd ColorScheme * highlight Normal guibg=#000000")
-- vim.cmd("autocmd ColorScheme * highlight Constant guifg=#458A45")
-- vim.cmd("autocmd ColorScheme * highlight Statement guifg=#AA7070")
-- vim.cmd("autocmd ColorScheme * highlight Function guifg=#45458A")
-- vim.cmd("autocmd ColorScheme * highlight Type guifg=#AAAA80")
-- vim.cmd("autocmd ColorScheme * highlight @type.builtin gui=none guifg=#989880")

vim.cmd("autocmd ColorScheme * highlight @type.builtin gui=italic guifg=#505050")
vim.cmd("autocmd ColorScheme * highlight Type gui=italic guifg=#606060")
vim.cmd("autocmd ColorScheme * highlight Statement gui=bold guifg=#454545")

vim.cmd("colorscheme eyes")

  do
    -- this autocommand turns relative numbering off when we begin to scroll
    vim.api.nvim_create_autocmd({ "WinScrolled" }, {
      callback = function(ev)
        if vim.o.relativenumber then
          vim.cmd('set relativenumber norelativenumber')
        end
      end
    })

    -- this autocommand turns relative numberin on when we have idled (stopped scrolling)
    vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI"}, {
      callback = function(ev)
        if not vim.o.relativenumber then
          vim.cmd('set relativenumber relativenumber')
        end
      end
    })
  end
