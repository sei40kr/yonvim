local M = {}

local config_opts = require("yvim.config").opts

function M.config()
    if config_opts.snippet.friendly_snippets.enable then
        require("luasnip.loaders.from_vscode").lazy_load()
    end
end

return M
