local yonvim_config = require("yvim.config").get()

return {
    {
        "tokyonight.nvim",
        lazy = true,
        opts = {
            transparent = yonvim_config.colorscheme.transparent,
            styles = {
                comments = { italic = true },
            },
            lualine_bold = true,
        },
    },
}
