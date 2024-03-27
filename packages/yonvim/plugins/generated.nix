# This file has been auto-generated by plugins.py. Do not edit!
{ fetchFromGitHub, vimUtils }:

_self: {
  LuaSnip = vimUtils.buildVimPlugin {
    pname = "LuaSnip";
    version = "2024-03-01";

    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "a7a4b4682c4b3e2ba82b82a4e6e5f5a0e79dec32";
      hash = "sha256-oyMykjBLkk/9S5AutnPKL+DKgfW59TS+kGUE2GsVbHk=";
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

  actions-preview-nvim = vimUtils.buildVimPlugin {
    pname = "actions-preview.nvim";
    version = "2024-03-09";

    src = fetchFromGitHub {
      owner = "aznhe21";
      repo = "actions-preview.nvim";
      rev = "5072b1b1065a6b22bdd46b5c21780a91d6a08071";
      hash = "sha256-PIzXWOqmTeesPZg82iLkvLpJtOoDDljvwJq8wdvRtqQ=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/aznhe21/actions-preview.nvim";
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
    version = "2024-02-25";

    src = fetchFromGitHub {
      owner = "goolord";
      repo = "alpha-nvim";
      rev = "41283fb402713fc8b327e60907f74e46166f4cfd";
      hash = "sha256-kTVPKZ/e1us/uHfSwFwR38lFYN8EotJq2jKz6xm/eqg=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/goolord/alpha-nvim";
  };

  bufferline-nvim = vimUtils.buildVimPlugin {
    pname = "bufferline.nvim";
    version = "2024-03-07";

    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "64e2c5def50dfd6b6f14d96a45fa3d815a4a1eef";
      hash = "sha256-drvgwupiyRAoShL2enXEYUumkYJnG+QtIkBIVqVZK+U=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/akinsho/bufferline.nvim";
  };

  cmp-cmdline = vimUtils.buildVimPlugin {
    pname = "cmp-cmdline";
    version = "2024-03-22";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-cmdline";
      rev = "d250c63aa13ead745e3a40f61fdd3470efde3923";
      hash = "sha256-iBmXp+gUSMbgfkv7c7RDQAwPq02e07wEnBETP0dWBOo=";
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
    version = "2023-10-09";

    src = fetchFromGitHub {
      owner = "saadparwaiz1";
      repo = "cmp_luasnip";
      rev = "05a9ab28b53f71d1aece421ef32fee2cb857a843";
      hash = "sha256-nUJJl2zyK/oSwz5RzI9j3gf9zpDfCImCYbPbVsyXgz8=";
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
    version = "2024-02-28";

    src = fetchFromGitHub {
      owner = "zbirenbaum";
      repo = "copilot.lua";
      rev = "f7612f5af4a7d7615babf43ab1e67a2d790c13a6";
      hash = "sha256-JX3sdsnOnjkY7r9fCtC2oauo0PXF3SQ+SHUo8ifBvAc=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/zbirenbaum/copilot.lua";
  };

  diffview-nvim = vimUtils.buildVimPlugin {
    pname = "diffview.nvim";
    version = "2023-11-20";

    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "3dc498c9777fe79156f3d32dddd483b8b3dbd95f";
      hash = "sha256-3EdnBUka9Rh5Brl6TWpN6GlD9z32mmY3Ip+wyiKob/8=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/sindrets/diffview.nvim";
  };

  dressing-nvim = vimUtils.buildVimPlugin {
    pname = "dressing.nvim";
    version = "2024-03-13";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "18e5beb3845f085b6a33c24112b37988f3f93c06";
      hash = "sha256-9AwOFTRvhWFo7USgoFYfceiojZM62IXPpBs8CnSqc18=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/stevearc/dressing.nvim";
  };

  edgy-nvim = vimUtils.buildVimPlugin {
    pname = "edgy.nvim";
    version = "2024-03-26";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "edgy.nvim";
      rev = "de79b7d92a5979cd71a9a1d8b6282515345e5055";
      hash = "sha256-OgvrHDU+PcRsf3NtIglYFYIvnd8pAT481+w2bllZtXw=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/edgy.nvim";
  };

  flash-nvim = vimUtils.buildVimPlugin {
    pname = "flash.nvim";
    version = "2023-10-17";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "flash.nvim";
      rev = "48817af25f51c0590653bbc290866e4890fe1cbe";
      hash = "sha256-j917u46PaOG6RmsKKoUQHuBMfXfGDD/uOBzDGhKlwTE=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/flash.nvim";
  };

  friendly-snippets = vimUtils.buildVimPlugin {
    pname = "friendly-snippets";
    version = "2024-02-25";

    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "dcd4a586439a1c81357d5b9d26319ae218cc9479";
      hash = "sha256-EY/XCZFuVdHdF0lrQuHm4h7gkv/JyzXldxc+OFAzYoA=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/rafamadriz/friendly-snippets";
  };

  gitsigns-nvim = vimUtils.buildVimPlugin {
    pname = "gitsigns.nvim";
    version = "2024-03-17";

    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "078041e9d060a386b0c9d3a8c7a7b019a35d3fb0";
      hash = "sha256-Hde3mGfqPYd8U5JExTei+TBHo2DHl+i07+1yEHQj6sw=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lewis6991/gitsigns.nvim";
  };

  indent-blankline-nvim = vimUtils.buildVimPlugin {
    pname = "indent-blankline.nvim";
    version = "2024-03-12";

    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "3d08501caef2329aba5121b753e903904088f7e6";
      hash = "sha256-Xp8ZQBz0in2MX3l0bnLUsSbH0lDPE+QvdmFpBFry5yY=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lukas-reineke/indent-blankline.nvim";
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
    version = "2024-03-27";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "e888d5b64c34bc41f7ef2e8850a5e67e4b3e2731";
      hash = "sha256-OW7Smrf2X4MOJrbDa2Ipx8z7R41NVcZwxXUm3JdYHf4=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/lazy.nvim";
  };

  lsp-format-nvim = vimUtils.buildVimPlugin {
    pname = "lsp-format.nvim";
    version = "2024-01-24";

    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "lsp-format.nvim";
      rev = "5e18095a637ec969b86c72266872219ad2f4586e";
      hash = "sha256-1AlTyZ5ZeEKyzOf9R2vo/uGz1+3Z1Bsr/85Tg9QVmlI=";
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
    version = "2024-01-11";

    src = fetchFromGitHub {
      owner = "onsails";
      repo = "lspkind.nvim";
      rev = "1735dd5a5054c1fb7feaf8e8658dbab925f4f0cf";
      hash = "sha256-/QLdBU/Zwmkw1NGuLBD48tvrmIP9d9WHhgcLEQgRTWo=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/onsails/lspkind.nvim";
  };

  lualine-nvim = vimUtils.buildVimPlugin {
    pname = "lualine.nvim";
    version = "2024-01-25";

    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "7d131a8d3ba5016229e8a1d08bf8782acea98852";
      hash = "sha256-LMMcRY4qnGywdK6Bl4YeAEKLhnRuOZ2txn4oYoso2gI=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-lualine/lualine.nvim";
  };

  mini-bufremove = vimUtils.buildVimPlugin {
    pname = "mini.bufremove";
    version = "2023-10-22";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.bufremove";
      rev = "f53c7f27e36009fe61563c11cde154b94a0e5b94";
      hash = "sha256-yOl+4mOZEqULOn5Nvd3obZ4a+ZCfyoDRz3tvtQVZvdc=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.bufremove";
  };

  mini-comment = vimUtils.buildVimPlugin {
    pname = "mini.comment";
    version = "2024-02-15";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.comment";
      rev = "a4b7e46deb9ad2feb8902cc5dbf087eced112ee5";
      hash = "sha256-1DT+6WtH/naZz+FsS6D8+arNokdZZ0pGZTmBZbA67y4=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.comment";
  };

  mini-surround = vimUtils.buildVimPlugin {
    pname = "mini.surround";
    version = "2024-01-29";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "5ceb6a12d3761bc719fbdad5432c89333deb1498";
      hash = "sha256-WRZyGvj4/bw0cYxztk8qoZ4U+s6z1BlH76AoXo7S/h8=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.surround";
  };

  mini-trailspace = vimUtils.buildVimPlugin {
    pname = "mini.trailspace";
    version = "2023-12-17";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.trailspace";
      rev = "60d0eca6703b55285e33b0da00105cde50d188df";
      hash = "sha256-zIijmUzHUwpRfmLYeC0eVQRo0mr6SezpmaVMh1tM3Wg=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.trailspace";
  };

  neo-tree-nvim = vimUtils.buildVimPlugin {
    pname = "neo-tree.nvim";
    version = "2024-03-21";

    src = fetchFromGitHub {
      owner = "nvim-neo-tree";
      repo = "neo-tree.nvim";
      rev = "16d1b194376bf1fc2acd89ccb3c29ba8315bfcea";
      hash = "sha256-dRCInB1LtnEDE5F1ribNxdEYBXJM438O+Aqlmdxfr0Y=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-neo-tree/neo-tree.nvim";
  };

  neoconf-nvim = vimUtils.buildVimPlugin {
    pname = "neoconf.nvim";
    version = "2024-02-01";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "neoconf.nvim";
      rev = "a0e63d84433ab03947cb3da82744220e39e05338";
      hash = "sha256-q0TOwiGQu/Xl7rIDERbI4PJ5j88ErH77PNyOVOey6jM=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/neoconf.nvim";
  };

  neodev-nvim = vimUtils.buildVimPlugin {
    pname = "neodev.nvim";
    version = "2024-03-22";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "6a533ed9d3435dcaa456380d833ea04da37ea2ed";
      hash = "sha256-rQ36aBEvLCq33qnek9oYFKMCoog5Ap51rI9xb+Rj7xw=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/neodev.nvim";
  };

  neogit = vimUtils.buildVimPlugin {
    pname = "neogit";
    version = "2024-03-23";

    src = fetchFromGitHub {
      owner = "NeogitOrg";
      repo = "neogit";
      rev = "20ab5a688c2de6fa371865528c737ae901989aa5";
      hash = "sha256-XWVHJcUGVKpMt/So5oB3qXTb19if2Iwgyp2ycbxkjEU=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/NeogitOrg/neogit";
  };

  noice-nvim = vimUtils.buildVimPlugin {
    pname = "noice.nvim";
    version = "2024-01-22";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "bf67d70bd7265d075191e7812d8eb42b9791f737";
      hash = "sha256-lNCdwB0B5arbTEIHdDoQ19/vQ0UT89AQFwZM+RHqOTg=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/noice.nvim";
  };

  none-ls-nvim = vimUtils.buildVimPlugin {
    pname = "none-ls.nvim";
    version = "2024-03-21";

    src = fetchFromGitHub {
      owner = "nvimtools";
      repo = "none-ls.nvim";
      rev = "18910d09d21d7df339805343bfe4a2b2e41c057b";
      hash = "sha256-FjDb53SNILxP9N9l5cJVBocj1ro/9eE8VKgR0Mv5+gs=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvimtools/none-ls.nvim";
  };

  nui-nvim = vimUtils.buildVimPlugin {
    pname = "nui.nvim";
    version = "2024-01-04";

    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "35da9ca1de0fc4dda96c2e214d93d363c145f418";
      hash = "sha256-SWG0IQDNXrgWK1ApQSpc2oPKNYgTPend877DQ6FuqUc=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/MunifTanjim/nui.nvim";
  };

  nvim-autopairs = vimUtils.buildVimPlugin {
    pname = "nvim-autopairs";
    version = "2024-03-20";

    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "dbfc1c34bed415906395db8303c71039b3a3ffb4";
      hash = "sha256-H4mJ43Eyo36noIqYZ0lyqM7WPwgIKqi96OjW5F3pfvU=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/windwp/nvim-autopairs";
  };

  nvim-cmp = vimUtils.buildVimPlugin {
    pname = "nvim-cmp";
    version = "2024-03-24";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "97dc716fc914c46577a4f254035ebef1aa72558a";
      hash = "sha256-VFtf1mI1ucClWzsWn+rf+TlC3ZgkYPiHrPTQZci9zrQ=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/nvim-cmp";
  };

  nvim-colorizer-lua = vimUtils.buildVimPlugin {
    pname = "nvim-colorizer.lua";
    version = "2023-11-02";

    src = fetchFromGitHub {
      owner = "NvChad";
      repo = "nvim-colorizer.lua";
      rev = "85855b38011114929f4058efc97af1059ab3e41d";
      hash = "sha256-oKvFN2K+ASlPNwj2rhptR/ErYgo6XKBPhXSZotDdCP0=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/NvChad/nvim-colorizer.lua";
  };

  nvim-lightbulb = vimUtils.buildVimPlugin {
    pname = "nvim-lightbulb";
    version = "2023-07-20";

    src = fetchFromGitHub {
      owner = "kosayoda";
      repo = "nvim-lightbulb";
      rev = "8f00b89dd1b1dbde16872bee5fbcee2e58c9b8e9";
      hash = "sha256-Meoop66jINllnxN6aohuPmU7DEjn64FMq/b8zuy9FEQ=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/kosayoda/nvim-lightbulb";
  };

  nvim-lspconfig = vimUtils.buildVimPlugin {
    pname = "nvim-lspconfig";
    version = "2024-03-24";

    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "6e5c78ebc9936ca74add66bda22c566f951b6ee5";
      hash = "sha256-kLL+kw0TaMA4uWC5Rng+v1Enm4N+Te8he/eU/ijQSvA=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/neovim/nvim-lspconfig";
  };

  nvim-navic = vimUtils.buildVimPlugin {
    pname = "nvim-navic";
    version = "2023-11-30";

    src = fetchFromGitHub {
      owner = "SmiteshP";
      repo = "nvim-navic";
      rev = "8649f694d3e76ee10c19255dece6411c29206a54";
      hash = "sha256-0p5n/V8Jlj9XyxV/fuMwsbQ7oV5m9H2GqZZEA/njxCQ=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/SmiteshP/nvim-navic";
  };

  nvim-notify = vimUtils.buildVimPlugin {
    pname = "nvim-notify";
    version = "2024-01-15";

    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-notify";
      rev = "80b67b265530632505193553d05127ae7fe09ddd";
      hash = "sha256-WhC80NnWXEAYHLORpUPIXb2s1ERJxyK3l2L9oke68mo=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/rcarriga/nvim-notify";
  };

  nvim-treesitter-endwise = vimUtils.buildVimPlugin {
    pname = "nvim-treesitter-endwise";
    version = "2024-02-15";

    src = fetchFromGitHub {
      owner = "RRethy";
      repo = "nvim-treesitter-endwise";
      rev = "60e8c288e011403f248b5f6478dde12bed8a6c55";
      hash = "sha256-mwwjjxZw80YKCoQAzlVdWYdeSXX88uuPBqjyMGUQnjY=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/RRethy/nvim-treesitter-endwise";
  };

  nvim-treesitter-pairs = vimUtils.buildVimPlugin {
    pname = "nvim-treesitter-pairs";
    version = "2023-06-10";

    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-treesitter-pairs";
      rev = "f8c195d4d8464cba6971bf8de2d6a5c8c109b37a";
      hash = "sha256-VHq7ohBDThkBwqUIEVBb4RujBkftu96DQe/y6l7egzM=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/theHamsta/nvim-treesitter-pairs";
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
    version = "2024-03-12";

    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter-textobjects";
      rev = "d2a4ffc22d9d38d44edb73da007b3cf43451e9b4";
      hash = "sha256-p0Kvlq31V1k35ZJsnOH97ZrW7j49O+4pmvktN09nLpU=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects";
  };

  nvim-ts-autotag = vimUtils.buildVimPlugin {
    pname = "nvim-ts-autotag";
    version = "2024-02-07";

    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "531f48334c422222aebc888fd36e7d109cb354cd";
      hash = "sha256-cPIEIjcYxX3ZkOyou2mYlHMdhBxCoVTpJVXZtiWe9Ks=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/windwp/nvim-ts-autotag";
  };

  nvim-web-devicons = vimUtils.buildVimPlugin {
    pname = "nvim-web-devicons";
    version = "2024-01-29";

    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "aaec87dbdaa776bfa0a13c8694bec9bcb7454719";
      hash = "sha256-bIAZWkgvD8G/GWDcI3CoufatmFm4x27WjE0MIAmL1JE=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-tree/nvim-web-devicons";
  };

  nvim-window-picker = vimUtils.buildVimPlugin {
    pname = "nvim-window-picker";
    version = "2023-12-17";

    src = fetchFromGitHub {
      owner = "s1n7ax";
      repo = "nvim-window-picker";
      rev = "41cfaa428577c53552200a404ae9b3a0b5719706";
      hash = "sha256-D5ikm5Fw0N/AjDL71cuATp1OCONuxPZNfEHuh0vXkq0=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/s1n7ax/nvim-window-picker";
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
    version = "2024-03-21";

    src = fetchFromGitHub {
      owner = "pwntester";
      repo = "octo.nvim";
      rev = "27d6fd6ad2f2f59330724d6ea5c751f0c3ec96e6";
      hash = "sha256-LzH7Zy03OGZV19RXWDVWz68lzO9oXmnVQmmJVIKW83c=";
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
    version = "2024-03-24";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "overseer.nvim";
      rev = "b04b0b105c07b4f02b3073ea3a98d6eca90bf152";
      hash = "sha256-/j5V6HrnH4eeWjubJNPZrEtTnhzlbET0Bix3GKyALMk=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/stevearc/overseer.nvim";
  };

  plenary-nvim = vimUtils.buildVimPlugin {
    pname = "plenary.nvim";
    version = "2024-01-29";

    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "4f71c0c4a196ceb656c824a70792f3df3ce6bb6d";
      hash = "sha256-AWJHxehKUkEV6N+n78urqHjMVUsMfDK3lvHs/VxhKE8=";
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

  rainbow-delimiters-nvim = vimUtils.buildVimPlugin {
    pname = "rainbow-delimiters.nvim";
    version = "2024-01-31";

    src = fetchFromGitHub {
      owner = "HiPhish";
      repo = "rainbow-delimiters.nvim";
      rev = "ca8d5ee2b4ee1eec491040a7601d366ddc8a2e02";
      hash = "sha256-FtgYC4yLPJC4LoRFREzVbo1xFCiGghp1cf3krYnymMs=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/HiPhish/rainbow-delimiters.nvim";
  };

  rustaceanvim = vimUtils.buildVimPlugin {
    pname = "rustaceanvim";
    version = "2024-03-27";

    src = fetchFromGitHub {
      owner = "mrcjkb";
      repo = "rustaceanvim";
      rev = "c2cdbeca8674e1b1b66ba870ff502bdad55a6d8a";
      hash = "sha256-yOjlsbTTB7CxEO+kWhVb4JQD8LPEkJHUDSkYN52h4Is=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/mrcjkb/rustaceanvim";
  };

  scope-nvim = vimUtils.buildVimPlugin {
    pname = "scope.nvim";
    version = "2023-10-29";

    src = fetchFromGitHub {
      owner = "tiagovla";
      repo = "scope.nvim";
      rev = "cd27af77ad61a7199af5c28d27013fb956eb0e3e";
      hash = "sha256-z1ytdhxKrLnZG8qMPEe2h+wC9tF4K/x6zplwnIojZuE=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/tiagovla/scope.nvim";
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

  telescope-cmdline-nvim = vimUtils.buildVimPlugin {
    pname = "telescope-cmdline.nvim";
    version = "2024-02-14";

    src = fetchFromGitHub {
      owner = "jonarrien";
      repo = "telescope-cmdline.nvim";
      rev = "d4c3bf279b6b2d80aae5dc145dc28b0de4b6ff7c";
      hash = "sha256-ciLHd+9SbpnI/l/vUgq4QZSUUNCRIkAq+UG5OEGYLv4=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/jonarrien/telescope-cmdline.nvim";
  };

  telescope-file-browser-nvim = vimUtils.buildVimPlugin {
    pname = "telescope-file-browser.nvim";
    version = "2024-03-24";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-file-browser.nvim";
      rev = "5ee5002373655fd684a4ad0d47a3de876ceacf9a";
      hash = "sha256-zTHOEn+dR5g+2Z8lFnHkD2xrYwZt94GCGMT0Vz0KIqs=";
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
    version = "2023-12-01";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-project.nvim";
      rev = "1aaf16580a614601a7f7077d9639aeb457dc5559";
      hash = "sha256-touMCltcnqkrQYV1NtNeWLQeFVGt+WM3aIWIdKilA7w=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-telescope/telescope-project.nvim";
  };

  telescope-symbols-nvim = vimUtils.buildVimPlugin {
    pname = "telescope-symbols.nvim";
    version = "2023-11-24";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-symbols.nvim";
      rev = "a6d0127a53d39b9fc2af75bd169d288166118aec";
      hash = "sha256-zYON9z3ELwjfqZ11LD6E7M+bymuBHxrSjYXhsCPEwR8=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-telescope/telescope-symbols.nvim";
  };

  telescope-tabs = vimUtils.buildVimPlugin {
    pname = "telescope-tabs";
    version = "2024-01-16";

    src = fetchFromGitHub {
      owner = "LukasPietzschmann";
      repo = "telescope-tabs";
      rev = "c3572358e60817f40f0de31bc01906af0993d4c4";
      hash = "sha256-4mVDF/GOeQod89jeSkmbKoQpGzyL8dYaiwnZK3M4sFU=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/LukasPietzschmann/telescope-tabs";
  };

  telescope-nvim = vimUtils.buildVimPlugin {
    pname = "telescope.nvim";
    version = "2024-03-24";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "c2b8311dfacd08b3056b8f0249025d633a4e71a8";
      hash = "sha256-4vrxyTSPxCIaHyCpixaMF7ULN8t3EDDmI7w1UjJu+/A=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-telescope/telescope.nvim";
  };

  todo-comments-nvim = vimUtils.buildVimPlugin {
    pname = "todo-comments.nvim";
    version = "2024-01-21";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "todo-comments.nvim";
      rev = "833d8dd8b07eeda37a09e99460f72a02616935cb";
      hash = "sha256-DiyieXXx7iYGWkpeOvduJf0n7dnpaQ7rXmaWvZQaCyE=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/todo-comments.nvim";
  };

  toggleterm-nvim = vimUtils.buildVimPlugin {
    pname = "toggleterm.nvim";
    version = "2024-02-12";

    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "toggleterm.nvim";
      rev = "193786e0371e3286d3bc9aa0079da1cd41beaa62";
      hash = "sha256-FJyDxQm2vs9R4WkqAbh6ryCvEABfrLSKRrAGo/qI5jM=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/akinsho/toggleterm.nvim";
  };

  tokyonight-nvim = vimUtils.buildVimPlugin {
    pname = "tokyonight.nvim";
    version = "2024-03-26";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "tokyonight.nvim";
      rev = "f4b415bfbce390866a83277db42cf6aa94230728";
      hash = "sha256-Sno3QEUx8F0pSNte9Xd7inc59Bn0y2Kee4kKCIVLnw0=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/tokyonight.nvim";
  };

  trouble-nvim = vimUtils.buildVimPlugin {
    pname = "trouble.nvim";
    version = "2023-10-18";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "f1168feada93c0154ede4d1fe9183bf69bac54ea";
      hash = "sha256-8nLghiueYOtWY7OGVxow9A2G/5lgt+Kt5D8q1xeJvVg=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/trouble.nvim";
  };

  typescript-tools-nvim = vimUtils.buildVimPlugin {
    pname = "typescript-tools.nvim";
    version = "2024-01-16";

    src = fetchFromGitHub {
      owner = "pmizio";
      repo = "typescript-tools.nvim";
      rev = "c43d9580c3ff5999a1eabca849f807ab33787ea7";
      hash = "sha256-kpdDYVd6uSuJImS9LU5p/vJgtj9tToNBvRTJHpsHyak=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/pmizio/typescript-tools.nvim";
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
    version = "2024-02-22";

    src = fetchFromGitHub {
      owner = "mg979";
      repo = "vim-visual-multi";
      rev = "fe1ec7e430013b83c8c2dee85ae496251b71e253";
      hash = "sha256-lN492j4LgBbqNUMLOqkU2aRG2JhOpLrAEeLWFzDOcVc=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/mg979/vim-visual-multi";
  };

  virt-column-nvim = vimUtils.buildVimPlugin {
    pname = "virt-column.nvim";
    version = "2023-11-13";

    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "virt-column.nvim";
      rev = "b62b4ef0774d19452d4ed18e473e824c7a756f2f";
      hash = "sha256-7ljjJ7UwN2U1xPCtsYbrKdnz6SGQGbM/HrxPTxNKlwo=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lukas-reineke/virt-column.nvim";
  };

  which-key-nvim = vimUtils.buildVimPlugin {
    pname = "which-key.nvim";
    version = "2023-10-20";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "4433e5ec9a507e5097571ed55c02ea9658fb268a";
      hash = "sha256-uvghPj/teWrRMm09Gh8iQ/LV2nYJw0lmoiZK6L4+1cY=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/which-key.nvim";
  };

  yanky-nvim = vimUtils.buildVimPlugin {
    pname = "yanky.nvim";
    version = "2024-02-02";

    src = fetchFromGitHub {
      owner = "gbprod";
      repo = "yanky.nvim";
      rev = "7c5cbf0122ff2dfbb6a92f14885894f65949cc8b";
      hash = "sha256-6OQegaggOD70B7OZnYwzMvusO2K+/kphQiiOCd+W/Zw=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/gbprod/yanky.nvim";
  };

  zen-mode-nvim = vimUtils.buildVimPlugin {
    pname = "zen-mode.nvim";
    version = "2023-10-20";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "zen-mode.nvim";
      rev = "50e2e2a36cc97847d9ab3b1a3555ba2ef6839b50";
      hash = "sha256-+tRLfktRFecEozRa5iBc+LNrB1GuztGATM9HWdkJrPY=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/zen-mode.nvim";
  };
}
