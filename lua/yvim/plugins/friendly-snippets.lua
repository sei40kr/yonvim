local M = {}

function M.config()
    local yonvim_config = require("yvim.config").get()

    if yonvim_config.snippet.friendly_snippets.enable then
        require("luasnip.loaders.from_vscode").lazy_load()
    end
end

return M
