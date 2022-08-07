local Keymaps = {}

local function get_leader_key(mode)
    return (mode ~= "i" and mode ~= "s") and "<Leader>" or yvim.alt_leader_key
end

Keymaps.init = function()
    local augroup = vim.api.nvim_create_augroup("yvim_keymaps", {})

    local keymaps = { augroup = augroup }
    setmetatable(keymaps, { __index = Keymaps })
    return keymaps
end

function Keymaps:set(mode, keymaps)
    require("which-key").register(keymaps, { mode = mode })
end

function Keymaps:set_leader(mode, keymaps)
    require("which-key").register(keymaps, {
        mode = mode,
        prefix = get_leader_key(mode),
    })
end

function Keymaps:set_for_buffer(buffer, mode, keymaps)
    require("which-key").register(keymaps, {
        mode = mode,
        buffer = buffer,
    })
end

function Keymaps:set_leader_for_buffer(buffer, mode, keymaps)
    require("which-key").register(keymaps, {
        mode = mode,
        prefix = get_leader_key(mode),
        buffer = buffer,
    })
end

function Keymaps:set_for_filetype(filetype, mode, keymaps)
    vim.api.nvim_create_autocmd("FileType", {
        group = self.augroup,
        pattern = filetype,
        callback = function()
            self:set_for_buffer(0, mode, keymaps)
        end,
    })
end

return Keymaps.init()
