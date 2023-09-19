-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.del("n", "<leader>ft")
vim.keymap.del("n", "<leader>fT")
-- vim.keymap.del("n", "<c-/>")
-- vim.keymap.del("t", "<c-/>")
vim.keymap.del("n", "<c-_>")
vim.keymap.del("t", "<C-h>")
vim.keymap.del("t", "<C-j>")
vim.keymap.del("t", "<C-k>")
vim.keymap.del("t", "<C-l>")
-- vim.keymap.del("n", "<leader>fp>")
-- vim.keymap.del("n", "<leader>e>")

vim.api.nvim_set_keymap("n", "<c-/>", "<Cmd> :ToggleTerm<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<c-/>", "<Cmd> :ToggleTerm<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
    "n",
    "<leader>fp",
    ":lua require'telescope'.extensions.project.project{}<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>e", ":Telescope file_browser<CR>", { noremap = true })
vim.api.nvim_set_keymap(
    "n",
    "<leader>E",
    ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
    { noremap = true }
)
