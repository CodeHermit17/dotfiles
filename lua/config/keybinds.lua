vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

vim.keymap.set("i", "<leader>kj", "<Esc>", { desc = "Exit insert mode" })

vim.keymap.set({"n", "i"}, "<Up>", "<Nop>")
vim.keymap.set({ "n", "i" }, "<Down>", "<Nop>")
vim.keymap.set({ "n", "i" }, "<Left>", "<Nop>")
vim.keymap.set({ "n", "i" }, "<Right>", "<Nop>")
