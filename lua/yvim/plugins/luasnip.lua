local M = {}

function M.config()
    local Logger = require("yvim.utils.logger")
    local yonvim_config = require("yvim.config").get()

    local snippet_dirs = {
        vscode = {},
        snipmate = {},
        lua = {},
    }

    for _, dir in ipairs(yonvim_config.snippet.user_snippet_dirs) do
        local path = dir[1]
        local loader = dir.loader or "vscode"

        if loader == "vscode" or loader == "snipmate" or loader == "lua" then
            table.insert(snippet_dirs[loader], path)
        else
            Logger:warn(
                ("Invalid snippet loader: loader = %s, path = %s"):format(
                    loader,
                    path
                )
            )
        end
    end

    for _, loader in ipairs({ "vscode", "snipmate", "lua" }) do
        if #snippet_dirs[loader] > 0 then
            require("luasnip.loaders.from_" .. loader).lazy_load({
                paths = snippet_dirs[loader],
            })
        end
    end
end

return M
