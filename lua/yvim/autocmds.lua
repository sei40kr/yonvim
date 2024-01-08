local M = {}

local function augroup(name)
    return vim.api.nvim_create_augroup("yvim_" .. name, {})
end

function M.load()
    vim.api.nvim_create_autocmd(
        { "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" },
        {
            group = augroup("checktime"),
            callback = function()
                local mode = vim.api.nvim_get_mode()
                if
                    mode.mode:find("c|r.?|!|t") == nil
                    and vim.fn.getcmdwintype() == ""
                then
                    vim.cmd.checktime()
                end
            end,
        }
    )

    -- Show LSP diagnostics on cursor hold
    vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
        group = augroup("show_lsp_diagnostics"),
        callback = function()
            vim.diagnostic.open_float(nil, { focus = false })
        end,
    })

    vim.api.nvim_create_autocmd("FileChangedShellPost", {
        group = augroup("checktime"),
        callback = function(args)
            vim.notify("Reverting buffer [" .. vim.fs.basename(args.file) .. "].")
        end,
    })

    local resize_augroup = augroup("resize")

    vim.api.nvim_create_autocmd("FileType", {
        group = resize_augroup,
        pattern = { "man" },
        callback = function()
            vim.cmd.resize(math.ceil(vim.o.lines * 0.45))
        end,
    })

    vim.api.nvim_create_autocmd("FileType", {
        group = resize_augroup,
        pattern = { "help" },
        callback = function()
            vim.cmd.resize(math.ceil(vim.o.lines * 0.42))
        end,
    })
end

return M
