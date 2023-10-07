# This file has been auto-generated by plugins.py. Do not edit!
{ fetchFromGitHub, vimUtils }:

_self: {
  LuaSnip = vimUtils.buildVimPlugin {
    pname = "LuaSnip";
    version = "2023-10-06";

    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "cdbf6f41381e5ee4810b4b09284b603d8f18365d";
      hash = "sha256-qY0DnrpQf7SntjLsYPvFReGpEZqplvWVuJw/GbZwi/c=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/L3MON4D3/LuaSnip";
  };

  Navigator-nvim = vimUtils.buildVimPlugin {
    pname = "Navigator.nvim";
    version = "2023-02-02";

    src = fetchFromGitHub {
      owner = "numToStr";
      repo = "Navigator.nvim";
      rev = "91d86506ac2a039504d5205d32a1d4bc7aa57072";
      hash = "sha256-Oyuv8mLPiMEsZPRnIgEjBFYJjGEhMzg+gnNhSSRvGoo=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/numToStr/Navigator.nvim";
  };

  aerial-nvim = vimUtils.buildVimPlugin {
    pname = "aerial.nvim";
    version = "2023-06-25";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "aerial.nvim";
      rev = "7c2a432238b9c8e8c526619fa003e658691ea127";
      hash = "sha256-Msp8VZYwd6OVy8nlmBp7j0PpLMAtIKlkga4tJatHL2w=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/stevearc/aerial.nvim";
  };

  alpha-nvim = vimUtils.buildVimPlugin {
    pname = "alpha-nvim";
    version = "2023-09-14";

    src = fetchFromGitHub {
      owner = "goolord";
      repo = "alpha-nvim";
      rev = "234822140b265ec4ba3203e3e0be0e0bb826dff5";
      hash = "sha256-rXCibNJlNcF+p9PF7EoQM4/pnA1C+KGf7RrIyCY3OJY=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/goolord/alpha-nvim";
  };

  bufferline-nvim = vimUtils.buildVimPlugin {
    pname = "bufferline.nvim";
    version = "2023-10-02";

    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "357cc8f8eeb64702e6fcf2995e3b9becee99a5d3";
      hash = "sha256-Soi4os5X8bdDcMY82lqI0nl3+eipvzLeJPhDX6FeKVk=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/akinsho/bufferline.nvim";
  };

  cmp-cmdline = vimUtils.buildVimPlugin {
    pname = "cmp-cmdline";
    version = "2023-06-08";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-cmdline";
      rev = "8ee981b4a91f536f52add291594e89fb6645e451";
      hash = "sha256-W8v/XhPjbvKSwCrfOAPihO2N9PEVnH5Cp/Fa25lNRw4=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/cmp-cmdline";
  };

  cmp-nvim-lsp = vimUtils.buildVimPlugin {
    pname = "cmp-nvim-lsp";
    version = "2023-06-23";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-nvim-lsp";
      rev = "44b16d11215dce86f253ce0c30949813c0a90765";
      hash = "sha256-mU0soCz79erJXMMqD/FyrJZ0mu2n6fE0deymPzQlxts=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/cmp-nvim-lsp";
  };

  cmp-nvim-lsp-signature-help = vimUtils.buildVimPlugin {
    pname = "cmp-nvim-lsp-signature-help";
    version = "2023-02-03";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-nvim-lsp-signature-help";
      rev = "3d8912ebeb56e5ae08ef0906e3a54de1c66b92f1";
      hash = "sha256-yDxYvjTIeXIKYR3tg+bf+okXKr5JYc/I9obP+6uKey4=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help";
  };

  cmp-omni = vimUtils.buildVimPlugin {
    pname = "cmp-omni";
    version = "2023-05-25";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-omni";
      rev = "9436e6cdd7c5dfa24a99a60d9280b24dbdea3649";
      hash = "sha256-rXOPRu6jWbC0HSU71qtA8VPSKdS7TllWKwXf5Iv+10s=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/cmp-omni";
  };

  cmp-path = vimUtils.buildVimPlugin {
    pname = "cmp-path";
    version = "2022-10-03";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-path";
      rev = "91ff86cd9c29299a64f968ebb45846c485725f23";
      hash = "sha256-thppiiV3wjIaZnAXmsh7j3DUc6ceSCvGzviwFUnoPaI=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/cmp-path";
  };

  cmp-spell = vimUtils.buildVimPlugin {
    pname = "cmp-spell";
    version = "2023-09-20";

    src = fetchFromGitHub {
      owner = "f3fora";
      repo = "cmp-spell";
      rev = "32a0867efa59b43edbb2db67b0871cfad90c9b66";
      hash = "sha256-bdkO+fuZlSHTMRrUWT8dDcJL3JxQU3lHmiQ2swJmIvs=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/f3fora/cmp-spell";
  };

  cmp-under-comparator = vimUtils.buildVimPlugin {
    pname = "cmp-under-comparator";
    version = "2021-11-11";

    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "cmp-under-comparator";
      rev = "6857f10272c3cfe930cece2afa2406e1385bfef8";
      hash = "sha256-sPZX+dbGKOUfcjme4qG82impwYZgLbN5eRmblxPtbKI=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lukas-reineke/cmp-under-comparator";
  };

  cmp_luasnip = vimUtils.buildVimPlugin {
    pname = "cmp_luasnip";
    version = "2022-10-28";

    src = fetchFromGitHub {
      owner = "saadparwaiz1";
      repo = "cmp_luasnip";
      rev = "18095520391186d634a0045dacaa346291096566";
      hash = "sha256-Z5SPy3j2oHFxJ7bK8DP8Q/oRyLEMlnWyIfDaQcNVIS0=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/saadparwaiz1/cmp_luasnip";
  };

  copilot-cmp = vimUtils.buildVimPlugin {
    pname = "copilot-cmp";
    version = "2023-09-09";

    src = fetchFromGitHub {
      owner = "zbirenbaum";
      repo = "copilot-cmp";
      rev = "72fbaa03695779f8349be3ac54fa8bd77eed3ee3";
      hash = "sha256-srgNohm/aJpswNJ5+T7p+zi9Jinp9e5FA8/wdk6VRiY=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/zbirenbaum/copilot-cmp";
  };

  copilot-lua = vimUtils.buildVimPlugin {
    pname = "copilot.lua";
    version = "2023-09-21";

    src = fetchFromGitHub {
      owner = "zbirenbaum";
      repo = "copilot.lua";
      rev = "1a8032ae496916ccc7a7a52ee79194fbef29f462";
      hash = "sha256-UqdPuLf8EPG3aGqj0yk9lTxkDUOdoEc9CRbINJZFcyg=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/zbirenbaum/copilot.lua";
  };

  copilot-vim = vimUtils.buildVimPlugin {
    pname = "copilot.vim";
    version = "2023-09-20";

    src = fetchFromGitHub {
      owner = "github";
      repo = "copilot.vim";
      rev = "998cf5ab1b85e844c7e8edb864a997e590df7182";
      hash = "sha256-7Qfsx4g4FeovOZmV5erFzJKNCkGSGL12gkFIz7cxxek=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/github/copilot.vim";
  };

  diffview-nvim = vimUtils.buildVimPlugin {
    pname = "diffview.nvim";
    version = "2023-10-05";

    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "0437ef8bfdd67156d87140d692840a3c2824fa20";
      hash = "sha256-91HUTtHEE5+8pPSpI73/WbZ507x7Y7xrBBQnjmN3Eyc=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/sindrets/diffview.nvim";
  };

  dressing-nvim = vimUtils.buildVimPlugin {
    pname = "dressing.nvim";
    version = "2023-09-30";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "8f4d62b7817455896a3c73cab642002072c114bc";
      hash = "sha256-oWMNgELkBtYgHaQsSleGuMlOQ4+nWb77w2HYsAkHVjI=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/stevearc/dressing.nvim";
  };

  edgy-nvim = vimUtils.buildVimPlugin {
    pname = "edgy.nvim";
    version = "2023-09-30";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "edgy.nvim";
      rev = "70e334c9cd7915aedde3255ade01ceeebe735b53";
      hash = "sha256-qjpNNcWUx9nVv4P6iaSRZsG7GxheEkjk3OJHjscVlX0=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/edgy.nvim";
  };

  flash-nvim = vimUtils.buildVimPlugin {
    pname = "flash.nvim";
    version = "2023-10-05";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "flash.nvim";
      rev = "6d76c5dee65181ab55cbdfb0760260e800d643f4";
      hash = "sha256-EUnmMrFWFhgDYZ1ohgjfskvq8ldp3XwVv67AUK6TrBU=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/flash.nvim";
  };

  friendly-snippets = vimUtils.buildVimPlugin {
    pname = "friendly-snippets";
    version = "2023-10-01";

    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "43727c2ff84240e55d4069ec3e6158d74cb534b6";
      hash = "sha256-qKY2UEUToOLkAgTNvKb7SSstOX/KydkIUiqFZN8JU+o=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/rafamadriz/friendly-snippets";
  };

  gitsigns-nvim = vimUtils.buildVimPlugin {
    pname = "gitsigns.nvim";
    version = "2023-10-05";

    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "ff01d34daaed72f271a8ffa088a7e839a60c640f";
      hash = "sha256-J9j2OeoEvhl1V8Pzr7i/usVZ2LGI4emlpRGDX+uznjI=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lewis6991/gitsigns.nvim";
  };

  iron-nvim = vimUtils.buildVimPlugin {
    pname = "iron.nvim";
    version = "2023-07-13";

    src = fetchFromGitHub {
      owner = "hkupty";
      repo = "iron.nvim";
      rev = "7f876ee3e1f4ea1e5284b1b697cdad5b256e8046";
      hash = "sha256-dPPMh/8lpJKj6V9jFZaKKVc59IjVwcu/rX83M6fXx3k=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hkupty/iron.nvim";
  };

  lazy-nvim = vimUtils.buildVimPlugin {
    pname = "lazy.nvim";
    version = "2023-03-07";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "5b4444f0d7e556deba3f7ca949a2ba0e2c3369fb";
      hash = "sha256-rWuqJ4jQ2+VnAUP0GAMMxomDj55Kcqgh7OS/O1qZiH0=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/lazy.nvim";
  };

  lsp-format-nvim = vimUtils.buildVimPlugin {
    pname = "lsp-format.nvim";
    version = "2023-09-13";

    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "lsp-format.nvim";
      rev = "e8782a5468a4849ae440a1531be559d85aebe142";
      hash = "sha256-2diLMxkJ+Snno54xeKFHZwtZS5jXSB4EJZJFYy7ENxM=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lukas-reineke/lsp-format.nvim";
  };

  lsp-inlayhints-nvim = vimUtils.buildVimPlugin {
    pname = "lsp-inlayhints.nvim";
    version = "2023-06-08";

    src = fetchFromGitHub {
      owner = "lvimuser";
      repo = "lsp-inlayhints.nvim";
      rev = "d981f65c9ae0b6062176f0accb9c151daeda6f16";
      hash = "sha256-06CiJ+xeMO4+OJkckcslqwloJyt2gwg514JuxV6KOfQ=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lvimuser/lsp-inlayhints.nvim";
  };

  lspkind-nvim = vimUtils.buildVimPlugin {
    pname = "lspkind.nvim";
    version = "2023-05-05";

    src = fetchFromGitHub {
      owner = "onsails";
      repo = "lspkind.nvim";
      rev = "57610d5ab560c073c465d6faf0c19f200cb67e6e";
      hash = "sha256-S+qZm51hw/cRujIfHV/1x1fYyCKI4XQ0utSL8uy4l6I=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/onsails/lspkind.nvim";
  };

  lualine-nvim = vimUtils.buildVimPlugin {
    pname = "lualine.nvim";
    version = "2023-08-03";

    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "45e27ca739c7be6c49e5496d14fcf45a303c3a63";
      hash = "sha256-v8finXk+sLNaFMA7pSHhEu0WF5mhPYWHEKhl0IKBv8c=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-lualine/lualine.nvim";
  };

  mason-lspconfig-nvim = vimUtils.buildVimPlugin {
    pname = "mason-lspconfig.nvim";
    version = "2023-10-02";

    src = fetchFromGitHub {
      owner = "williamboman";
      repo = "mason-lspconfig.nvim";
      rev = "e2705063f395b44f676cd26596a11007a2cbd3bd";
      hash = "sha256-pqaCBOXr79RUjmyqHk7qq69VeQduzUz4tIn2bakoCBI=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/williamboman/mason-lspconfig.nvim";
  };

  mason-nvim = vimUtils.buildVimPlugin {
    pname = "mason.nvim";
    version = "2023-09-10";

    src = fetchFromGitHub {
      owner = "williamboman";
      repo = "mason.nvim";
      rev = "d66c60e17dd6fd8165194b1d14d21f7eb2c1697a";
      hash = "sha256-UqF6cBG9Y1yxzN6xlA70rVzsTlSUSB7tNjc2WF3vZAY=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/williamboman/mason.nvim";
  };

  mini-bufremove = vimUtils.buildVimPlugin {
    pname = "mini.bufremove";
    version = "2023-06-28";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.bufremove";
      rev = "7821606e35c1ac931b56d8e3155f45ffe76ee7e5";
      hash = "sha256-vXrFYDibNqRsk8nMwnLg413XMjibVJZUEiksyF7rmiM=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.bufremove";
  };

  mini-comment = vimUtils.buildVimPlugin {
    pname = "mini.comment";
    version = "2023-05-25";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.comment";
      rev = "877acea5b2a32ff55f808fc0ebe9aa898648318c";
      hash = "sha256-oeXDsSlXHnVt2EcTlJZOdATs90TpWUX+yfKKhxALnZo=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.comment";
  };

  mini-indentscope = vimUtils.buildVimPlugin {
    pname = "mini.indentscope";
    version = "2023-05-02";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.indentscope";
      rev = "f60e9b51a6214c73a170ffc5445ce91560981031";
      hash = "sha256-lqy5GMi0J90X7TDrp4ao5Mp6FmBascfJhLjLurq1TMA=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.indentscope";
  };

  mini-surround = vimUtils.buildVimPlugin {
    pname = "mini.surround";
    version = "2023-07-01";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "9d1956b576d7051da3a483b251dfc778121c60db";
      hash = "sha256-UXkTQyC0yOEVRltUYSn8angJ/+cVlmFpAqxNuoUcY8s=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.surround";
  };

  mini-trailspace = vimUtils.buildVimPlugin {
    pname = "mini.trailspace";
    version = "2023-04-30";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.trailspace";
      rev = "c41ab1035d184ff20c1aebd76639320c055afebe";
      hash = "sha256-NFMd1JAmBbUYPUYQpHqLCDp8lkSxt7OQ7vlZSVbw24g=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.trailspace";
  };

  neoconf-nvim = vimUtils.buildVimPlugin {
    pname = "neoconf.nvim";
    version = "2023-10-07";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "neoconf.nvim";
      rev = "f2f29dfb94890abfe64a0915fa3b31ec2aea85e6";
      hash = "sha256-3Uxl1WzDuiPFLMYk8Gz9E/niqQ+H5tBNZx6/V+3R1xE=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/neoconf.nvim";
  };

  neodev-nvim = vimUtils.buildVimPlugin {
    pname = "neodev.nvim";
    version = "2023-06-28";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "a2b1d8fb9fa4daa35d3fd9123bccccccbd4a3520";
      hash = "sha256-FmX47jnWGqk+yufpT3UNk2HvgmwmvKfBFn/MOcTqoPo=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/neodev.nvim";
  };

  neogit = vimUtils.buildVimPlugin {
    pname = "neogit";
    version = "2023-10-02";

    src = fetchFromGitHub {
      owner = "NeogitOrg";
      repo = "neogit";
      rev = "ed99c59d7fda3ba5e2ce9a3adc0a8eb5ebfa6c8f";
      hash = "sha256-4fKiuA7wzBPrtTeZDmOEQsCZWfUmPA08QW+SwOGiTr4=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/NeogitOrg/neogit";
  };

  noice-nvim = vimUtils.buildVimPlugin {
    pname = "noice.nvim";
    version = "2023-10-07";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "4f32a3e2b7b47e9b6ca396c03641661056a978e7";
      hash = "sha256-TlLMPdi2aOoyTWNv5BjJ3xkCsJ/52gsBisHnOPNf/ao=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/noice.nvim";
  };

  nui-nvim = vimUtils.buildVimPlugin {
    pname = "nui.nvim";
    version = "2023-09-06";

    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "c8de23342caf8d50b15d6b28368d36a56a69d76f";
      hash = "sha256-Ao+xnowsZPR9x3Wm439l1QIlgt3Rt6n9DZIqkUKsR1k=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/MunifTanjim/nui.nvim";
  };

  null-ls-nvim = vimUtils.buildVimPlugin {
    pname = "null-ls.nvim";
    version = "2023-07-06";

    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "null-ls.nvim";
      rev = "db09b6c691def0038c456551e4e2772186449f35";
      hash = "sha256-6KJtj9pbvBm6fOVpnyzO2fEVC+cVrw2XtZHOgq9ieIw=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/jose-elias-alvarez/null-ls.nvim";
  };

  nvim-autopairs = vimUtils.buildVimPlugin {
    pname = "nvim-autopairs";
    version = "2023-09-23";

    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "de4f7138a68d5d5063170f2182fd27faf06b0b54";
      hash = "sha256-DXaaoMxv85Cb8K24J0nK+DHhvQ/vfrAOVih90Am48V4=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/windwp/nvim-autopairs";
  };

  nvim-cmp = vimUtils.buildVimPlugin {
    pname = "nvim-cmp";
    version = "2023-08-26";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "5dce1b778b85c717f6614e3f4da45e9f19f54435";
      hash = "sha256-WGck3By9GhnBUmzLGi2wnKjDreQx5kBOmHCbC5BZhfo=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/nvim-cmp";
  };

  nvim-colorizer-lua = vimUtils.buildVimPlugin {
    pname = "nvim-colorizer.lua";
    version = "2023-02-27";

    src = fetchFromGitHub {
      owner = "NvChad";
      repo = "nvim-colorizer.lua";
      rev = "dde3084106a70b9a79d48f426f6d6fec6fd203f7";
      hash = "sha256-hShQabr+UafsP+yicWkHycWLTbPhOpRpoa9oTMMVZ9o=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/NvChad/nvim-colorizer.lua";
  };

  nvim-lspconfig = vimUtils.buildVimPlugin {
    pname = "nvim-lspconfig";
    version = "2023-10-06";

    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "2b361e043810d5587d9af0787f8ce40da92ec5e9";
      hash = "sha256-i3lDsFwoMddpN1I4t3Fj+Dthyxq7twCgpYuNtlvfI5Y=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/neovim/nvim-lspconfig";
  };

  nvim-navic = vimUtils.buildVimPlugin {
    pname = "nvim-navic";
    version = "2023-09-18";

    src = fetchFromGitHub {
      owner = "SmiteshP";
      repo = "nvim-navic";
      rev = "0ffa7ffe6588f3417e680439872f5049e38a24db";
      hash = "sha256-X4CFFihI5PFIiHlwQt6VoUIxhm5oBuUvIQxCo9k7zRE=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/SmiteshP/nvim-navic";
  };

  nvim-notify = vimUtils.buildVimPlugin {
    pname = "nvim-notify";
    version = "2023-09-28";

    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-notify";
      rev = "e4a2022f4fec2d5ebc79afa612f96d8b11c627b3";
      hash = "sha256-1tWvzE4x1lgldg6vAHCQy9XDMcxJ6G9bZPSG1pEn+qg=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/rcarriga/nvim-notify";
  };

  nvim-tree-lua = vimUtils.buildVimPlugin {
    pname = "nvim-tree.lua";
    version = "2023-10-07";

    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "85abe2939620fe63b73ec97d3e2e0c7f2ec4fe23";
      hash = "sha256-jOpN62CqceIHVLtmRnGLGA0VPDFXxEs/iwEzLdV7q48=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-tree/nvim-tree.lua";
  };

  nvim-treesitter-endwise = vimUtils.buildVimPlugin {
    pname = "nvim-treesitter-endwise";
    version = "2023-09-23";

    src = fetchFromGitHub {
      owner = "RRethy";
      repo = "nvim-treesitter-endwise";
      rev = "4c344ffc8d54d7e1ba2cefaaa2c10ea93aa1cc2d";
      hash = "sha256-fkZjVQvlJpcKrmX8ST7TQ9VpCZ9U1dM5OLz6P8KnQAw=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/RRethy/nvim-treesitter-endwise";
  };

  nvim-treesitter-refactor = vimUtils.buildVimPlugin {
    pname = "nvim-treesitter-refactor";
    version = "2023-04-04";

    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter-refactor";
      rev = "65ad2eca822dfaec2a3603119ec3cc8826a7859e";
      hash = "sha256-yzSkoH690qIEqvhiv0exeH7pS+J5ZVkqidEUOn0kb5M=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-treesitter/nvim-treesitter-refactor";
  };

  nvim-treesitter-textobjects = vimUtils.buildVimPlugin {
    pname = "nvim-treesitter-textobjects";
    version = "2023-10-06";

    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter-textobjects";
      rev = "4724694bc03ce1148860a46d9d77c3664d8188ab";
      hash = "sha256-a5eQUnofk57eB+dGQ46f2f1tUTbivcQBd5EhHRQCrVk=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects";
  };

  nvim-ts-autotag = vimUtils.buildVimPlugin {
    pname = "nvim-ts-autotag";
    version = "2023-06-16";

    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "6be1192965df35f94b8ea6d323354f7dc7a557e4";
      hash = "sha256-4qTtXYA5HyG1sADV0wsiccO/G89qEoYPmlg8tTx7h8g=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/windwp/nvim-ts-autotag";
  };

  nvim-ts-rainbow = vimUtils.buildVimPlugin {
    pname = "nvim-ts-rainbow";
    version = "2023-01-02";

    src = fetchFromGitHub {
      owner = "p00f";
      repo = "nvim-ts-rainbow";
      rev = "ef95c15a935f97c65a80e48e12fe72d49aacf9b9";
      hash = "sha256-4RQptdc3ktaj+Vw1Ykr6jD4q1JEsKNyBNUgUEdNDu1E=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/p00f/nvim-ts-rainbow";
  };

  nvim-web-devicons = vimUtils.buildVimPlugin {
    pname = "nvim-web-devicons";
    version = "2023-09-24";

    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "45d0237c427baba8cd05e0ab26d30e2ee58c2c82";
      hash = "sha256-k1oq5TBF0ZAfC1aihw/HLrvOHwZSX8ToDU3aZ3YXdzE=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-tree/nvim-web-devicons";
  };

  nvimacs = vimUtils.buildVimPlugin {
    pname = "nvimacs";
    version = "2022-06-22";

    src = fetchFromGitHub {
      owner = "sei40kr";
      repo = "nvimacs";
      rev = "99f063cd25957cabc21e85f9d4d860d5be689a81";
      hash = "sha256-f1ryo1Qq9/WMChzvS1gKO/mdxUZ/0TpOS5A9qubxW90=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/sei40kr/nvimacs";
  };

  octo-nvim = vimUtils.buildVimPlugin {
    pname = "octo.nvim";
    version = "2023-10-06";

    src = fetchFromGitHub {
      owner = "pwntester";
      repo = "octo.nvim";
      rev = "34101750cd7204ab8750af985f0ac911be8d1cd9";
      hash = "sha256-2OhW2Df3gRAHm//+i/TIG35XZqflikglRTZIqAp4p0c=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/pwntester/octo.nvim";
  };

  open-browser-github-vim = vimUtils.buildVimPlugin {
    pname = "open-browser-github.vim";
    version = "2021-03-21";

    src = fetchFromGitHub {
      owner = "tyru";
      repo = "open-browser-github.vim";
      rev = "ac7c034e300f36d591ef234dcd5eb5cd5c07c74f";
      hash = "sha256-nsYbsuUplc8Fye+exMo7GGLYbAbean/tGqxNJR+Awlg=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/tyru/open-browser-github.vim";
  };

  open-browser-vim = vimUtils.buildVimPlugin {
    pname = "open-browser.vim";
    version = "2022-10-08";

    src = fetchFromGitHub {
      owner = "tyru";
      repo = "open-browser.vim";
      rev = "7d4c1d8198e889d513a030b5a83faa07606bac27";
      hash = "sha256-9QZgTv8W0BFlF0lsH1BPPAzjD6iXWXHXZf2zpouQH2s=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/tyru/open-browser.vim";
  };

  overseer-nvim = vimUtils.buildVimPlugin {
    pname = "overseer.nvim";
    version = "2023-10-06";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "overseer.nvim";
      rev = "62e812574e93380ea0704de9455ee68e5a098e93";
      hash = "sha256-CIMzdwGUZ5+/NFm+NoF2BypHVYG++KVrBXqxmETKXQ4=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/stevearc/overseer.nvim";
  };

  plenary-nvim = vimUtils.buildVimPlugin {
    pname = "plenary.nvim";
    version = "2023-07-06";

    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "bda256fab0eb66a15e8190937e417e6a14ee5d72";
      hash = "sha256-NJEr3YcsoOPo1DUTtJyu2cZjucJw2Ubsd/lvD/VdXuc=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-lua/plenary.nvim";
  };

  project-nvim = vimUtils.buildVimPlugin {
    pname = "project.nvim";
    version = "2023-04-04";

    src = fetchFromGitHub {
      owner = "ahmedkhalf";
      repo = "project.nvim";
      rev = "8c6bad7d22eef1b71144b401c9f74ed01526a4fb";
      hash = "sha256-avV3wMiDbraxW4mqlEsKy0oeewaRj9Q33K8NzWoaptU=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/ahmedkhalf/project.nvim";
  };

  rust-tools-nvim = vimUtils.buildVimPlugin {
    pname = "rust-tools.nvim";
    version = "2023-07-10";

    src = fetchFromGitHub {
      owner = "simrat39";
      repo = "rust-tools.nvim";
      rev = "0cc8adab23117783a0292a0c8a2fbed1005dc645";
      hash = "sha256-jtfyDxifchznUupLSao6nmpVqaX1yO0xN+NhqS9fgxg=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/simrat39/rust-tools.nvim";
  };

  scope-nvim = vimUtils.buildVimPlugin {
    pname = "scope.nvim";
    version = "2023-09-10";

    src = fetchFromGitHub {
      owner = "tiagovla";
      repo = "scope.nvim";
      rev = "01ce40fe7434fba9a122c01b4734479b3860609a";
      hash = "sha256-6yTCqbBxJpcw8RfLBPfBHPRwii1TOdG+zUycX6MYbIE=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/tiagovla/scope.nvim";
  };

  stickybuf-nvim = vimUtils.buildVimPlugin {
    pname = "stickybuf.nvim";
    version = "2023-05-27";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "stickybuf.nvim";
      rev = "fc75dc22d12e5446c72a0d5f067cd7a16b3d921a";
      hash = "sha256-bHwBZj0AETuxgenqoBjjvyQyAZ8uLutnfKVzWL+Ray0=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/stevearc/stickybuf.nvim";
  };

  structlog-nvim = vimUtils.buildVimPlugin {
    pname = "structlog.nvim";
    version = "2023-01-08";

    src = fetchFromGitHub {
      owner = "Tastyep";
      repo = "structlog.nvim";
      rev = "45b26a2b1036bb93c0e83f4225e85ab3cee8f476";
      hash = "sha256-Bq4YNpLQ1+iSBuN5MG4OBmI5r3DGWyDou4kRCMnked0=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/Tastyep/structlog.nvim";
  };

  telescope-file-browser-nvim = vimUtils.buildVimPlugin {
    pname = "telescope-file-browser.nvim";
    version = "2023-09-23";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-file-browser.nvim";
      rev = "6e51d0cd6447cf2525412220ff0a2885eef9039c";
      hash = "sha256-OMUsmrn4A351p95KXHxW4B8etRuKnpHk9tJ2tQUXXc8=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-telescope/telescope-file-browser.nvim";
  };

  telescope-fzy-native-nvim = vimUtils.buildVimPlugin {
    pname = "telescope-fzy-native.nvim";
    version = "2022-09-11";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-fzy-native.nvim";
      rev = "282f069504515eec762ab6d6c89903377252bf5b";
      hash = "sha256-ntSc/Z2KGwAPwBSgQ2m+Q9HgpGUwGbd+4fA/dtzOXY4=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-telescope/telescope-fzy-native.nvim";
  };

  telescope-luasnip-nvim = vimUtils.buildVimPlugin {
    pname = "telescope-luasnip.nvim";
    version = "2023-10-05";

    src = fetchFromGitHub {
      owner = "benfowler";
      repo = "telescope-luasnip.nvim";
      rev = "2ef7da3a363890686dbaad18ddbf59177cfe4f78";
      hash = "sha256-oilJP2HG4Q0bgy98Iavjq2xQiD9hxpCCbMqZ43GY2s8=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/benfowler/telescope-luasnip.nvim";
  };

  telescope-project-nvim = vimUtils.buildVimPlugin {
    pname = "telescope-project.nvim";
    version = "2023-04-27";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-project.nvim";
      rev = "7c64b181dd4e72deddcf6f319e3bf1e95b2a2f30";
      hash = "sha256-H6lrPjpOUVleKHB0ziI+6dthg9ymitHhEWtcgYJTrKo=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-telescope/telescope-project.nvim";
  };

  telescope-symbols-nvim = vimUtils.buildVimPlugin {
    pname = "telescope-symbols.nvim";
    version = "2023-02-19";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-symbols.nvim";
      rev = "f2060117d965df4a626f068a4ebbd8ee051aa076";
      hash = "sha256-cNBqJe6kjwi3d+SNiJhy9DQYqClcxvy1+TMLip6QN70=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-telescope/telescope-symbols.nvim";
  };

  telescope-tabs = vimUtils.buildVimPlugin {
    pname = "telescope-tabs";
    version = "2023-07-22";

    src = fetchFromGitHub {
      owner = "LukasPietzschmann";
      repo = "telescope-tabs";
      rev = "8fa5f3c453f3794c9289f88a05504e86eb8fd582";
      hash = "sha256-HnQUXJqMsiTzuBk+MBmmjFReNhHHOGLmVifp2XGIkPo=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/LukasPietzschmann/telescope-tabs";
  };

  telescope-nvim = vimUtils.buildVimPlugin {
    pname = "telescope.nvim";
    version = "2023-10-06";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "205f469244916716c49cc2b9026566749425c5ba";
      hash = "sha256-pzxEfMG8+1xohLm0ZNkfstw4yzeOFywVf9yC4vyOnGw=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-telescope/telescope.nvim";
  };

  todo-comments-nvim = vimUtils.buildVimPlugin {
    pname = "todo-comments.nvim";
    version = "2023-05-22";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "todo-comments.nvim";
      rev = "09b0b17d824d2d56f02ff15967e8a2499a89c731";
      hash = "sha256-lHtgGzRk5OpUtlpEEEzIjyvh2DkehlB5x7S79Wzs4Ec=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/todo-comments.nvim";
  };

  toggleterm-nvim = vimUtils.buildVimPlugin {
    pname = "toggleterm.nvim";
    version = "2023-10-02";

    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "toggleterm.nvim";
      rev = "c80844fd52ba76f48fabf83e2b9f9b93273f418d";
      hash = "sha256-y+xMqHUJEBvZuE2+JRlfqZX9enWV0+qyTzuwU9PAK6c=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/akinsho/toggleterm.nvim";
  };

  tokyonight-nvim = vimUtils.buildVimPlugin {
    pname = "tokyonight.nvim";
    version = "2023-10-04";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "tokyonight.nvim";
      rev = "4412dafadf920deb9e08d4b9c1c11b2cf65ca1ca";
      hash = "sha256-CdbUX1XH29n/G+vy3UuO5m6YdHI4wPMhQ02s30pLJ8Q=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/tokyonight.nvim";
  };

  trouble-nvim = vimUtils.buildVimPlugin {
    pname = "trouble.nvim";
    version = "2023-10-07";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "2ea761f697a00954956da9be1b591649d87e9631";
      hash = "sha256-BAFfBMDyyhMgl8S83rbcDaY0HfcOhncEENncsyDWCYU=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/trouble.nvim";
  };

  typescript-nvim = vimUtils.buildVimPlugin {
    pname = "typescript.nvim";
    version = "2023-06-06";

    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "typescript.nvim";
      rev = "5b3680e5c386e8778c081173ea0c978c14a40ccb";
      hash = "sha256-v1HJTsm3T+B9RDFFqEdp8mWamR+7CRsX7YJ49Nl6vUc=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/jose-elias-alvarez/typescript.nvim";
  };

  vim-illuminate = vimUtils.buildVimPlugin {
    pname = "vim-illuminate";
    version = "2023-10-06";

    src = fetchFromGitHub {
      owner = "RRethy";
      repo = "vim-illuminate";
      rev = "3bd2ab64b5d63b29e05691e624927e5ebbf0fb86";
      hash = "sha256-KdF52Ho4c8VKt3qBgBIxYnDK8upXqlUj+YnL2IaJdHQ=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/RRethy/vim-illuminate";
  };

  vim-visual-multi = vimUtils.buildVimPlugin {
    pname = "vim-visual-multi";
    version = "2020-09-01";

    src = fetchFromGitHub {
      owner = "mg979";
      repo = "vim-visual-multi";
      rev = "v0.5.8";
      hash = "sha256-DwV0fV7I9FbVk+WCqx/isrmqoY2VRekgqpMO/Tqs70k=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/mg979/vim-visual-multi";
  };

  virt-column-nvim = vimUtils.buildVimPlugin {
    pname = "virt-column.nvim";
    version = "2023-01-20";

    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "virt-column.nvim";
      rev = "93b40ea038f676f5a72d7d1f2336fe7b051fc0ce";
      hash = "sha256-6EbEzg2bfoHmVZyggwvsDlW9OOA4UkcfO0qG0TEDKQs=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lukas-reineke/virt-column.nvim";
  };

  which-key-nvim = vimUtils.buildVimPlugin {
    pname = "which-key.nvim";
    version = "2023-07-28";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "7ccf476ebe0445a741b64e36c78a682c1c6118b7";
      hash = "sha256-B1+EHd2eH/EbD5Kip9PfhdPyyGfIkD6rsx0Z3rXvb5w=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/which-key.nvim";
  };

  yanky-nvim = vimUtils.buildVimPlugin {
    pname = "yanky.nvim";
    version = "2023-10-06";

    src = fetchFromGitHub {
      owner = "gbprod";
      repo = "yanky.nvim";
      rev = "636632d70ac00c45bdc1751d7b35c83d47081f36";
      hash = "sha256-HB/MXPzfUH5tTLHSQIQRo0dafBeTs2SPczPbvHWBfFc=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/gbprod/yanky.nvim";
  };
}
