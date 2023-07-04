vim.g.mapleader = " "
vim.keymap.set("n", "<leader><leader>", vim.cmd.NvimTreeFocus)
vim.keymap.set("n", "<leader>mm", vim.cmd.NvimTreeClose)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n","WW", vim.cmd.bn)
vim.keymap.set("n","SS", vim.cmd.bp)
vim.keymap.set("n","XX", vim.cmd.bd)
vim.keymap.set("n", "{", ":m -2<CR>")
vim.keymap.set("n", "}", ":m +1<CR>")
vim.keymap.set("v", "{", ":m '<-2<CR>")
vim.keymap.set("v", "}", ":m '>+1<CR>")
vim.keymap.set("n", "Qw", vim.diagnostic.goto_next)
vim.keymap.set("n", "Qs", vim.diagnostic.goto_prev)







