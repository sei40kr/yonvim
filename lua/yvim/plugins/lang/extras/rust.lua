local config_opts = require("yvim.config").opts

return {
    {
        dir = "@rust_tools@",
        cond = config_opts.lsp.servers.rust_analyzer ~= nil,
        opts = {
            tools = {
                inlay_hints = { auto = false },
            },
            server = vim.tbl_deep_extend("force", {
                standalone = true
            }, config_opts.lsp.servers.rust_analyzer or {})
        },
        main = "rust-tools",
        ft = "rust",
        module = "rust-tools",
    },
}
