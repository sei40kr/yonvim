local M = {}

function M.config()
    local vscode_snippet_dirs = {}
    local snipmate_snippet_dirs = {}

    for _, dir in ipairs(yvim.snippet.user_snippet_dirs) do
        local path = dir[1]
        local loader = dir.loader or "vscode"

        if loader == "vscode" then
            table.insert(vscode_snippet_dirs, path)
        elseif loader == "snipmate" then
            table.insert(snipmate_snippet_dirs, path)
        end
    end

    if #vscode_snippet_dirs > 0 then
        require("luasnip.loaders.from_vscode").lazy_load({
            paths = vscode_snippet_dirs,
        })
    end

    if #snipmate_snippet_dirs > 0 then
        require("luasnip.loaders.from_snipmate").lazy_load({
            paths = snipmate_snippet_dirs,
        })
    end
end

return M
