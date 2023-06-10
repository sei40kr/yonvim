# This file has been auto-generated by plugins.py. Do not edit!
{ fetchFromGitHub, vimUtils }:

_self: {
  LuaSnip = vimUtils.buildVimPlugin {
    pname = "LuaSnip";
    version = "2023-06-07";

    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "a13af80734eb28f744de6c875330c9d3c24b5f3b";
      hash = "sha256-DZc5MYAoQzKWzgiYJ1ddgg7a4YnpnAbeN/usimAGDhQ=";
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
    version = "2023-06-02";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "aerial.nvim";
      rev = "aff1bb8fecff83d3e3a2d544c4d4e6d65718bd19";
      hash = "sha256-gh4GaTc4gDFydCo0oQUAJvmbJDmfagN8TgZZjNheKNQ=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/stevearc/aerial.nvim";
  };

  bufferline-nvim = vimUtils.buildVimPlugin {
    pname = "bufferline.nvim";
    version = "2023-06-02";

    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "02d795081e6a24ec1fd506c513491543793d0780";
      hash = "sha256-bZCqccQPI20MjsRZoWy89gGe59x8f8RtOgbrgrHdBP8=";
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
    version = "2023-02-06";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-nvim-lsp";
      rev = "0e6b2ed705ddcff9738ec4ea838141654f12eeef";
      hash = "sha256-DxpcPTBlvVP88PDoTheLV2fC76EXDqS2UpM5mAfj/D4=";
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
    version = "2022-10-03";

    src = fetchFromGitHub {
      owner = "f3fora";
      repo = "cmp-spell";
      rev = "60584cb75e5e8bba5a0c9e4c3ab0791e0698bffa";
      hash = "sha256-e6nHT+5xEXDFkWes89R85FdriPSP0fPiuoXwgBdH+9M=";
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
    version = "2023-05-11";

    src = fetchFromGitHub {
      owner = "zbirenbaum";
      repo = "copilot-cmp";
      rev = "c2cdb3c0f5078b0619055af192295830a7987790";
      hash = "sha256-+MzEGnhlrYRvAfskOwmw69OC1CsPXt7s3z+xPe9XPqs=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/zbirenbaum/copilot-cmp";
  };

  copilot-lua = vimUtils.buildVimPlugin {
    pname = "copilot.lua";
    version = "2023-05-28";

    src = fetchFromGitHub {
      owner = "zbirenbaum";
      repo = "copilot.lua";
      rev = "77e3a4907928f0813024e573b882dc879dfc0c6b";
      hash = "sha256-jBTS8MeN7Ydf0ZY7JWbrxaGo/GeDoEClfULiJVfN8Wo=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/zbirenbaum/copilot.lua";
  };

  copilot-vim = vimUtils.buildVimPlugin {
    pname = "copilot.vim";
    version = "2022-10-12";

    src = fetchFromGitHub {
      owner = "github";
      repo = "copilot.vim";
      rev = "8ba151a20bc1d7a5c72e592e51bfc925d5bbb837";
      hash = "sha256-GmwR+S5sQnVUbVShP53jNpSKMZaoeh9Rf37v89wAJ3M=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/github/copilot.vim";
  };

  diffview-nvim = vimUtils.buildVimPlugin {
    pname = "diffview.nvim";
    version = "2023-06-10";

    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "6780a8a27f5cd326f502653cecef701611641fdf";
      hash = "sha256-/b6PwwuKQUiAYPkdtrh6m2sYwQui/ZANg/haJAOsx+M=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/sindrets/diffview.nvim";
  };

  dressing-nvim = vimUtils.buildVimPlugin {
    pname = "dressing.nvim";
    version = "2023-06-02";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "f16d7586fcdd8b2e3850d0abb7e46f944125cc25";
      hash = "sha256-Tz/yG7HjwRDF4LXTng2laP9k3K+O/a0ttjEaSNcRnZs=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/stevearc/dressing.nvim";
  };

  friendly-snippets = vimUtils.buildVimPlugin {
    pname = "friendly-snippets";
    version = "2023-06-09";

    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "b71d1ddc30a10ce0474156f7ee93bc9006d0cd74";
      hash = "sha256-YVzyD9/UI+xm/NQDL0NTPv3ZaIGkfXBJWYowk9Ipsks=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/rafamadriz/friendly-snippets";
  };

  gitsigns-nvim = vimUtils.buildVimPlugin {
    pname = "gitsigns.nvim";
    version = "2023-06-07";

    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "4455bb5364d29ff86639dfd5533d4fe4b48192d4";
      hash = "sha256-DmbtKxU/tyFzIUNzoKvtsqlucdINYCSePzLiV7LLGn4=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lewis6991/gitsigns.nvim";
  };

  hop-nvim = vimUtils.buildVimPlugin {
    pname = "hop.nvim";
    version = "2023-05-17";

    src = fetchFromGitHub {
      owner = "phaazon";
      repo = "hop.nvim";
      rev = "03f0434869f1f38868618198b5f4f2ab6d39aef2";
      hash = "sha256-xdjFbdp0+S3pVdwcOFmad8PMUU033WeDzswOSdxSQjg=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/phaazon/hop.nvim";
  };

  iron-nvim = vimUtils.buildVimPlugin {
    pname = "iron.nvim";
    version = "2023-06-04";

    src = fetchFromGitHub {
      owner = "hkupty";
      repo = "iron.nvim";
      rev = "9017061849e543d8e94b79d2a94b95e856ab6a10";
      hash = "sha256-XJXi3i7wpBWDd5sny90Gw6ucOlnn1m8sYSVcUh/3Ufk=";
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
    version = "2023-06-05";

    src = fetchFromGitHub {
      owner = "williamboman";
      repo = "mason-lspconfig.nvim";
      rev = "5230617372e656d4a2e1e236e03bf7e7b4b97273";
      hash = "sha256-lIdqihLKyfJV0dVo8JnIRweyBOUaHj8cEdBPvFhYzfE=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/williamboman/mason-lspconfig.nvim";
  };

  mason-nvim = vimUtils.buildVimPlugin {
    pname = "mason.nvim";
    version = "2023-05-29";

    src = fetchFromGitHub {
      owner = "williamboman";
      repo = "mason.nvim";
      rev = "7d7efc738e08fc5bee822857db45cb6103f0b0c1";
      hash = "sha256-tP3Hl+ufc8oo6jhYgHl9t0CWNnDW5MQeu4L/GszLEdU=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/williamboman/mason.nvim";
  };

  mini-bufremove = vimUtils.buildVimPlugin {
    pname = "mini.bufremove";
    version = "2023-03-30";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.bufremove";
      rev = "14805473144fffbd019d07e51bed2d176e065ee9";
      hash = "sha256-BCfKulQFxKL1Q0doFddnf/VGUu3ROq5X0f1dudA0aVk=";
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

  mini-jump = vimUtils.buildVimPlugin {
    pname = "mini.jump";
    version = "2023-05-30";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.jump";
      rev = "5d48b26f98ce77d4575c1eb181727fa37ed3fbc6";
      hash = "sha256-AsemBxQzxq+GCjkaBbw063X4yFuK6KepN0yZg85t1dM=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.jump";
  };

  mini-surround = vimUtils.buildVimPlugin {
    pname = "mini.surround";
    version = "2023-06-09";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "14f418209ecf52d1a8de9d091eb6bd63c31a4e01";
      hash = "sha256-YYlBcYaSEaZzQR0zd3lOyFFi2FCiyLs4yYg9hZ2TZWk=";
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
    version = "2023-06-09";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "neoconf.nvim";
      rev = "bf802bff605d439f0403d55d83e8f6bf7247fce8";
      hash = "sha256-LTHJYjhVv4X/Bi6psxJ3zPTjbPajxidM2Ta+1Kpi0JY=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/neoconf.nvim";
  };

  neodev-nvim = vimUtils.buildVimPlugin {
    pname = "neodev.nvim";
    version = "2023-06-10";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "d69254e1fbdc4a04c56719dde19e5eafb7b04b58";
      hash = "sha256-vtC3BgdDtY5aMUzyH+T/XxyZ6kugSZGLbD6QDv1yMlE=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/neodev.nvim";
  };

  neogit = vimUtils.buildVimPlugin {
    pname = "neogit";
    version = "2023-06-09";

    src = fetchFromGitHub {
      owner = "TimUntersberger";
      repo = "neogit";
      rev = "68a3e90e9d1ed9e362317817851d0f34b19e426b";
      hash = "sha256-Wid1gKch3aHO97qklic3feqz+tfcz+WhG400s6CQzhk=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/TimUntersberger/neogit";
  };

  noice-nvim = vimUtils.buildVimPlugin {
    pname = "noice.nvim";
    version = "2023-06-10";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "a070cb87a180fd7e2c4387accff0be90268fb736";
      hash = "sha256-eFEYvvr/k99N63lZLYCcKGNSgXqk8XYwesaJi/fQaCA=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/noice.nvim";
  };

  nui-nvim = vimUtils.buildVimPlugin {
    pname = "nui.nvim";
    version = "2023-06-10";

    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "f2841533540eb60d6878964a3cd3f8196e1f200c";
      hash = "sha256-LdbXLYd+caBTO89IqYVnwIqxCkOh9BvRkeyyN7TJgTw=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/MunifTanjim/nui.nvim";
  };

  null-ls-nvim = vimUtils.buildVimPlugin {
    pname = "null-ls.nvim";
    version = "2023-06-06";

    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "null-ls.nvim";
      rev = "a138b14099e9623832027ea12b4631ddd2a49256";
      hash = "sha256-N8TlKUq9fGzlYaGtOVDE1A40AVoE6vQlM9J1P2WA+sk=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/jose-elias-alvarez/null-ls.nvim";
  };

  nvim-autopairs = vimUtils.buildVimPlugin {
    pname = "nvim-autopairs";
    version = "2023-05-25";

    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "59df87a84c80a357ca8d8fe86e451b93ac476ccc";
      hash = "sha256-maSCppPEOFbkEfTYFKLq3M6Dg+fRjnqbCtsyWO9SILA=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/windwp/nvim-autopairs";
  };

  nvim-cmp = vimUtils.buildVimPlugin {
    pname = "nvim-cmp";
    version = "2023-06-10";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "69e7d280cbe17e318b549a10ae3cae5810946be6";
      hash = "sha256-AExTcuhNNEuJtFMZO/93mBhdWyjM5YSVW6usBY51LIU=";
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
    version = "2023-06-10";

    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "08f1f347c718e945c3b1712ebb68c6834182cf3a";
      hash = "sha256-TeGmo0axt1iUuPf2fkYAhIy6G5Kyr3R2Jtk8WJZfHU8=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/neovim/nvim-lspconfig";
  };

  nvim-navic = vimUtils.buildVimPlugin {
    pname = "nvim-navic";
    version = "2023-05-09";

    src = fetchFromGitHub {
      owner = "SmiteshP";
      repo = "nvim-navic";
      rev = "15704c607569d6c5cfeab486d3ef9459645a70ce";
      hash = "sha256-8B1T25edif1c1gUGWfysa/f4k9EoWP9rFPE1G8y/WXM=";
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
    version = "2023-06-10";

    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "034511714bacfadc5008e49f73fcef67e5613840";
      hash = "sha256-UWeNgs/i/xl4dbIZAR/vOSLdoEyVliEinVbajtli+f0=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-tree/nvim-tree.lua";
  };

  nvim-treesitter-endwise = vimUtils.buildVimPlugin {
    pname = "nvim-treesitter-endwise";
    version = "2023-04-30";

    src = fetchFromGitHub {
      owner = "RRethy";
      repo = "nvim-treesitter-endwise";
      rev = "944b0d85bb6817948eaaf78893cbb23c25641d8f";
      hash = "sha256-2JiLAaxnBLdv/eg3zKxsZXEiZQR1ZYKhGEhFu3BUBVo=";
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
    version = "2023-06-08";

    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter-textobjects";
      rev = "2d6d3c7e49a24f6ffbbf7898241fefe9784f61bd";
      hash = "sha256-96XC/UGCxQYTCjomBHpB3uJ8SCFScxrRKVQJ0icEndY=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects";
  };

  nvim-ts-autotag = vimUtils.buildVimPlugin {
    pname = "nvim-ts-autotag";
    version = "2023-04-27";

    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "40615e96075c743ef47aaf9de966dc348bec6459";
      hash = "sha256-zv3m7IvDbWOOESZL3+8DcNt9vNT9fSfz2X7EOD6rqHQ=";
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
    version = "2023-05-27";

    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "2a125024a137677930efcfdf720f205504c97268";
      hash = "sha256-bryHxQZQ75wQXHLqYVh5zSkgLijdPvVAZPDYnv+JTkI=";
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
    version = "2023-06-02";

    src = fetchFromGitHub {
      owner = "pwntester";
      repo = "octo.nvim";
      rev = "2d2769ff80a82a0da24dcf636ae146f3ed5d7ae5";
      hash = "sha256-aC/78YTub4FR0CTNfADO9ZPjOsSBmjpcmWTc1PJvQrY=";
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

  plenary-nvim = vimUtils.buildVimPlugin {
    pname = "plenary.nvim";
    version = "2023-05-31";

    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "499e0743cf5e8075cd32af68baa3946a1c76adf1";
      hash = "sha256-5qtGxspjtCnkuoaE2gDnti58U4r34O1bBvjvUdTgKmU=";
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
    version = "2023-05-09";

    src = fetchFromGitHub {
      owner = "tiagovla";
      repo = "scope.nvim";
      rev = "066bdcf97a8634560428241c9176b9e6ef038055";
      hash = "sha256-pbBQ1ZbQjhED5ZE4acJW1zn2ogVkZDJhYhi4Zo3s53o=";
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
    version = "2023-06-06";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-file-browser.nvim";
      rev = "fc70589a93d7bb42f4671ad75c8628a29995bcbe";
      hash = "sha256-aG6sRv/lY/0d+E2ouUQssekkIpVIXlZmxnXlkTXdTQE=";
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
    version = "2023-03-23";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-project.nvim";
      rev = "fa081e35ba7397e5147a51ece693aa3afda167fc";
      hash = "sha256-E8ZpI/B9B8nC7laq7lK1sGcd4I89YFIV6nBowfPE+C4=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-telescope/telescope-project.nvim";
  };

  telescope-symbols-nvim = vimUtils.buildVimPlugin {
    pname = "telescope-symbols.nvim";
    version = "2022-04-17";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-symbols.nvim";
      rev = "f7d7c84873c95c7bd5682783dd66f84170231704";
      hash = "sha256-Z7Bn3iF9Wom8cSdKNVDgQTirQ+W6OWuG30BVq0VLgPs=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-telescope/telescope-symbols.nvim";
  };

  telescope-tabs = vimUtils.buildVimPlugin {
    pname = "telescope-tabs";
    version = "2023-04-19";

    src = fetchFromGitHub {
      owner = "LukasPietzschmann";
      repo = "telescope-tabs";
      rev = "24c99f28599819955f8bd3bc5a24a212cea16c11";
      hash = "sha256-pG4Tgz0JEODLFgbuMUJ7T6D70h/JWCv/YTvbZvE4K+c=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/LukasPietzschmann/telescope-tabs";
  };

  telescope-nvim = vimUtils.buildVimPlugin {
    pname = "telescope.nvim";
    version = "2023-06-10";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "116dbea5800c908de4afa6e793f28f782621c65d";
      hash = "sha256-wHSR9G6qAu/Uyu9dpuCQRcF5bcI5fV7GvNbaiPINl+k=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-telescope/telescope.nvim";
  };

  todo-comments-nvim = vimUtils.buildVimPlugin {
    pname = "todo-comments.nvim";
    version = "2023-03-12";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "todo-comments.nvim";
      rev = "6ccb0bebeb22dbe31940776a750db54b844ae653";
      hash = "sha256-/IVjGvXy6GbP80s95YNFqrGa+idKzbMqzrxlUo/Pu7Y=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/todo-comments.nvim";
  };

  toggleterm-nvim = vimUtils.buildVimPlugin {
    pname = "toggleterm.nvim";
    version = "2022-06-12";

    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "toggleterm.nvim";
      rev = "aaeed9e02167c5e8f00f25156895a6fd95403af8";
      hash = "sha256-gAEU/QLrmvN95uvArhQ9MTicnlVc7oJO97ubN4MZLGQ=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/akinsho/toggleterm.nvim";
  };

  tokyonight-nvim = vimUtils.buildVimPlugin {
    pname = "tokyonight.nvim";
    version = "2023-03-14";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "tokyonight.nvim";
      rev = "467d889ba82a74e26821c812aa8e70d7dff04c6c";
      hash = "sha256-4H/g/QMvMm0Amje+Gkvltd1KVMZ1BmnvWwrDZaNnJTM=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/tokyonight.nvim";
  };

  trouble-nvim = vimUtils.buildVimPlugin {
    pname = "trouble.nvim";
    version = "2023-02-28";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "67337644e38144b444d026b0df2dc5fa0038930f";
      hash = "sha256-5ZclnMkYOOD9l1zu5VF/WBV9po356PdTC7iX3EBC2mw=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/trouble.nvim";
  };

  typescript-nvim = vimUtils.buildVimPlugin {
    pname = "typescript.nvim";
    version = "2023-01-03";

    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "typescript.nvim";
      rev = "f66d4472606cb24615dfb7dbc6557e779d177624";
      hash = "sha256-PHVY5NJbOGvY9p0F0QNSfMKmAWdqjw1RB0Vspq88qMI=";
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
    version = "2023-04-18";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "94cb020ff33a1e0e22fac1c41663d2c439741f17";
      hash = "sha256-K/4gyZ+YuQdV6DJqgV5HDL2kMgeD706k9y3QYkehCfc=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/which-key.nvim";
  };
}
