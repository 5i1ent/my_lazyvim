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
vim.o.numberwidth = 1
vim.o.wildmode = "longest,list" -- get bash-like tab completions
vim.o.mouse = "a" -- enable mouse click
vim.o.clipboard = "unnamedplus" -- using system clipboard
vim.cmd("filetype plugin on")
vim.o.cursorline = true
vim.o.cursorcolumn = true
vim.o.ttyfast = true -- Speed up scrolling in Vim
-- vim.o.signcolumn = "number" -- signcolumn to numbers
vim.cmd("hi WhichKeyFloat ctermbg=0") -- whichkey background to termguicolors
-- vim.o.number = true
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
-- vim.opt.listchars:append("space:·")

vim.opt.guicursor = {
    -- 'n-v-c:block-Cursor/lCursor-blinkwait700-blinkoff400-blinkon500',
    "i-ci-ve:ver25-Cursor/lCursor-blinkwait700-blinkoff400-blinkon500",
    "r-cr:hor20-Cursor/lCursor-blinkwait700-blinkoff400-blinkon500",
}
vim.g.autoformat = false -- globally

-- vim.cmd("command! RCpp :!clang++ -std=c++20 -Wall -Wextra -g % -o %:t:r && ./%:t:r")
vim.cmd("command! RCpp :!g++ -std=c++20 -O3 -Wall -Wextra -g % -o %:t:r && ./%:t:r")
vim.cmd("command! RPython :!python3 %")

vim.g.neovide_transparency = 0.9
vim.g.transparency = 0.9
vim.g.neovide_padding_top = 0
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_right = 0
vim.g.neovide_padding_left = 0
vim.g.neovide_refresh_rate = 144
vim.g.neovide_refresh_rate_idle = 5
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_antialiasing = true
-- vim.opt.guifont = { ":h10" }
-- vim.opt.guifont = { "UbuntuMono Nerd Font:h11" }
vim.opt.guifont = { "Berkeley Mono Variable:h9.5" }
vim.o.linespace = -1
vim.g.neovide_scale_factor = 1.0

vim.cmd("autocmd ColorScheme * highlight NormalFloat guibg=#000000")
vim.cmd("autocmd ColorScheme * highlight CursorLine guibg=#070707")
vim.cmd("autocmd ColorScheme * highlight CursorColumn guibg=#070707")
vim.cmd("autocmd ColorScheme * highlight Pmenu guibg=#000000")
-- vim.cmd("autocmd ColorScheme * highlight Statement gui=bold")
-- vim.cmd("autocmd ColorScheme * highlight Function guifg=#606060")
-- vim.cmd("autocmd ColorScheme * highlight @type.builtin gui=italic guifg=#555555")
-- vim.cmd("autocmd ColorScheme * highlight Special guifg=#AAAAAA")

vim.cmd(
    "autocmd InsertLeave * lua if require('luasnip').session.current_nodes[vim.api.nvim_get_current_buf()] then require('luasnip').unlink_current() end"
)

-- require("lint").linters_by_ft = {
--     cpp = { "cpplint" },
-- }
-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
--     callback = function()
--         require("lint").try_lint()
--     end,
-- })
--
vim.g.zenbones_transparent_background = true
vim.g.zenbones_lightness = "dim"
vim.cmd("colorscheme zenbones")
