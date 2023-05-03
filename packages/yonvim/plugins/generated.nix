# This file has been auto-generated by plugins.py. Do not edit!
{ fetchFromGitHub, vimUtils }:

_self: {
  LuaSnip = vimUtils.buildVimPlugin {
    pname = "LuaSnip";
    version = "2023-01-27";

    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "94f192cf5f0a1931b3035c2d8affdebec460968c";
      hash = "sha256-S34ZFnKDEeMpL8bnUup3p0+pdZg0UcJMw729hy2S6kk=";
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
    version = "2023-01-28";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "aerial.nvim";
      rev = "911373eb6be91700a3597aeb228f553d4a29aec1";
      hash = "sha256-MOnuGGPIg/tddCuMcwGsRayBwCJC76hXrk4Sq7m5mdk=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/stevearc/aerial.nvim";
  };

  bufferline-nvim = vimUtils.buildVimPlugin {
    pname = "bufferline.nvim";
    version = "2022-12-24";

    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "c7492a76ce8218e3335f027af44930576b561013";
      hash = "sha256-q8nwZRN97Sfrr7lHtNYwGdbS63obMOAxFFs/gSvqbqM=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/akinsho/bufferline.nvim";
  };

  cmp-cmdline = vimUtils.buildVimPlugin {
    pname = "cmp-cmdline";
    version = "2023-02-16";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-cmdline";
      rev = "8fcc934a52af96120fe26358985c10c035984b53";
      hash = "sha256-Yz2N7bzpQE4Qt89CAO3LEvBkhtgJR4OPN+734IayEK4=";
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
    version = "2022-11-17";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-omni";
      rev = "8457e4144ea2fc5efbadb7d22250d5ee8f8862ba";
      hash = "sha256-WXW9DPogGNqdhF3tAlztdl+1ct6spWQbNztbIxZyGAc=";
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
    version = "2023-02-26";

    src = fetchFromGitHub {
      owner = "zbirenbaum";
      repo = "copilot-cmp";
      rev = "92535dfd9c430b49ca7d9a7da336c5db65826b65";
      hash = "sha256-Bu9Lx+1H1pG97ibwn8Q7jOHOKOrzg1nyucTTqbdlapI=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/zbirenbaum/copilot-cmp";
  };

  copilot-lua = vimUtils.buildVimPlugin {
    pname = "copilot.lua";
    version = "2023-02-27";

    src = fetchFromGitHub {
      owner = "zbirenbaum";
      repo = "copilot.lua";
      rev = "b41d4c9c7d4f5e0272bcf94061b88e244904c56f";
      hash = "sha256-n/SCrzzzL5WUHJk0sCXbgGusk/dQuy8DI9Pqdh+lVeQ=";
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
    version = "2023-04-21";

    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "f9ddbe798cb92854a383e2377482a49139a52c3d";
      hash = "sha256-tLXTgCXFKFq/ZQfnmIHHd3hw8pDBv6RUGWrtIApRQBU=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/sindrets/diffview.nvim";
  };

  dressing-nvim = vimUtils.buildVimPlugin {
    pname = "dressing.nvim";
    version = "2023-04-12";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "0e3e1eba147fee6e638ac1ac28f0495bcde17319";
      hash = "sha256-8HSxDkHxrjNCT9OpI3Fxt4bwLM49UmdH2TtQWGzyzXo=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/stevearc/dressing.nvim";
  };

  friendly-snippets = vimUtils.buildVimPlugin {
    pname = "friendly-snippets";
    version = "2022-07-06";

    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "24afb4c178d8ea28bfa73f37814ada43be478b1d";
      hash = "sha256-WfdJAwOZR96fEt4n2Vnxzp1SaQOo3rRbRBz8JLMl3SU=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/rafamadriz/friendly-snippets";
  };

  gitsigns-nvim = vimUtils.buildVimPlugin {
    pname = "gitsigns.nvim";
    version = "2023-04-21";

    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "7dfe4be94b4f84a9931098f0f0f618d055e50bd5";
      hash = "sha256-61Olwe9BuOPQncKgzsCMgIBi2rmIhSYl16yJZbaP8co=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lewis6991/gitsigns.nvim";
  };

  hop-nvim = vimUtils.buildVimPlugin {
    pname = "hop.nvim";
    version = "2022-10-30";

    src = fetchFromGitHub {
      owner = "phaazon";
      repo = "hop.nvim";
      rev = "90db1b2c61b820e230599a04fedcd2679e64bd07";
      hash = "sha256-UZZlo5n1x8UfM9OP7RHfT3sFRfMpLkBLbEdcSO+SU6E=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/phaazon/hop.nvim";
  };

  iron-nvim = vimUtils.buildVimPlugin {
    pname = "iron.nvim";
    version = "2022-12-29";

    src = fetchFromGitHub {
      owner = "hkupty";
      repo = "iron.nvim";
      rev = "f4131638454aeb96cbd92652dd8c396e48eb4118";
      hash = "sha256-6RE6+wfwPYuKBb+/bFbmj2A9L98g3WBGUkfrdkHDoT8=";
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
    version = "2023-01-21";

    src = fetchFromGitHub {
      owner = "lvimuser";
      repo = "lsp-inlayhints.nvim";
      rev = "84ca3abe8aaecbb5b30ad89e4701d4a9c821b72c";
      hash = "sha256-jjr9Tl2Ucg+zGJEnPMzExJBpsZt8nJ5qerbJpzTXoDs=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lvimuser/lsp-inlayhints.nvim";
  };

  lspkind-nvim = vimUtils.buildVimPlugin {
    pname = "lspkind.nvim";
    version = "2022-09-22";

    src = fetchFromGitHub {
      owner = "onsails";
      repo = "lspkind.nvim";
      rev = "c68b3a003483cf382428a43035079f78474cd11e";
      hash = "sha256-WwUQ+O2rIfD4yl0GFx70GsZc9nnhS7b2KWfNdaXCLmM=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/onsails/lspkind.nvim";
  };

  lualine-nvim = vimUtils.buildVimPlugin {
    pname = "lualine.nvim";
    version = "2023-04-09";

    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "84ffb80e452d95e2c46fa29a98ea11a240f7843e";
      hash = "sha256-u79S3wFJ72vcLp7F0f/s21Kvl/pMRI8CkB+8usPQob4=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-lualine/lualine.nvim";
  };

  mason-lspconfig-nvim = vimUtils.buildVimPlugin {
    pname = "mason-lspconfig.nvim";
    version = "2023-03-14";

    src = fetchFromGitHub {
      owner = "williamboman";
      repo = "mason-lspconfig.nvim";
      rev = "3924f2d264097b2caf13e713485dbc3e9d616574";
      hash = "sha256-LqAfY9RrBUogwjPO/j3JM+NRErLyJEf51ivRHi1KUV0=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/williamboman/mason-lspconfig.nvim";
  };

  mason-nvim = vimUtils.buildVimPlugin {
    pname = "mason.nvim";
    version = "2023-03-14";

    src = fetchFromGitHub {
      owner = "williamboman";
      repo = "mason.nvim";
      rev = "441c9ea2ab385c2e6407a637775b4b392533d265";
      hash = "sha256-OqlSMp13u5ZZY/XWrzeO0WAWLEOfTaN+bBZoz5AUATQ=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/williamboman/mason.nvim";
  };

  mini-bufremove = vimUtils.buildVimPlugin {
    pname = "mini.bufremove";
    version = "2023-03-10";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.bufremove";
      rev = "8d17f868e66ea3b143ab76f09f13f473d61450e2";
      hash = "sha256-hpUaQ7FY9xzO9Hzucxic1GgpCgwNwquR/98jbZKmqvY=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.bufremove";
  };

  mini-comment = vimUtils.buildVimPlugin {
    pname = "mini.comment";
    version = "2023-02-24";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.comment";
      rev = "5e8c7f75c48d958ef84ed75772b0263284c8621d";
      hash = "sha256-LePzlLNP28HsO5Hg7v5MUgrGlOr/0AktaSSg9PMqhq0=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.comment";
  };

  mini-indentscope = vimUtils.buildVimPlugin {
    pname = "mini.indentscope";
    version = "2023-03-13";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.indentscope";
      rev = "43f6761c9a3e397b7c12b3c72f678bcf61efcfcf";
      hash = "sha256-0+bNJUpgZSVk4sHK2WlZlqZ5GMNVAbx1g85NklVuvUg=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.indentscope";
  };

  mini-jump = vimUtils.buildVimPlugin {
    pname = "mini.jump";
    version = "2023-02-24";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.jump";
      rev = "534552990149fff923e672add3e89dc6aee813df";
      hash = "sha256-lpkXTeCyG+ZpK3AJFkDR9cZbcDrAYofyWllaJ2X/M1U=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.jump";
  };

  mini-surround = vimUtils.buildVimPlugin {
    pname = "mini.surround";
    version = "2023-03-10";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "ab995ab83cdbee9141166d82e278dbebff4491de";
      hash = "sha256-YVUNe6z6m9tXyzIVOl0Vu0RYts3dPjEP/ePd5K/sfUU=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.surround";
  };

  mini-trailspace = vimUtils.buildVimPlugin {
    pname = "mini.trailspace";
    version = "2023-02-24";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.trailspace";
      rev = "b6e60878b010eb9cca6a44a549f01936917711b2";
      hash = "sha256-eKkUe4Ncp+Tu6RLeB97avHyN00AvQAPGOE3YrQOVfK0=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.trailspace";
  };

  neoconf-nvim = vimUtils.buildVimPlugin {
    pname = "neoconf.nvim";
    version = "2023-01-28";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "neoconf.nvim";
      rev = "d65df617fd98d1224b342fc6a6ee3cfcc2b6c751";
      hash = "sha256-XTIxDguVLuk3HOcqG0h3KsJstaTBGGrPHkRffpm5QbE=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/neoconf.nvim";
  };

  neodev-nvim = vimUtils.buildVimPlugin {
    pname = "neodev.nvim";
    version = "2023-03-13";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "abdc346ff59c414698de551f876bcf3f223ed224";
      hash = "sha256-E0v7An4u8ng9LVWRLtXVs8aGkHQRi4nIvYW2poZXcG8=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/neodev.nvim";
  };

  neogit = vimUtils.buildVimPlugin {
    pname = "neogit";
    version = "2023-03-20";

    src = fetchFromGitHub {
      owner = "TimUntersberger";
      repo = "neogit";
      rev = "039ff3212ec43cc4d3332956dfb54e263c8d5033";
      hash = "sha256-7wrMpBvqb43wQ5K4mMThFc8LT+J/TTXPS2iltPGlRp0=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/TimUntersberger/neogit";
  };

  noice-nvim = vimUtils.buildVimPlugin {
    pname = "noice.nvim";
    version = "2023-03-26";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "1da4edfba3e9278e98fc9723d7235d9ab3889744";
      hash = "sha256-05/yAwaoz7mAAKXP1CsRXUoqsTW/z1wAT0OodiYJw6M=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/noice.nvim";
  };

  nui-nvim = vimUtils.buildVimPlugin {
    pname = "nui.nvim";
    version = "2023-01-16";

    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "b99e6cb13dc51768abc1c4c8585045a0c0459ef1";
      hash = "sha256-IbqBbWD1cO/HhU38+CvTpfvf5HD/BmtFpgofPZGJ/Dk=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/MunifTanjim/nui.nvim";
  };

  null-ls-nvim = vimUtils.buildVimPlugin {
    pname = "null-ls.nvim";
    version = "2023-04-23";

    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "null-ls.nvim";
      rev = "920947793ce6e59616644cb4766d442121508bf3";
      hash = "sha256-V07V5uMhfMi2LlilTdTdd+cx2BWZUa5r9Pj1APCp3Fc=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/jose-elias-alvarez/null-ls.nvim";
  };

  nvim-autopairs = vimUtils.buildVimPlugin {
    pname = "nvim-autopairs";
    version = "2023-04-09";

    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "7470af886ffb3df32800e5ef9c072a6cd825770d";
      hash = "sha256-Z9m+6qhxdUNe5zQga2q+GXjWmJQBgCL8PN2LPCP9t4I=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/windwp/nvim-autopairs";
  };

  nvim-cmp = vimUtils.buildVimPlugin {
    pname = "nvim-cmp";
    version = "2023-03-05";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "feed47fd1da7a1bad2c7dca456ea19c8a5a9823a";
      hash = "sha256-rAFEmCXbPoHo1nZ6YHGdKcbGCpKXgQeZ0aa7InmZo2c=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/nvim-cmp";
  };

  nvim-colorizer-lua = vimUtils.buildVimPlugin {
    pname = "nvim-colorizer.lua";
    version = "2022-10-06";

    src = fetchFromGitHub {
      owner = "NvChad";
      repo = "nvim-colorizer.lua";
      rev = "760e27df4dd966607e8fb7fd8b6b93e3c7d2e193";
      hash = "sha256-toNEfgZn2RNwyjI5FOyRU9Bdu6jFDZbSb1SjiY9sHH8=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/NvChad/nvim-colorizer.lua";
  };

  nvim-lspconfig = vimUtils.buildVimPlugin {
    pname = "nvim-lspconfig";
    version = "2023-03-10";

    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "4bb0f1845c5cc6465aecedc773fc2d619fcd8faf";
      hash = "sha256-2A/4IeUbZ7GdiSU1pMQfvbMGV9cjNFlSgJaHARwnAdw=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/neovim/nvim-lspconfig";
  };

  nvim-navic = vimUtils.buildVimPlugin {
    pname = "nvim-navic";
    version = "2023-04-02";

    src = fetchFromGitHub {
      owner = "SmiteshP";
      repo = "nvim-navic";
      rev = "27124a773d362628b114cd12016e743dab4ccf3e";
      hash = "sha256-1hUnU6CayNerK7olqhSkAQSW0zE6JIhsmZIBw2fyYnc=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/SmiteshP/nvim-navic";
  };

  nvim-notify = vimUtils.buildVimPlugin {
    pname = "nvim-notify";
    version = "2023-01-18";

    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-notify";
      rev = "bdd647f61a05c9b8a57c83b78341a0690e9c29d7";
      hash = "sha256-zPSlenKjuZ8Xygu/KuU9+bSf5uUjSDK9HOTWnpUk1jo=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/rcarriga/nvim-notify";
  };

  nvim-tree-lua = vimUtils.buildVimPlugin {
    pname = "nvim-tree.lua";
    version = "2023-04-22";

    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "517dee64c150821efdc1d5adcd4285fdf9c30371";
      hash = "sha256-rk01rriNw2+oGSZG0nUWNh8Jr7VBlmV8rMUSa9XOX9Y=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-tree/nvim-tree.lua";
  };

  nvim-treesitter-endwise = vimUtils.buildVimPlugin {
    pname = "nvim-treesitter-endwise";
    version = "2022-09-26";

    src = fetchFromGitHub {
      owner = "RRethy";
      repo = "nvim-treesitter-endwise";
      rev = "0cf4601c330cf724769a2394df555a57d5fd3f34";
      hash = "sha256-Pns+3gLlwhrojKQWN+zOFxOmgRkG3vTPGoLX90Sg+oo=";
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
    version = "2023-04-10";

    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter-textobjects";
      rev = "8673926519ea61069f9c1366d1ad1949316d250e";
      hash = "sha256-9NPfwzHPKrVAgb5aFGTFv8fVAoDEAYV4b8K0KYM7/WE=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects";
  };

  nvim-ts-autotag = vimUtils.buildVimPlugin {
    pname = "nvim-ts-autotag";
    version = "2023-04-13";

    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "cac97f3b47bcb927db6d1d784c0c323056506ef3";
      hash = "sha256-qi1PF75HeaAkHAvsinyXtfvggE12agUNnx7mrSsBiDo=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/windwp/nvim-ts-autotag";
  };

  nvim-ts-context-commentstring = vimUtils.buildVimPlugin {
    pname = "nvim-ts-context-commentstring";
    version = "2023-01-16";

    src = fetchFromGitHub {
      owner = "JoosepAlviste";
      repo = "nvim-ts-context-commentstring";
      rev = "a0f89563ba36b3bacd62cf967b46beb4c2c29e52";
      hash = "sha256-HHsja6sz5+k4slmK697cRZZmkeCAt7Cjr0REYn15IX0=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring";
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
    version = "2023-03-14";

    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "f1b1cee3a561590a6c1637a9326c406f6e4af914";
      hash = "sha256-7GiM/A6Tf9zxqAbv/o+3a+8mw2M6SOtyLfkzmwu88ro=";
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
    version = "2023-01-27";

    src = fetchFromGitHub {
      owner = "pwntester";
      repo = "octo.nvim";
      rev = "7900dc0cd37e7bb5d4175a37c9c4c3dfb94a1f7b";
      hash = "sha256-9ox+KS1YZ5hY172wy9g+afSlxZnXRBj+SbCw+ZToJ4U=";
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
    version = "2023-01-10";

    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "1c7e3e6b0f4dd5a174fcea9fda8a4d7de593b826";
      hash = "sha256-UWrp5ZoDRhOXSMsHZxrZHPfqBtgnKWf9SA8ChIVKF4o=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-lua/plenary.nvim";
  };

  project-nvim = vimUtils.buildVimPlugin {
    pname = "project.nvim";
    version = "2022-10-29";

    src = fetchFromGitHub {
      owner = "ahmedkhalf";
      repo = "project.nvim";
      rev = "685bc8e3890d2feb07ccf919522c97f7d33b94e4";
      hash = "sha256-fW4ztvYpeXTC0DbkZS4usG/KENiMJG/sWVTD4e8k42g=";
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
    version = "2022-06-27";

    src = fetchFromGitHub {
      owner = "tiagovla";
      repo = "scope.nvim";
      rev = "2db6d31de8e3a98d2b41c0f0d1f5dc299ee76875";
      hash = "sha256-BdX+C5KBHZcFgDG2fXvhMl2Gp/6ffJWEBvA/JvVWh4I=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/tiagovla/scope.nvim";
  };

  stickybuf-nvim = vimUtils.buildVimPlugin {
    pname = "stickybuf.nvim";
    version = "2023-03-06";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "stickybuf.nvim";
      rev = "776177b105ea1fda52959450b8b8a04d070c283b";
      hash = "sha256-xmiLpNlU/aeI6sBJNHh6TJ4bK7HZ4NpiG+KWm3l3rDo=";
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
    version = "2022-12-31";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-file-browser.nvim";
      rev = "304508fb7bea78e3c0eeddd88c4837501e403ae8";
      hash = "sha256-FVyvqY2dQlzz0mGPkrPrBKRzj3Dv6Hw8RuQYcLkL3kM=";
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
    version = "2022-12-21";

    src = fetchFromGitHub {
      owner = "benfowler";
      repo = "telescope-luasnip.nvim";
      rev = "1f0057d04985ddcc698b2b29d6eb198a7876e651";
      hash = "sha256-VF4LKDbcfPwgRwMb8l7QrJJLnVusFS7LuzMv797/QI0=";
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
    version = "2023-04-10";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "6258d50b09f9ae087317e392efe7c05a7323492d";
      hash = "sha256-UMidzUf2nhG577Minzm3QYu0ZNPoK/rXEyUdvZ/5nFw=";
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
