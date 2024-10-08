# yonvim

My personal Neovim distribution.

## Notice

I'm now using [LazyVim](https://github.com/LazyVim/LazyVim) and Yonvim is no longer maintained.

## Requirements

- Nix (Yonvim currently supports Nix Flakes only)
- Neovim 0.10.x

## Installation

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

| Variable                  | Default value        | Description                                                                                                                                                             |
| :------------------------ | :------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `colorscheme.name`        | `"tokyonight-night"` | The name of the colorscheme to use. Possible values: `tokyonight-night`, `tokyonight-storm`, `tokyonight-day`, `tokyonight-moon`.                                       |
| `colorscheme.transparent` | `false`              | Whether to disable setting the background color.                                                                                                                        |
| `leader_key`              | `" "` (Space)        | The leader prefix key. See `:h mapleader` for details.                                                                                                                  |
| `alt_leader_key`          | `"<M-Space>"`        | The leader prefix key. Used for insert and select modes.                                                                                                                |
| `localleader_key`         | `","`                | The local leader key. See `:h maplocalleader` for details.                                                                                                              |
| `null_ls.sources`         | `{}`                 | none-ls.nvim sources to use. See [none-ls.nvim - doc/BUILTIN_CONFIG.md](https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTIN_CONFIG.md) for builtin sources. |

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

### Format

| Variable                | Default value | Description                              |
| :---------------------- | :------------ | :--------------------------------------- |
| `format.format_on_save` | `false`       | Whether to format the buffer upon saving |

### Language Supports

| Variable                 | Default value | Description                                 |
| :----------------------- | :------------ | :------------------------------------------ |
| `lang.haskell.enable`    | `false`       | Whether to enable Haskell supports          |
| `lang.nushell.enable`    | `false`       | Whether to enable Nushell language supports |
| `lang.rust.enable`       | `false`       | Whether to enable Rust supports             |
| `lang.typescript.enable` | `false`       | Whether to enable TypeScript supports       |

### LSP

| Variable      | Default value | Description                                                                                                                                                                       |
| :------------ | :------------ | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `lsp.servers` | `false`       | LSP servers to use. See [nvim-lspconfig - doc/server_configurations.md](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md) for available servers. |

```lua
require("yvim").setup {
    lsp = {
        servers = {
            pyright = {},
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

### Copilot

| Variable                       | Default value | Description                                                                    |
| :----------------------------- | :------------ | :----------------------------------------------------------------------------- |
| `copilot.completion.enable`    | `false`       | Whether to enable Copilot completion                                           |
| `copilot.completion.filetypes` | (see below)   | Filetypes to enable Copilot completion                                         |
| `copilot.chat.enable`          | `false`       | Whether to enable Copilot Chat                                                 |
| `copilot.chat.model`           | `gpt-4.0`     | GPT model to use for Copilot Chat. Possible values: `gpt-3.5-turbo`, `gpt-4.0` |
| `copilot.chat.temperature`     | `0.1`         | GPT temperature to use for Copilot Chat                                        |

You need to log in to GitHub to use Copilot by running `:Copilot setup`.

---

`copilot.completion.filetypes` is a table that has filetypes as keys and boolean
or a function that returns a boolean as values. The default value is:

```lua
{
    gitcommit = false,
    gitrebase = false,
    hgcommit = false,
    sh = function()
        return not vim.endswith(vim.api.nvim_buf_get_name(0), ".env")
    end,
    svn = false,
    cvs = false,
    ["."] = false,
}
```

As you can see, Copilot completion is disabled for some filetypes by default.
This is because it is not recommended to enable Copilot for those filetypes
since they often contain sensitive information and Copilot needs to send the
content of the buffer to GitHub to get completions.

You can override this behavior by setting `copilot.completion.filetypes` by
your own risk.

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

First, you need to generate a Nix derivation for the plugin by running:

```sh
cd packages/yonvim/plugins
./plugins.py add nvimdev/dashboard-nvim
```

This will add the following to `packages/yonvim/plugins/generated.nix`:

```nix
{
  # ...
  dashboard-nvim = vimUtils.buildVimPlugin {
    pname = "dashboard-nvim";
    version = "2023-11-10";

    src = fetchFromGitHub {
      owner = "nvimdev";
      repo = "dashboard-nvim";
      rev = "63df28409d940f9cac0a925df09d3dc369db9841";
      hash = "sha256-LNjYIRL5xZyLgFkoTu3K5USOfk1mtaXe5RhKBAbzYRw=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvimdev/dashboard-nvim";
  };
  # ...
}
```

In build time, Lazy.nvim spec that just specifies the source directory of the
plugin will be added:

```lua
return {
    -- ...
    {
        dir = "/nix/store/wji57kh1j08rvvpynp8wwvkakahg0nly-vimplugin-dashboard-nvim-2023-11-10",
        name = "dashboard-nvim",
        pin = true,
    },
    -- ...
}
```

You can manually set the rest of the Lazy.nvim spec of the plugin by its name.

```lua
{
    "dashboard-nvim"
    dependencies = { "nvim-web-devicons" },
    event = "VimEnter",
    config = function()
        -- ...
    end,
}
```

### Update a plugin

To update a plugin, run:

```sh
cd packages/yonvim/plugins
./plugins.py update dashboard-nvim
```

Or you can update all plugins by running:

```sh
cd packages/yonvim/plugins
./plugins.py update
```

This will make many requests to GitHub API to check if the plugin is updated,
and it may cause GitHub API rate limit exceeded. In that case, you can set your
GitHub personal access token to `GITHUB_API_TOKEN` environment variable.

```sh
cd packages/yonvim/plugins
GITHUB_API_TOKEN='<your token>' ./plugins.py update
```

---

See `./plugins.py --help` for details.

## Roadmap

- [ ] Plugin lazy loading
- [ ] Interactive REPL
- [ ] DAP
