local M = {}

function M.load()
    local group = vim.api.nvim_create_augroup("yvim_config", {})

    vim.api.nvim_create_autocmd("FileType", {
        group = group,
        pattern = "help",
        callback = function(args)
            vim.keymap.set(args.buf, "n", "q", "<Cmd>bdelete<CR>", {})
        end,
    })
end

return M
