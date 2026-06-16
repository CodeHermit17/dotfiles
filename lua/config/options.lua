vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4

vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#9fa8da" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffffff" }) -- current line number
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#9fa8da" })
