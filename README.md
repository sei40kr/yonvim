# yonvim

My personal Neovim distribution.

## Installation

**Yonvim currently supports Nix Flakes only.**

### Nix

Add the following to your `flake.nix`:

```nix
{
  inputs = {
    yonvim = {
      url = "github:sei40kr/yonvim";
      # Necessary if you want to use the same version of Neovim in both Flakes
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}
```

Then, add the following to your Nix configuration:

```nix
{
  environment.systemPackages = [
    inputs.packages.${pkgs.stdenv.hostPlatform.system}.yonvim
    inputs.packages.${pkgs.stdenv.hostPlatform.system}.yonvim-qt
  ];
}
```

Then, create `~/.config/yonvim/init.lua` and put the following:

```lua
require("yvim").setup {}
```

## Configuration

You can write your configurations in `~/.config/yonvim/init.lua`.

```lua
require("yvim").setup {
  -- Your configurations here
}
```

| Variable          | Default value | Description                                                                                                                                                             |
| :---------------- | :------------ | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `leader_key`      | `" "` (Space) | The leader prefix key. See `:h mapleader` for details.                                                                                                                  |
| `alt_leader_key`  | `"<M-Space>"` | The leader prefix key. Used for insert and select modes.                                                                                                                |
| `localleader_key` | `","`         | The local leader key. See `:h maplocalleader` for details.                                                                                                              |
| `null_ls.sources` | `{}`          | none-ls.nvim sources to use. See [none-ls.nvim - doc/BUILTIN_CONFIG.md](https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTIN_CONFIG.md) for builtin sources. |

#### Example

```lua
require("yvim").setup {
    null_ls = {
        sources = function(null_ls)
            return {
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.write_good,
                null_ls.builtins.code_actions.gitsigns,
            }
        end,
    },
}
```

### Completion

#### Copilot

| Variable                       | Default value | Description                                   |
| :----------------------------- | :------------ | :-------------------------------------------- |
| `completion.copilot.enable`    | `true`        | Whether to enable GitHub Copilot suggestions. |
| `completion.copilot.filetypes` | -             | The filetypes to enable Copilot for.          |

You need to log in to GitHub to use Copilot by running `:Copilot setup`.

---

Copilot is disabled for some filetypes by default.

This is because those filetypes often contain sensitive data, but Copilot sends
the contents of the buffer to GitHub for suggestions.

You can manually enable Copilot for those filetypes by your own risk.

```lua
require("yvim").setup {
    completion = {
        copilot = {
            filetypes = {
              yaml = true,
              -- You can also pass a function to determine whether to enable Copilot.
              -- In this example, Copilot is enabled for sh filetype except for .env files.
              sh = function()
                return not vim.endswith(vim.api.nvim_buf_get_name(0), ".env")
              end,
            },
        },
    },
}
```

### Format

| Variable                | Default value | Description                              |
| :---------------------- | :------------ | :--------------------------------------- |
| `format.format_on_save` | `false`       | Whether to format the buffer upon saving |

### LSP

| Variable      | Default value | Description                                                                                                                                                                       |
| :------------ | :------------ | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `lsp.servers` | `false`       | LSP servers to use. See [nvim-lspconfig - doc/server_configurations.md](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md) for available servers. |

```lua
require("yvim").setup {
    lsp = {
        servers = {
            pyright = {},
            tsserver = {},
            rust_analyzer = {},
        },
    },
}
```

### Project

| Variable            | Default value | Description                                                                                                                                                                       |
| :------------------ | :------------ | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `project.base_dirs` | `{}`          | Project base directories. See [telescope-project.nvim - Available setup settings](https://github.com/nvim-telescope/telescope-project.nvim#available-setup-settings) for details. |

#### Examples

```lua
require("yvim").setup {
    project = {
        base_dirs = {
            "~/.dotfiles",
            "~/.config/nvim",
            { "~/ghq", max_depth = 4 },
        },
    },
}
```

### REPL

| Variable        | Default value | Description                                             |
| :-------------- | :------------ | :------------------------------------------------------ |
| `repl.handlers` | `{}`          | The REPL handlers to use. See `:help iron-customizing`. |

#### Example

```lua
require("yvim").setup {
    repl = {
        handlers = {
          sh = { command = { "zsh" } },
        },
    },
}
```

### Snippet

| Variable                           | Default value | Description                                                                            |
| :--------------------------------- | :------------ | :------------------------------------------------------------------------------------- |
| `snippet.friendly_snippets.enable` | `true`        | Whether to enable [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) |
| `snippet.user_snippet_dirs`        | `{}`          | User snippet directories. See **Example** below for details.                           |

#### Example

```lua
yvim.setup {
    snippet = {
        user_snippet_dirs = {
            -- Use VSCode snippets
            { vim.fn.stdpath("config") .. "/snippets/vscode", loader = "vscode" },
            -- Use TextMate (snipMate) snippets
            { vim.fn.stdpath("config") .. "/snippets/snipmate", loader = "snipmate" },
            -- Use Lua snippets
            { vim.fn.stdpath("config") .. "/snippets/lua", loader = "lua" },
        },
    },
}
```

### UI

| Variable                  | Default value                                          | Description                                                                                                                      |
| :------------------------ | :----------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------- |
| `ui.border`               | `"rounded"`                                            | The default border.                                                                                                              |
| `ui.spinner`              | `{ "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }` | The default spinner pattern                                                                                                      |
| `ui.font.name`            | `"monospace"`                                          | The default font family                                                                                                          |
| `ui.font.size`            | `12.0`                                                 | The default font size                                                                                                            |
| `ui.font.forcedly_assign` | `false`                                                | Whether to forcedly assign an invalid font. Set this to `true` when you use a font like [Nerd Fonts](https://www.nerdfonts.com). |

### Keymaps

You can add user-defined keymaps to `keymaps`.

#### Example

```lua
yvim.setup {
    keymaps = {
        { "<M-Left>",  "<Cmd>BufferLineCyclePrev<CR>", desc = "Go to previous buffer" },
        { "<M-Right>", "<Cmd>BufferLineCycleNext<CR>", desc = "Go to next buffer" },
        -- { lhs, rhs, mode = ..., silent = ..., remap = ..., nowait = ..., desc = ... },
    }
}
```

## Development

### Add a plugin

First, you need to generate a Nix derivation for the plugin which you want to add:

```sh
cd packages/yonvim/plugins
./plugins.py add kazhala/close-buffers.nvim
```

Then add the plugin to `packages/yonvim/neovim-configured.nix`:

```nix
{
  configure.packages.myVimPackage = {
    start = with yonvimPlugins; [
      close-buffers-nvim
      # ...
    ];
  };
}
```

### Update a plugin

```sh
cd packages/yonvim/plugins
./plugins.py update close-buffers.nvim
```

---

See `./plugins.py --help` for details.

## Firenvim

You can use Firenvim to edit textareas in your browser with Yonvim.
To enable Firenvim, install the Firenvim extension to your browser and run
`:FirenvimInstall` in Yonvim.

When you update Yonvim, you need to re-run `:FirenvimInstall` in the newer
Yonvim and click the `Reload settings` in the Firenvim extension.

| Key Binding | Description        |
| :---------- | :----------------- |
| `C--`       | Decrease font size |
| `C-=`       | Increase font size |
| `C-0`       | Reset font size    |

## Roadmap

- [ ] Plugin lazy loading
- [ ] Interactive REPL
- [ ] DAP
