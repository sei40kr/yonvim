local config_opts = require("yvim.config").opts

return {
    {
        dir = "@typescript@",
        cond = config_opts.lsp.servers.tsserver ~= nil,
        opts = { server = config_opts.lsp.servers.tsserver },
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
