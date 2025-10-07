-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local map = vim.keymap.set

-- stylua: ignore start

-- floating terminal rebind
map("n", "<leader>fT", function() Snacks.terminal( nil, { cwd = vim.fn.expand("%:p:h") }) end, { desc = "Open Snacks terminal in current buffer's path" })
-- map("n", "<leader>ft", function() Snacks.terminal(nil, { cwd = LazyVim.root() }) end, { desc = "Terminal (Root Dir)" })
map("n", "<c-t>", function() Snacks.terminal(nil, { cwd = LazyVim.root() }) end, { desc = "Terminal (Root Dir)" })
map("t", "<c-t>", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- https://github.com/LazyVim/LazyVim/pull/5678
-- add missing default binding for reading environment files with kuala
map("n", "<leader>Re", "<cmd>lua require('kulala').set_selected_env()<cr>", { desc = "Set environment"})
