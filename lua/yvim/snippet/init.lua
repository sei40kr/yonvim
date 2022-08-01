local M = {}

function M.setup() end

function M.config()
    -- LuaSnip
    require("yvim.plugin.luasnip").config()

    -- friendly-snippets
    if yvim.snippet.friendly_snippets.enable then
        require("yvim.plugin.friendly-snippets").config()
    end
end

return M
