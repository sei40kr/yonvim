return {
    {
        dir = "@rust_tools@",
        cond = yvim.lsp.servers.rust_analyzer ~= nil,
        opts = {
            tools = {
                inlay_hints = { auto = false },
            },
            server = vim.tbl_deep_extend("force", {
                standalone = true
            }, yvim.lsp.servers.rust_analyzer or {})
        },
        main = "rust-tools",
    },
}
