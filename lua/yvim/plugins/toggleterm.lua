local M = {}

function M.config()
    require("toggleterm").setup({
        open_mapping = "<NOP>",
        shade_terminals = false,
        insert_mappings = false,
    })

    local group = vim.api.nvim_create_augroup("toggleterm", {})
    vim.api.nvim_create_autocmd("FileType", {
        group = group,
        pattern = "toggleterm",
        callback = function()
            vim.keymap.set("n", "q", "<Cmd>ToggleTerm<CR>", { buffer = true })
        end,
    })
end

return M
