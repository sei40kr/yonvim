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
    version = "2023-06-09";

    src = fetchFromGitHub {
      owner = "goolord";
      repo = "alpha-nvim";
      rev = "9e33db324b8bb7a147bce9ea5496686ee859461d";
      hash = "sha256-DgKL4BgEVGSESxdBf8CbWMeAkcN/7vi1DuqIZVvmtlA=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/goolord/alpha-nvim";
  };

  bufferline-nvim = vimUtils.buildVimPlugin {
    pname = "bufferline.nvim";
    version = "2023-06-28";

    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "2f391fde91b9c3876eee359ee24cc352050e5e48";
      hash = "sha256-e+TaXvZI+nfnK3gFoLK5ffwsm6B+15YCeehnoISK4mE=";
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
    version = "2023-06-26";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "e6eff7a5a950a853c3903d906dbcea03f778db5f";
      hash = "sha256-ZBioRuUITIJnDACguFPZZDulY7OSzGxXL1s/1+qDHKA=";
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
    version = "2023-07-04";

    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "dc2962f7fce953a2a98e7c6d3d7fc4c1d1f66758";
      hash = "sha256-FomOBFwUrvE4QaQ49J86zIafvEde6cNsiNbJ3JzVK58=";
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
    version = "2022-11-25";

    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "lsp-format.nvim";
      rev = "ca0df5c8544e51517209ea7b86ecc522c98d4f0a";
      hash = "sha256-UeeM+rHDjsZS27L2Orh+doB6eo6YNV8gb0yLs0PjkLA=";
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
    version = "2023-05-04";

    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "05d78e9fd0cdfb4545974a5aa14b1be95a86e9c9";
      hash = "sha256-ltHE8UIquGo07BSlFGM1l3wmTNN43i8kx6QY7Fj2CNo=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-lualine/lualine.nvim";
  };

  mason-lspconfig-nvim = vimUtils.buildVimPlugin {
    pname = "mason-lspconfig.nvim";
    version = "2023-07-06";

    src = fetchFromGitHub {
      owner = "williamboman";
      repo = "mason-lspconfig.nvim";
      rev = "82685fdd0f67a694b244cb058b83761f54664d68";
      hash = "sha256-prTjtybNw0T0PFrYaFZUdXZEgdL4McJNF8oY0ythFUk=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/williamboman/mason-lspconfig.nvim";
  };

  mason-nvim = vimUtils.buildVimPlugin {
    pname = "mason.nvim";
    version = "2023-07-04";

    src = fetchFromGitHub {
      owner = "williamboman";
      repo = "mason.nvim";
      rev = "5ad3e113b0c3fde3caba8630599373046f6197e8";
      hash = "sha256-LIlV8dmHlKyLPsv/SZ9x6m5uvbjhDPi1GSH/rIhfC9c=";
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
    version = "2023-06-29";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "neoconf.nvim";
      rev = "08f146d53e075055500dca35e93281faff95716b";
      hash = "sha256-e/VlxOqRBAzarrRoAcfTaC4spbiQNo1Nbe6DKuZNK+M=";
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
    version = "2023-07-07";

    src = fetchFromGitHub {
      owner = "NeogitOrg";
      repo = "neogit";
      rev = "1b6edb56e8c754494be1564912d33e50ddd8a023";
      hash = "sha256-YlR6GSD4SMqoxjwhJ98ZLFhF+73zxqMmfJRgdxUkp2I=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/NeogitOrg/neogit";
  };

  noice-nvim = vimUtils.buildVimPlugin {
    pname = "noice.nvim";
    version = "2023-07-01";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "6c87c1d11c38180fb72bf8f45518a0a3e081afc1";
      hash = "sha256-khzQ8JNf2Q3rzpXTCJXhAEgrcEVN9NQvyEEQNSjlDng=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/noice.nvim";
  };

  nui-nvim = vimUtils.buildVimPlugin {
    pname = "nui.nvim";
    version = "2023-06-18";

    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "d146966a423e60699b084eeb28489fe3b6427599";
      hash = "sha256-OFfkkFPkBJoVf9W6CL/AD5E4erPKYTMg069E1cI54DE=";
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
    version = "2023-07-07";

    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "51739a8bc531542079698c58512feb68469f5d27";
      hash = "sha256-sGKZW0XaBtQd1K8583wm2JUG5tHjy673bD4t7b9htxc=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/neovim/nvim-lspconfig";
  };

  nvim-navic = vimUtils.buildVimPlugin {
    pname = "nvim-navic";
    version = "2023-07-06";

    src = fetchFromGitHub {
      owner = "SmiteshP";
      repo = "nvim-navic";
      rev = "e3b9d8a974bec71b88d5640f1c87bf5b4a7e4113";
      hash = "sha256-ZwbLxOsm7GWToy3JQO3PT2xFfouvj/HIp1s2ROgfoHs=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/SmiteshP/nvim-navic";
  };

  nvim-notify = vimUtils.buildVimPlugin {
    pname = "nvim-notify";
    version = "2023-06-05";

    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-notify";
      rev = "ea9c8ce7a37f2238f934e087c255758659948e0f";
      hash = "sha256-Rr2tzuEr06M9ZbvQbC07qcxkyjFJFYdABwRpYelKBFI=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/rcarriga/nvim-notify";
  };

  nvim-tree-lua = vimUtils.buildVimPlugin {
    pname = "nvim-tree.lua";
    version = "2023-07-02";

    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "4af572246ce49883e2a52c49203a19984454f2e0";
      hash = "sha256-c4xsbCGsm67wssPdmRoHk/8HEOqlPu1RHSWKlvEI9vw=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-tree/nvim-tree.lua";
  };

  nvim-treesitter-endwise = vimUtils.buildVimPlugin {
    pname = "nvim-treesitter-endwise";
    version = "2023-06-28";

    src = fetchFromGitHub {
      owner = "RRethy";
      repo = "nvim-treesitter-endwise";
      rev = "9298b3ac8fd6d0d8f9e321194c6d3fd37e417cf9";
      hash = "sha256-IQ0LLzVVEfYj9Om/f0bcSluEwXTecc8VQOOQsUVCbP4=";
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
    version = "2023-06-26";

    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter-textobjects";
      rev = "52f1f3280d9092bfaee5c45be5962fabee3d9654";
      hash = "sha256-UqderGoFad6tIny3pn38mB2XibA0dzxUVWNBYmsxAMw=";
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
    version = "2023-06-25";

    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "9ab9b0b894b2388a9dbcdee5f00ce72e25d85bf9";
      hash = "sha256-lN8LUgQ0sJDMByFkUmfVy6h2EVPAP3hqrwqE0++XgMQ=";
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
    version = "2023-06-30";

    src = fetchFromGitHub {
      owner = "pwntester";
      repo = "octo.nvim";
      rev = "22328c578bc013fa4b0cef3d00af35efe0c0f256";
      hash = "sha256-G1GWHuI9F3FJn4mWGAgLO3wG28qhL57AF8Vf98o+MyI=";
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
    version = "2023-07-14";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "overseer.nvim";
      rev = "4d046a116c80db4300a66a58288a6b75b5a8c54f";
      hash = "sha256-jj4XRgrqMY6wv8wWZTfBBu+pN2aUjRUVKTQAjXM4Du4=";
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
    version = "2023-02-20";

    src = fetchFromGitHub {
      owner = "simrat39";
      repo = "rust-tools.nvim";
      rev = "71d2cf67b5ed120a0e31b2c8adb210dd2834242f";
      hash = "sha256-Cuk/vdoviB9ibt2rrkNRmNFy4S+6czhbExmIjTJRdZM=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/simrat39/rust-tools.nvim";
  };

  scope-nvim = vimUtils.buildVimPlugin {
    pname = "scope.nvim";
    version = "2023-06-28";

    src = fetchFromGitHub {
      owner = "tiagovla";
      repo = "scope.nvim";
      rev = "4a67c3e16867b2b241f5f2db2ab291497b76bece";
      hash = "sha256-Ii1k+tiA/K1Yx2Cm/P5ayQLWjtXJVVvmXGfpADkfSKI=";
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
    version = "2023-07-01";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-file-browser.nvim";
      rev = "e03ff55962417b69c85ef41424079bb0580546ba";
      hash = "sha256-lLqX/8adu6TCehay+iVu5gVzo13RucoeuxhwszjM/Kk=";
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
    version = "2023-02-02";

    src = fetchFromGitHub {
      owner = "benfowler";
      repo = "telescope-luasnip.nvim";
      rev = "849c4ee1951f34041a26744d2a88284545564ff0";
      hash = "sha256-rRTvZ97cQlzOn68JkSVCqhMBU77SQMHeCDDSgTEkScQ=";
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
    version = "2023-04-21";

    src = fetchFromGitHub {
      owner = "LukasPietzschmann";
      repo = "telescope-tabs";
      rev = "4e5c56ad020f2204d39c5d0a4775cc1bd2897041";
      hash = "sha256-srHGeLCV5NZQrhKUboc/qtAQRrDp3kkhbmCiLm9BZa8=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/LukasPietzschmann/telescope-tabs";
  };

  telescope-nvim = vimUtils.buildVimPlugin {
    pname = "telescope.nvim";
    version = "2023-07-06";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "276362a8020c6e94c7a76d49aa00d4923b0c02f3";
      hash = "sha256-K1aInC4nOxQSUc9j03wXWkSTHBCsOYj11Ks8iF3MeRA=";
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
    version = "2023-07-05";

    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "toggleterm.nvim";
      rev = "2249e974faed67e795ffc2ca2be13b93c5d51938";
      hash = "sha256-wh/VVf8btRn7UEV4k4XZxj64atzRxB59hrAQpyjLtH0=";
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
    version = "2023-06-24";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "d99e2abd10808ef91738ce98a5c767e6a51df449";
      hash = "sha256-HvgCL5VTEuvFKLAs0f2zbVnetd5jAsgoYREqLMS+vkg=";
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
    version = "2023-03-19";

    src = fetchFromGitHub {
      owner = "RRethy";
      repo = "vim-illuminate";
      rev = "a2907275a6899c570d16e95b9db5fd921c167502";
      hash = "sha256-8dL3cBjQ2iY4D4gTxKVVmOGhxcSSRuDBvmEwwFIbWsQ=";
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
    version = "2023-06-19";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "d871f2b664afd5aed3dc1d1573bef2fb24ce0484";
      hash = "sha256-WNAHN/z3JPIAG/gd992y/0+u4mGbhozd96IJCSpHBwA=";
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
