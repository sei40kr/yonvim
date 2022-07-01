local M = {}

local function get_project_root()
    return require("project_nvim.project").get_project_root()
end

function M.find_file_in_project()
    local telescope_builtin = require("telescope.builtin")

    local ok, _ = pcall(telescope_builtin.git_files, {
        prompt_title = "Find File",
        cwd = get_project_root(),
    })

    if not ok then
        telescope_builtin.find_files({
            prompt_title = "Find File",
            cwd = get_project_root(),
            hidden = true,
        })
    end
end

function M.search_in_project()
    require("telescope.builtin").live_grep({
        prompt_title = "Search Project",
        cwd = get_project_root(),
    })
end

return M
