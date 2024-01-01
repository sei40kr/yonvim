local config_opts = require("yvim.config").opts

return {
    {
        "tokyonight.nvim",
        lazy = true,
        opts = {
            transparent = config_opts.colorscheme.transparent,
            styles = {
                comments = { italic = true },
            },
            lualine_bold = true,
        },
    },
}
