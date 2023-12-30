local M = {}

function M.load()
    vim.opt.autoindent = true
    vim.opt.backspace = { "indent", "eol", "start" }
    vim.opt.complete:remove("i")
    vim.opt.completeopt = { "menu", "menuone", "noselect" }

    vim.opt.nrformats:remove("octal")

    vim.opt.hlsearch = true
    vim.opt.ignorecase = true
    vim.opt.incsearch = true
    vim.opt.smartcase = true
    vim.opt.wrapscan = true

    vim.opt.ruler = true
    -- vim.opt.wildmenu = true

    vim.opt.scrolloff = 1
    vim.opt.sidescrolloff = 5
    vim.opt.display:append({ "lastline" })

    vim.opt.encoding = "utf-8"

    vim.opt.fillchars = { diff = "╱" }
    vim.opt.list = true
    vim.opt.listchars = { tab = "▸ ", trail = "·" }

    vim.opt.formatoptions:append({ "j" })

    vim.opt.autoread = true

    vim.opt.history = 1000
    vim.opt.tabpagemax = 50
    vim.opt.sessionoptions:remove("options")
    vim.opt.sessionoptions:append("folds")
    vim.opt.sessionoptions:append("terminal")
    vim.opt.sessionoptions:append("winpos")
    vim.opt.viewoptions:remove("options")

    vim.opt.number = true
    vim.opt.relativenumber = true

    vim.opt.clipboard = { "unnamedplus" }

    vim.opt.colorcolumn = "80"

    vim.opt.expandtab = true
    vim.opt.shiftwidth = 2

    vim.opt.confirm = true
    vim.opt.hidden = true
    vim.opt.signcolumn = "yes:1"
    vim.opt.splitbelow = true
    vim.opt.splitright = true
    if vim.call("has", "termguicolors") == 1 then
        vim.opt.termguicolors = true
    end

    -- edgy.nvim recommended options
    vim.opt.laststatus = 3
    vim.opt.splitkeep = "screen"

    if vim.g.started_by_firenvim then
        -- Firenvim recommended options
        vim.o.laststatus = 0

        local config_opts = require("yvim.config").opts
        vim.o.guifont = config_opts.ui.font.name .. ":h" .. (config_opts.ui.font.size)
    end
end

return M
