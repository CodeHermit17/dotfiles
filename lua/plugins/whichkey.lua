return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		local wk = require("which-key")

		wk.setup({
			delay = 300, -- delay before popup appears (ms)
			icons = {
				rules = false,
			},
		})

		-- leader key groups
		wk.add({
			{ "<leader>f", group = "find/telescope" },
			{ "<leader>e", group = "explorer" },
		})

		-- vim motions cheatsheet (press F1 to show)
		vim.keymap.set("n", "<leader>k", function()
			wk.show({ keys = "", loop = false })
		end, { desc = "Show keybindings" })

		-- register motion descriptions so they show in popup
		wk.add({
			mode = "n",
			{ "w", desc = "next word start" },
			{ "b", desc = "prev word start" },
			{ "e", desc = "next word end" },
			{ "0", desc = "line start" },
			{ "$", desc = "line end" },
			{ "gg", desc = "file start" },
			{ "G", desc = "file end" },
			{ "dd", desc = "delete line" },
			{ "yy", desc = "yank line" },
			{ "p", desc = "paste below" },
			{ "P", desc = "paste above" },
			{ "o", desc = "new line below" },
			{ "O", desc = "new line above" },
			{ "u", desc = "undo" },
			{ "ci", desc = "change inner..." },
			{ "ca", desc = "change around..." },
			{ "di", desc = "delete inner..." },
			{ "da", desc = "delete around..." },
			{ "f", desc = "jump to char →" },
			{ "F", desc = "jump to char ←" },
			{ "t", desc = "jump till char →" },
			{ "T", desc = "jump till char ←" },
			{ "%", desc = "jump to matching bracket" },
			{ "*", desc = "search word under cursor" },
			{ "zz", desc = "center screen" },
			{ "zt", desc = "scroll line to top" },
			{ "zb", desc = "scroll line to bottom" },
			{ "<C-d>", desc = "scroll down half page" },
			{ "<C-u>", desc = "scroll up half page" },
		})
	end,
}
