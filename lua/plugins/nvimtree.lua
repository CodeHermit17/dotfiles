return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        -- disable netrw (recommended by nvim-tree)
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        require("nvim-tree").setup({
            view = {
                width = 30,
                side = "left",
            },
            renderer = {
                group_empty = true,
                icons = {
                    show = {
                        file = true,
                        folder = true,
                        folder_arrow = true,
                        git = true,
                    },
                },
            },
            filters = {
                dotfiles = false, -- set to true to hide dotfiles
            },
            git = {
                enable = true,
            },
        })

        -- keybindings
        vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle file explorer" })
        vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFile<cr>", { desc = "Find current file in explorer" })
        vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<cr>", { desc = "Collapse file explorer" })
    end,
}
