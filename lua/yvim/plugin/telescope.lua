local M = {}

local config_opts = require("yvim.config").opts

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
            border = config_opts.ui.border ~= "none",
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
            project = {
                base_dirs = config_opts.project.base_dirs,
                on_project_selected = function(prompt_bufnr)
                    local project_actions = require("telescope._extensions.project.actions")
                    local selected_path = project_actions.get_selected_path(prompt_bufnr)

                    actions.close(prompt_bufnr)

                    for _, tabnr in ipairs(vim.api.nvim_list_tabpages()) do
                        -- If the current working directory of the tab is the
                        -- same as the selected path, then switch to that tab.
                        if vim.fn.getcwd(-1, tabnr) == selected_path then
                            vim.api.nvim_set_current_tabpage(tabnr)
                            return
                        end
                    end

                    -- If we didn't find a tab with the same working directory,
                    -- then open a new tab with the selected path.
                    vim.cmd("tabe")
                    vim.cmd.tcd(selected_path)
                end,
            },
        },
    })
end

return M
