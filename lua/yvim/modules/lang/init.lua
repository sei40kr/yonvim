local yonvim_config = require("yvim.config").get()

return {
    {
        import = "yvim.modules.lang.extras.rust",
    },
    {
        import = "yvim.modules.lang.extras.typescript",
        cond = yonvim_config.lang.typescript.enable,
    },
}
