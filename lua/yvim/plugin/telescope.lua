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
    local Util = require("yvim.util")

    local trouble_mappings = {
        n = {},
        i = {},
    }

    if Util.has("trouble.nvim") then
        trouble_mappings.n["<C-t>"] = function(...)
            require("trouble.providers.telescope").open_with_trouble(...)
        end
        trouble_mappings.i["<C-t>"] = function(...)
            require("trouble.providers.telescope").open_with_trouble(...)
        end
    end

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
        pickers = {
            live_grep = { mappings = trouble_mappings },
        },
        extensions = {
            file_browser = { dir_icon = " " },
            project = { base_dirs = yvim.project.base_dirs },
        },
    })
end

return M
