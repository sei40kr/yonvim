local M = {}

local function get_border_chars(border)
    if border == "single" then
        return { "─", "│", "─", "│", "┌", "┐", "┘", "└" }
    elseif border == "double" then
        return { "═", "║", "═", "║", "╔", "╗", "╝", "╚" }
    elseif border == "rounded" then
        return { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }
    else
        return { " ", " ", " ", " ", " ", " ", " ", " " }
    end
end

function M.config()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
        defaults = {
            border = yvim.ui.border ~= "none",
            borderchars = yvim.ui.border ~= "none" and get_border_chars(
                yvim.ui.border
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
            project = {
                base_dirs = { { "~/ghq", max_depth = 4 } },
            },
        },
    })

    telescope.load_extension("luasnip")
    -- FIXME: these extensions cause an error while generating rplugin.vim
    -- telescope.load_extension("fzy_native")
    -- telescope.load_extension("project")
end

return M
