local yonvim_config = require("yvim.config").get()

return {
    {
        import = "yvim.modules.lang.extras.rust",
        cond = yonvim_config.lang.rust.enable,
    },
    {
        import = "yvim.modules.lang.extras.typescript",
        cond = yonvim_config.lang.typescript.enable,
    },
}
