local yonvim_config = require("yvim.config").get()

return {
    {
        "rust-tools.nvim",
        cond = yonvim_config.lsp.servers.rust_analyzer ~= nil,
        opts = {
            tools = {
                inlay_hints = { auto = false },
            },
            server = vim.tbl_deep_extend("force", {
                standalone = true
            }, yonvim_config.lsp.servers.rust_analyzer or {})
        },
        main = "rust-tools",
        ft = "rust",
        module = "rust-tools",
    },
}
