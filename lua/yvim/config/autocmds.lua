local function augroup(name)
    return vim.api.nvim_create_augroup("yvim_" .. name, {})
end

vim.api.nvim_create_autocmd("LspAttach", {
    group = augroup("lsp_keymaps"),
    callback = function(args)
        local bufnr = args.buf
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        require("yvim.plugins.lsp.keymaps").on_attach(client, bufnr)
    end,
})
