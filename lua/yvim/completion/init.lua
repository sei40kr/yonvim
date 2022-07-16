local M = {}

function M.setup()
end

function M.config()
    local group = vim.api.nvim_create_augroup("yvim_completion_autocmds", {})
    vim.api.nvim_create_autocmd({ "InsertEnter", "CmdlineEnter" }, {
        group = group,
        pattern = "*",
        callback = function()
            require("yvim.completion.functions").setup_cmp()
        end,
        once = true,
    })
end

return M
