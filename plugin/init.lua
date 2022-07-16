vim.api.nvim_create_augroup("init", {})
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "help" },
    callback = function(arg)
        vim.api.nvim_buf_set_keymap(arg.buf, "n", "q", "<Cmd>bdelete<CR>", {})
    end,
})

local path = require("yvim.utils.path")
local runtime_dir = path.get_runtime_dir()

vim.opt.runtimepath:append(path.join_paths(runtime_dir, "site"))
vim.opt.packpath:append(path.join_paths(runtime_dir, "site"))

require("yvim.config").load()

require("yvim.plugins").load({
    package_root = path.join_paths(runtime_dir, "site", "pack"),
    compile_path = path.join_paths(
        runtime_dir,
        "site",
        "lua",
        "packer_compiled.lua"
    ),
})

require("yvim.keymaps").setup()
