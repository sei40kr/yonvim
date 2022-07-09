local M = {}

function M.config()
    local cmp = require("cmp")
    local copilot_cmp_comparators = require("copilot_cmp.comparators")

    cmp.setup({
        window = {
            documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
            ["<C-j>"] = cmp.mapping(cmp.mapping.select_next_item()),
            ["<C-k>"] = cmp.mapping(cmp.mapping.select_prev_item()),
            ["<CR>"] = function(fallback)
                if cmp.visible() then
                    cmp.confirm()
                else
                    fallback()
                end
            end,
            ["<Down>"] = cmp.mapping(cmp.mapping.select_next_item()),
            ["<Up>"] = cmp.mapping(cmp.mapping.select_prev_item()),
            ["<Tab>"] = cmp.config.disable,
            ["<S-Tab>"] = cmp.config.disable,
        }),
        snippet = {
            expand = function(args)
                require("luasnip").lsp_expand(args.body)
            end,
        },
        formatting = {
            format = function(entry, vim_item)
                if entry.source.name == "copilot" then
                    vim_item.kind = " Copilot"
                    vim_item.kind_hl_group = "CmpItemKindCopilot"
                    return vim_item
                end

                return require("lspkind").cmp_format()(entry, vim_item)
            end,
        },
        sources = cmp.config.sources({
            { name = "copilot" },
            { name = "luasnip" },
            { name = "nvim_lsp", group_index = 1 },
            { name = "omni", group_index = 2 },
            { name = "path", group_index = 2 },
            { name = "buffer", group_index = 2 },
        }),
        sorting = {
            priority_weight = 2,
            comparators = {
                copilot_cmp_comparators.prioritize,
                copilot_cmp_comparators.score,

                cmp.config.compare.offset,
                cmp.config.compare.exact,
                cmp.config.compare.score,
                cmp.config.compare.recently_used,
                cmp.config.compare.locality,
                cmp.config.compare.kind,
                cmp.config.compare.sort_text,
                cmp.config.compare.length,
                cmp.config.compare.order,
            },
        },
    })

    cmp.setup.cmdline(":", {
        sources = cmp.config.sources(
            { { name = "path" } },
            { { name = "cmdline" } }
        ),
    })
end

return M
