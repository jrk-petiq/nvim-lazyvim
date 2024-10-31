-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>w", ":w!<CR>")
vim.keymap.set("i", "jj", "<ESC>")
-- vim.keymap.set("n", "<leader>q", ":q!<CR>")
-- vim.keymap.set("n", "<leader>x", ":x!<CR>")

-- go to beginning and end of line
-- vim.keymap.set("i", "<C-b>", "<ESC>^i")
-- vim.keymap.set("i", "<C-e>", "<End>")

-- navigate within insert mode
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")

-- Ctrl-/ works for this in tmux
local Util = require("lazyvim.util")
vim.keymap.set("n", "<C-_>", function()
  Util.terminal(nil, { border = "rounded" })
end, { desc = "Term with border" })

vim.keymap.set("n", "<leader>p", '<cmd>lua require("cmp").setup { enabled = true }<cr>', { desc = "Enable completion" })
vim.keymap.set(
  "n",
  "<leader>P",
  '<cmd>lua require("cmp").setup { enabled = false }<cr>',
  { desc = "Disable completion" }
)

-- open terminal in right pane and bottom right pane
vim.keymap.set("n", "<leader>;", "<C-w>v:term<CR>")
vim.keymap.set("n", "<leader>'", "<C-w>s:term<CR>")
