return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = function(term)
                if term.direction == "horizontal" then
                    return 15
                elseif term.direction == "vertical" then
                    return vim.o.columns * 0.4
                end
            end,
            open_mapping = [[<C-\>]],
            direction = "float",
            float_opts = {
                border = "curved",
            },
            shading_factor = 2,
            start_in_insert = true,
            persist_size = true,
            close_on_exit = false,
        })

        -- easier escape from terminal mode
        vim.keymap.set("t", "q", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

        -- quick run keymaps for common languages
    end,
}
