local M = {}

function M.config()
    if yvim.snippet.friendly_snippets.enable then
        require("luasnip.loaders.from_vscode").lazy_load()
    end
end

return M
