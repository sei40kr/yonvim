local M = {}

function M.setup()
    require("yvim.util.special_buffer").register_filetype("Trouble")
end

function M.config()
    require("trouble").setup({
        indent_lines = false,
        auto_jump = {
            "lsp_definitions",
            "lsp_implementations",
            "lsp_references",
        },
        use_diagnostic_signs = true,
    })
end

return M
