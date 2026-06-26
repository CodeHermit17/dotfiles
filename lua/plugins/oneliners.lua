return {
    { --This helps with ssh tunneling and copying to clipboard
        "ojroques/vim-oscyank",
    },
    { -- Git plugin
        "tpope/vim-fugitive",
    },
    { -- Show CSS Colors
        "brenoprata10/nvim-highlight-colors",
        config = function()
            require("nvim-highlight-colors").setup({})
        end,
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        dependencies = { "hrsh7th/nvim-cmp" },
        config = function()
            local autopairs = require("nvim-autopairs")
            autopairs.setup({
                check_ts = true,
            })

            local cmp_autopairs = require("nvim-autopairs.completion.cmp")
            local cmp = require("cmp")
            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
    },
}
