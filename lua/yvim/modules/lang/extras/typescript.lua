local yonvim_config = require("yvim.config").get()

return {
    {
        "typescript.nvim",
        cond = yonvim_config.lsp.servers.tsserver ~= nil,
        opts = { server = yonvim_config.lsp.servers.tsserver },
        main = "typescript",
        ft = {
            'javascript',
            'javascriptreact',
            'javascript.jsx',
            'typescript',
            'typescriptreact',
            'typescript.tsx',
        },
    }
}
