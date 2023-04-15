return {
    {
        dir = "@typescript@",
        cond = yvim.lsp.servers.tsserver ~= nil,
        opts = { server = yvim.lsp.servers.tsserver },
        main = "typescript"
    }
}
