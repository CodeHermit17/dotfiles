return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.config")
		configs.setup({
			highlight = {
				enable = true,
			},
			indent = { enable = true },
			ensure_installed = {
				"lua",
				"c",
				"cpp",
				"python",
				"cuda",
				"rst",
			},
			sync_install = false,
		})
	end,
}
