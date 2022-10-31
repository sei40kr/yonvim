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

## Configuration

You can write your Yonvim configuration in `~/.config/yvim/config.lua`.

| Variable               | Default value | Description                                                                                                                                                                      |
| :--------------------- | :------------ | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `yvim.leader_key`      | `" "` (Space) | The leader prefix key. See `:h mapleader` for details.                                                                                                                           |
| `yvim.alt_leader_key`  | `"<M-Space>"` | The leader prefix key. Used for insert and select modes.                                                                                                                         |
| `yvim.localleader_key` | `","`         | The local leader key. See `:h maplocalleader` for details.                                                                                                                       |
| `yvim.null_ls.sources` | `{}`          | null-ls.nvim sources to use. See [null-ls.nvim - doc/BUILTIN_CONFIG.md](https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTIN_CONFIG.md) for builtin sources. |

#### Example

```lua
yvim.null_ls.sources = function(null_ls)
    return {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.write_good,
        null_ls.builtins.code_actions.gitsigns,
    }
end
```

### Completion

| Variable                         | Default value | Description                                                                                               |
| :------------------------------- | :------------ | :-------------------------------------------------------------------------------------------------------- |
| `yvim.completion.copilot.enable` | `true`        | Whether to enable GitHub Copilot suggestions. You need to run `:Copilot setup` first to use this feature. |

### Format

| Variable                     | Default value | Description                              |
| :--------------------------- | :------------ | :--------------------------------------- |
| `yvim.format.format_on_save` | `false`       | Whether to format the buffer upon saving |

### LSP

| Variable           | Default value | Description                                                                                                                                                                       |
| :----------------- | :------------ | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `yvim.lsp.servers` | `false`       | LSP servers to use. See [nvim-lspconfig - doc/server_configurations.md](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md) for available servers. |

#### Example

```lua
yvim.lsp.servers = {
    pyright = {},
    tsserver = {},
    rust_analyzer = {},
}
```

### Project

| Variable                 | Default value | Description                                                                                                                                                                       |
| :----------------------- | :------------ | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `yvim.project.base_dirs` | `{}`          | Project base directories. See [telescope-project.nvim - Available setup settings](https://github.com/nvim-telescope/telescope-project.nvim#available-setup-settings) for details. |

#### Examples

```lua
yvim.project.base_dirs = {
    "~/.dotfiles",
    "~/.config/nvim",
    { "~/ghq", max_depth = 4 },
}
```

### REPL

| Variable                 | Default value         | Description                                                      |
|:-------------------------|:----------------------|:-----------------------------------------------------------------|
| `yvim.repl.handlers`     | `{}`                  | The REPL handlers to use. See `:help iron-customizing`.          |
| `yvim.repl.win_open_cmd` | `"botright 15 split"` | The command to open the REPL window. See `:help opening-window`. |

#### Example

```lua
yvim.repl.handlers = {
  sh = { command = { "zsh" } },
}
```

### Snippet

| Variable                                | Default value | Description                                                                            |
| :-------------------------------------- | :------------ | :------------------------------------------------------------------------------------- |
| `yvim.snippet.friendly_snippets.enable` | `true`        | Whether to enable [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) |
| `yvim.snippet.user_snippet_dirs`        | `{}`          | User snippet directories. See **Example** below for details.                           |

#### Example

```lua
local path = require("yvim.util.path")

yvim.snippet.user_snippet_dirs = {
    -- Use VSCode snippets
    {
        path.join_paths(path.get_config_dir(), "snippets", "vscode"),
        loader = "vscode",
    },
    -- Use TextMate (snipMate) snippets
    {
        path.join_paths(path.get_config_dir(), "snippets", "snipmate"),
        loader = "snipmate",
    },
    -- Use Lua snippets
    {
        path.join_paths(path.get_config_dir(), "snippets", "lua"),
        loader = "lua",
    },
}
```

### UI

| Variable                       | Default value                                          | Description                                                                                                                      |
| :----------------------------- | :----------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------- |
| `yvim.ui.border`               | `"rounded"`                                            | The default border style. Supported values: `"none"`, `"single"`, `"double"`, `"rounded"`.                                       |
| `yvim.ui.spinner`              | `{ "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }` | The default spinner pattern                                                                                                      |
| `yvim.ui.font.name`            | `"monospace"`                                          | The default font family                                                                                                          |
| `yvim.ui.font.size`            | `12.0`                                                 | The default font size                                                                                                            |
| `yvim.ui.font.forcedly_assign` | `false`                                                | Whether to forcedly assign an invalid font. Set this to `true` when you use a font like [Nerd Fonts](https://www.nerdfonts.com). |

### Keymaps

You can add custom keymaps for mode `mode` to `yvim.keymaps[mode]`.
Possible modes: `n`, `v`, `s`, `x`, `o`, `i`, `c`, `t`, see `:h :map-modes` for details.

#### Example

```lua
yvim.keymaps.n = {
    ["<M-Left>"] = { "<Cmd>BufferLineCyclePrev<CR>", "Go to previous buffer" },
    ["<M-Right>"] = { "<Cmd>BufferLineCycleNext<CR>", "Go to next buffer" },
    ["<M-S-Left>"] = { "<Cmd>BufferLineMovePrev<CR>", "Move the current buffer backwards" },
    ["<M-S-Right>"] = { "<Cmd>BufferLineMoveNext<CR>", "Move the current buffer forwards" },
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

## Roadmap

- [ ] Plugin lazy loading
- [ ] Interactive REPL
- [ ] DAP
