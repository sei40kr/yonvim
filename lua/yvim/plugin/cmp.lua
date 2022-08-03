local M = {}

local function cr(fallback)
    local cmp = require("cmp")
    local selected_entry = cmp.get_selected_entry()

    if cmp.visible() and selected_entry then
        cmp.confirm()
        return
    end

    fallback()
end

local function select_prev_item(fallback)
    local cmp = require("cmp")

    if cmp.visible() then
        cmp.select_prev_item()
    else
        fallback()
    end
end

local function select_next_item(fallback)
    local cmp = require("cmp")

    if cmp.visible() then
        cmp.select_next_item()
    else
        fallback()
    end
end

function M.config()
    local cmp = require("cmp")

    local border_chars = require("yvim.config").get_border_chars("FloatBorder")

    local sources = {
        { name = "luasnip" },
        { name = "nvim_lsp", group_index = 1 },
        { name = "nvim_lsp_signature_help", group_index = 1 },
        { name = "omni", group_index = 2 },
        { name = "path", group_index = 2 },
        { name = "buffer", group_index = 2 },
    }
    local comparators = {
        cmp.config.compare.offset,
        cmp.config.compare.exact,
        cmp.config.compare.score,
        cmp.config.compare.recently_used,
        cmp.config.compare.locality,
        cmp.config.compare.kind,
        cmp.config.compare.sort_text,
        cmp.config.compare.length,
        cmp.config.compare.order,
    }
    if yvim.completion.copilot.enable then
        table.insert(sources, 1, { name = "copilot" })

        local copilot_cmp_comparators = require("copilot_cmp.comparators")
        table.insert(comparators, 1, copilot_cmp_comparators.prioritize)
        table.insert(comparators, 2, copilot_cmp_comparators.score)
    end

    local zindex = require("yvim.ui.zindex")

    cmp.setup({
        window = {
            completion = cmp.config.window.bordered({
                border = yvim.completion.show_menu_border and border_chars
                    or "none",
                zindex = zindex.COMPLETION_MENU,
            }),
            documentation = cmp.config.window.bordered({
                border = border_chars,
                zindex = zindex.COMPLETION_DOC,
            }),
        },
        mapping = cmp.mapping.preset.insert({
            ["<Tab>"] = cmp.config.disable,
            ["<S-Tab>"] = cmp.config.disable,
            ["<CR>"] = cmp.mapping(cr),
            ["<C-j>"] = cmp.mapping(select_next_item),
            ["<C-k>"] = cmp.mapping(select_prev_item),
        }),
        snippet = {
            expand = function(args)
                require("luasnip").lsp_expand(args.body)
            end,
        },
        formatting = {
            fields = { "kind", "abbr", "menu" },
            format = function(entry, vim_item)
                local new_vim_item = require("lspkind").cmp_format({
                    mode = "symbol_text",
                })(entry, vim_item)

                if entry.source.name == "copilot" then
                    new_vim_item.kind = "  "
                    new_vim_item.kind_hl_group = "CmpItemKindCopilot"
                    new_vim_item.menu = "    (Copilot)"
                else
                    local kind, menu = unpack(
                        vim.split(new_vim_item.kind, "%s", { trimempty = true })
                    )
                    new_vim_item.kind = " " .. kind .. " "
                    new_vim_item.menu = "    (" .. menu .. ")"
                end

                return new_vim_item
            end,
        },
        sources = cmp.config.sources(sources),
        sorting = {
            priority_weight = 2,
            comparators = comparators,
        },
    })

    cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline({
            ["<Tab>"] = cmp.config.disable,
            ["<S-Tab>"] = cmp.config.disable,
            ["<CR>"] = cmp.mapping(cr, { "c" }),
            ["<C-j>"] = cmp.mapping(select_next_item, { "c" }),
            ["<C-k>"] = cmp.mapping(select_prev_item, { "c" }),
        }),
        sources = cmp.config.sources(
            { { name = "path" } },
            { { name = "cmdline" } }
        ),
    })
end

return M
