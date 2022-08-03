local M = {}

local function translate_to_telescope_borderchars(border_chars)
    return {
        border_chars[2],
        border_chars[4],
        border_chars[6],
        border_chars[8],
        border_chars[1],
        border_chars[3],
        border_chars[5],
        border_chars[7],
    }
end

function M.config()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
        defaults = {
            border = yvim.ui.border ~= "none",
            borderchars = translate_to_telescope_borderchars(
                require("yvim.config").get_border_chars()
            ) or nil,
            mappings = {
                i = {
                    ["<C-k>"] = actions.move_selection_previous,
                    ["<C-j>"] = actions.move_selection_next,
                    ["<Esc>"] = actions.close,
                    jk = actions.close,
                },
            },
        },
        extensions = {
            project = yvim.core.project_base_dirs,
        },
    })

    telescope.load_extension("luasnip")
    -- FIXME: these extensions cause an error while generating rplugin.vim
    -- telescope.load_extension("fzy_native")
    -- telescope.load_extension("project")
end

return M
