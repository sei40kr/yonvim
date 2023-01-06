local M = {}

function M.remove(predicate, opts)
    opts = vim.tbl_extend("force", {
        wipeout = false,
        force = false,
    }, opts or {})

    local bufs = vim.tbl_filter(function(buf)
        return vim.bo[buf].buflisted and predicate(buf)
    end, vim.api.nvim_list_bufs())

    if vim.tbl_isempty(bufs) then
        vim.api.nvim_echo({ { "No buffers to kill" } }, false, {})
        return
    end

    if not opts.force then
        for _, buf in ipairs(bufs) do
            if vim.bo[buf].modified then
                local choice = vim.fn.confirm(
                    string.format(
                        [[Save changes to "%s"?]],
                        vim.api.nvim_buf_get_name(buf)
                    ),
                    "&Yes\n&No\n&Cancel",
                    3,
                    "Question"
                )
                if choice == 3 then
                    return
                end
                if choice == 1 then
                    vim.api.nvim_buf_call(buf, function()
                        vim.cmd("write")
                    end)
                end

                vim.api.nvim_echo({ { "" } }, false, {})
                vim.cmd("redraw")
            end
        end
    end

    local bufremove = require("mini.bufremove")
    if opts.wipeout then
        for _, buf in ipairs(bufs) do
            bufremove.wipeout(buf, true)
        end
    else
        for _, buf in ipairs(bufs) do
            bufremove.delete(buf, true)
        end
    end

    vim.api.nvim_echo({ {
        string.format("Killed %d buffers", #bufs)
    } }, false, {})
end

return M
