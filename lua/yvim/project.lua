local M = {}

local function get_project_root()
    return require("project_nvim.project").get_project_root()
end

local function switch_project()
    require("telescope").extensions.project.project({
        display_type = "full",
    })
end

local function find_file_in_project()
    local telescope_builtin = require("telescope.builtin")

    local ok, _ = pcall(telescope_builtin.git_files, {
        prompt_title = "Find File",
        cwd = get_project_root(),
        show_untracked = true,
    })

    if not ok then
        telescope_builtin.find_files({
            prompt_title = "Find File",
            cwd = get_project_root(),
            hidden = true,
        })
    end
end

local function search_in_project()
    require("telescope.builtin").live_grep({
        prompt_title = "Search Project",
        cwd = get_project_root(),
    })
end

local function toggle_project_sidebar()
    require("nvim-tree").toggle(false, false, get_project_root())
end

local function find_file_in_project_sidebar()
    local bufnr = vim.api.nvim_get_current_buf()
    require("nvim-tree").find_file(true, bufnr)
end

local function open_neogit_status()
    require("neogit").open({ cwd = get_project_root() })
end

function M.load_keymaps()
    local keymap = require("yvim.util.keymap")

    keymap:set_leader("n", {
        ["<Space>"] = { "<Leader>pf", "Find file in project", noremap = false },
        ["/"] = { "<Leader>sp", "Search project", noremap = false },
        -- +git
        g = {
            g = { open_neogit_status, "Neogit status" },
        },
        -- +project
        p = {
            f = { find_file_in_project, "Find file in project" },
            p = { switch_project, "Switch project" },
            t = { "<Cmd>TodoTrouble<CR>", "List project todos" },
        },
        -- +open
        o = {
            p = { toggle_project_sidebar, "Project sidebar" },
            P = {
                find_file_in_project_sidebar,
                "Find file in project sidebar",
            },
        },
        -- +search
        s = {
            p = { search_in_project, "Search project" },
        },
    })
end

return M
