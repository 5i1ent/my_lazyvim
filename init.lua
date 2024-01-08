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
-- vim.o.termguicolors = true
vim.o.swapfile = false
vim.o.splitbelow = true
-- vim.opt.listchars:append("space:·")

vim.opt.guicursor = {
    "n-v-c:block-Cursor/lCursor-blinkwait700-blinkoff700-blinkon700",
    "i-ci-ve:ver25-Cursor/lCursor-blinkwait700-blinkoff700-blinkon700",
    "r-cr:hor20-Cursor/lCursor-blinkwait700-blinkoff700-blinkon700",
}
vim.g.autoformat = false -- globally

-- vim.cmd("command! RCpp :!clang++ -std=c++20 -Wall -Wextra -g % -o %:t:r && ./%:t:r")
vim.cmd("command! RCpp :!g++ -std=c++20 -O3 -Wall -Wextra -g % -o %:t:r && ./%:t:r")
vim.cmd("command! RPython :!python3 %")

vim.g.neovide_transparency = 0.7
vim.g.transparency = 1.0
vim.g.neovide_padding_top = 0
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_right = 0
vim.g.neovide_padding_left = 0
vim.g.neovide_refresh_rate = 144
vim.g.neovide_refresh_rate_idle = 5
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_antialiasing = true
-- vim.g.neovide_cursor_animation_length = 0.2
-- vim.g.neovide_cursor_trail_size = 0.0
-- vim.g.neovide_scroll_animation_length = 1.0
vim.opt.guifont = { "IBM Plex Mono:h6.3" }
-- vim.opt.guifont = { "Input Mono Compressed:h9.8" }
vim.o.linespace = -1
vim.g.neovide_scale_factor = 1.0

vim.cmd("autocmd ColorScheme * highlight Normal guibg=#000000")
vim.cmd("autocmd ColorScheme * highlight NormalFloat guibg=#000000")
vim.cmd("autocmd ColorScheme * highlight Pmenu guibg=#000000")

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

local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
    opts = opts or {}
    opts.border = opts.border or "single"
    return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

local cmp = require("cmp")
cmp.setup({
    window = {
        completion = {
            cmp.config.window.bordered(),
            border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
        },
        documentation = {
            cmp.config.window.bordered(),
            border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
        },
    },
})

local zenwritten_lualine = require("lualine.themes.zenwritten")
zenwritten_lualine.normal.a.bg = ""
zenwritten_lualine.normal.b.bg = ""
zenwritten_lualine.normal.c.bg = ""
zenwritten_lualine.insert.a.bg = ""
zenwritten_lualine.command.a.bg = ""
zenwritten_lualine.visual.a.bg = ""
zenwritten_lualine.replace.a.bg = ""
zenwritten_lualine.inactive.a.bg = ""
zenwritten_lualine.inactive.b.bg = ""
zenwritten_lualine.inactive.c.bg = ""


vim.cmd("colorscheme zenwritten")
