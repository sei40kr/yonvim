local yonvim_config = require("yvim.config").get()

return {
    {
        import = "yvim.modules.lang.extras.haskell",
        cond = yonvim_config.lang.haskell.enable,
    },
    {
        import = "yvim.modules.lang.extras.jupyter",
    },
    {
        import = "yvim.modules.lang.extras.nushell",
        cond = yonvim_config.lang.nushell.enable,
    },
    {
        import = "yvim.modules.lang.extras.rust",
        cond = yonvim_config.lang.rust.enable,
    },
    {
        import = "yvim.modules.lang.extras.typescript",
        cond = yonvim_config.lang.typescript.enable,
    },
}
