# This file has been auto-generated by plugins.py. Do not edit!
{ fetchFromGitHub, vimUtils }:

_self: {
  LuaSnip = vimUtils.buildVimPlugin {
    pname = "LuaSnip";
    version = "2023-12-17";

    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "57c9f5c31b3d712376c704673eac8e948c82e9c1";
      hash = "sha256-ly8DJ0Q8sIva3NEvycqI6A92CjoEeHOsCQ/NG+BTQR4=";
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
    version = "2023-12-13";

    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "e48ce1805697e4bb97bc171c081e849a65859244";
      hash = "sha256-xguFDEZVEVbIjdd0XnvRBjgB20Ym2ci1F+zw5jcVThk=";
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
    version = "2023-12-22";

    src = fetchFromGitHub {
      owner = "zbirenbaum";
      repo = "copilot.lua";
      rev = "858bbfa6fa81c88fb1f64107d7981f1658619e0a";
      hash = "sha256-x6ylgVR7nrMhvSvtwbh7CufOJO/q+30G+Tvrj3/wgZY=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/zbirenbaum/copilot.lua";
  };

  copilot-vim = vimUtils.buildVimPlugin {
    pname = "copilot.vim";
    version = "2023-11-01";

    src = fetchFromGitHub {
      owner = "github";
      repo = "copilot.vim";
      rev = "309b3c803d1862d5e84c7c9c5749ae04010123b8";
      hash = "sha256-yuaG4kOSXSivFQCvc6iEZP230tlaFoXcZb0WxBjeWdA=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/github/copilot.vim";
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
    version = "2023-11-07";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "fe3071330a0720ce3695ac915820c8134b22d1b0";
      hash = "sha256-htUCShHjjwJU26/POs2GHDoUFFxczCXd87Ao//as5ig=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/stevearc/dressing.nvim";
  };

  edgy-nvim = vimUtils.buildVimPlugin {
    pname = "edgy.nvim";
    version = "2023-10-14";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "edgy.nvim";
      rev = "8355be45610afdf79a0bab32b91ee297997455b4";
      hash = "sha256-moaypNxfVgaFg4OCpzDIw3zWmMgwxVPCMlyVCP3sVEI=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/edgy.nvim";
  };

  firenvim = vimUtils.buildVimPlugin {
    pname = "firenvim";
    version = "2023-08-18";

    src = fetchFromGitHub {
      owner = "glacambre";
      repo = "firenvim";
      rev = "138424db463e6c0e862a05166a4ccc781cd7c19d";
      hash = "sha256-h7G0/4uwn4+8zYbx5qcz4RY3Z3Ly8v81dhuFg7Sj3CI=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/glacambre/firenvim";
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
    version = "2023-12-12";

    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "d195f0c35ced5174d3ecce1c4c8ebb3b5bc23fa9";
      hash = "sha256-lzL+1OOS0bpMeB9SCkc147/OdweI206r0yPFBmhsN1g=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lewis6991/gitsigns.nvim";
  };

  indent-blankline-nvim = vimUtils.buildVimPlugin {
    pname = "indent-blankline.nvim";
    version = "2023-12-24";

    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "0dca9284bce128e60da18693d92999968d6cb523";
      hash = "sha256-uXycxfTs+rzYqxU8tEkZP0iGcc14Ss3c35HVf2/x0d4=";
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
    version = "2023-11-04";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "96584866b9c5e998cbae300594d0ccfd0c464627";
      hash = "sha256-adBcg8iSSO5eRLuZJnmU6m7IiRJXjoMDzN6yH2JrQIc=";
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
    version = "2023-12-22";

    src = fetchFromGitHub {
      owner = "onsails";
      repo = "lspkind.nvim";
      rev = "d11d58c3fc3edbd8c0112b5850ef4ed553d98752";
      hash = "sha256-RNNK/5waPf3BC3oTmuwGWpC/gyCgvBL1EGLvA5YQVj4=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/onsails/lspkind.nvim";
  };

  lualine-nvim = vimUtils.buildVimPlugin {
    pname = "lualine.nvim";
    version = "2023-10-20";

    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "2248ef254d0a1488a72041cfb45ca9caada6d994";
      hash = "sha256-jV+6mV0dyuhiHGei1UqE2r2GoiKJLtdZI2AMNexbi7E=";
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
    version = "2023-11-01";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.comment";
      rev = "3d9c8009615857e982f09bc5357fc95f2a2175f3";
      hash = "sha256-+qu/wrHqMqSTa6dK0nWBDGSWkdd6VoWyOIKJZioN+0M=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.comment";
  };

  mini-surround = vimUtils.buildVimPlugin {
    pname = "mini.surround";
    version = "2023-11-01";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "af8129efcabe95fc08a233e9f91569829bed031f";
      hash = "sha256-y0lDAXOnPwcHaghgHjHfHaxlP77G4jXmabsZeberbpU=";
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
    version = "2023-11-18";

    src = fetchFromGitHub {
      owner = "nvim-neo-tree";
      repo = "neo-tree.nvim";
      rev = "230ff118613fa07138ba579b89d13ec2201530b9";
      hash = "sha256-NR3A7vfrkRNg2qd3nJjSQHgZHLdqfWbjagguaeAHqo4=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-neo-tree/neo-tree.nvim";
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
    version = "2023-12-24";

    src = fetchFromGitHub {
      owner = "NeogitOrg";
      repo = "neogit";
      rev = "7b4a2c7466498168ab3d2e9f43c67af8ee8f5fe9";
      hash = "sha256-4SEIPhB8gOoclBs82l0Sqn33bXB0JYDM45meiDThr4w=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/NeogitOrg/neogit";
  };

  noice-nvim = vimUtils.buildVimPlugin {
    pname = "noice.nvim";
    version = "2023-10-25";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "92433164e2f7118d4122c7674c3834d9511722ba";
      hash = "sha256-7lgJK5pkMqwIXNeBDsz4B8UAKnkpUvDrHdeG/aSFRzM=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/noice.nvim";
  };

  none-ls-nvim = vimUtils.buildVimPlugin {
    pname = "none-ls.nvim";
    version = "2023-12-22";

    src = fetchFromGitHub {
      owner = "nvimtools";
      repo = "none-ls.nvim";
      rev = "e7382de51b4cf629e56f1fa18192e716e5ba8145";
      hash = "sha256-XvOLC4N/fcoKQcpQXecwDJSAfF4z9pkszMjoMtWldNY=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvimtools/none-ls.nvim";
  };

  nui-nvim = vimUtils.buildVimPlugin {
    pname = "nui.nvim";
    version = "2023-12-06";

    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "c9b4de623d19a85b353ff70d2ae9c77143abe69c";
      hash = "sha256-LPNDj2VuFlLdRGZlMgspMTPsnygO/Slw9NpPUqjHqc4=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/MunifTanjim/nui.nvim";
  };

  nvim-autopairs = vimUtils.buildVimPlugin {
    pname = "nvim-autopairs";
    version = "2023-10-21";

    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "0f04d78619cce9a5af4f355968040f7d675854a1";
      hash = "sha256-M6s05RH2tiIAfgc8wJVtBhdPyDuy5fX6bhoL0vuKV0w=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/windwp/nvim-autopairs";
  };

  nvim-cmp = vimUtils.buildVimPlugin {
    pname = "nvim-cmp";
    version = "2023-11-06";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "0b751f6beef40fd47375eaf53d3057e0bfa317e4";
      hash = "sha256-auUHEjUDOaDkMI9loN6T+/whDDNzPl04bf+nqqLQ5+I=";
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

  nvim-lspconfig = vimUtils.buildVimPlugin {
    pname = "nvim-lspconfig";
    version = "2023-12-22";

    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "9099871a7c7e1c16122e00d70208a2cd02078d80";
      hash = "sha256-wTQJAwNKlWWPLPu5qhS6TlHSBJBbYTkmHP/7aP9BLnE=";
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
    version = "2023-12-23";

    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter-textobjects";
      rev = "4795812635c7b90cec41637314862b0a229d2b24";
      hash = "sha256-Tj1MSxl25gIwJ9u38Ezd/wfFHIgcJEPEiRFqU1QzCZA=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects";
  };

  nvim-ts-autotag = vimUtils.buildVimPlugin {
    pname = "nvim-ts-autotag";
    version = "2023-12-10";

    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "8515e48a277a2f4947d91004d9aa92c29fdc5e18";
      hash = "sha256-O10jzgh4aznTQ1EIEL8OGBsgjN9arsM6XZC2FBKevS4=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/windwp/nvim-ts-autotag";
  };

  nvim-web-devicons = vimUtils.buildVimPlugin {
    pname = "nvim-web-devicons";
    version = "2023-12-24";

    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "43aa2ddf476012a2155f5f969ee55ab17174da7a";
      hash = "sha256-FonYAQphOWxF+X3W1z5OS2MwX4bldcow/43HSMfcouM=";
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
    version = "2023-12-16";

    src = fetchFromGitHub {
      owner = "pwntester";
      repo = "octo.nvim";
      rev = "4a60f50bb886572a59fde095b990fa28e2b50dba";
      hash = "sha256-HgkNSfQuUK9zave2oXn4k69LimZh2Fz/cCRt/AMk8Dc=";
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
    version = "2023-10-28";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "overseer.nvim";
      rev = "6f462a61ce9a5f47743cbf78454bed14a855eb03";
      hash = "sha256-Q/W2i7FydgTj05/+yi4G0vzbJWhPEmsyq4F3KKtpuP8=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/stevearc/overseer.nvim";
  };

  plenary-nvim = vimUtils.buildVimPlugin {
    pname = "plenary.nvim";
    version = "2023-09-12";

    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "9ce85b0f7dcfe5358c0be937ad23e456907d410b";
      hash = "sha256-s3qsKf05X5W1VdZT1vYXGQNK0UaiI+umWUf06Spe4hw=";
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
    version = "2023-12-24";

    src = fetchFromGitHub {
      owner = "HiPhish";
      repo = "rainbow-delimiters.nvim";
      rev = "35413f67fb918207a4acc4948ca9ccb75b6cf8d5";
      hash = "sha256-927nX2n8W12oRqycrH7iYfJaXTvsH18y1dPZ+m/JhaE=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/HiPhish/rainbow-delimiters.nvim";
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

  telescope-file-browser-nvim = vimUtils.buildVimPlugin {
    pname = "telescope-file-browser.nvim";
    version = "2023-12-07";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-file-browser.nvim";
      rev = "8e0543365fe5781c9babea7db89ef06bcff3716d";
      hash = "sha256-Ifz0uoHWinAAEJf4OjuIqF9VV1Ji1FIK4V1qUICw7+Y=";
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
    version = "2023-11-06";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-project.nvim";
      rev = "5460c6c60d48618c5c746e5b1cad4c3e8262fdae";
      hash = "sha256-SxtjDnvObVLl1+rpsmUDbhsgpCnNGa40NbNFlMzTRVY=";
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
    version = "2023-12-19";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "f336f8cfab38a82f9f00df380d28f0c2a572f862";
      hash = "sha256-HwQP5Zxx2bKaPnuPiRfgwCxyUX+OyfVosvvKcgvZYZM=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-telescope/telescope.nvim";
  };

  todo-comments-nvim = vimUtils.buildVimPlugin {
    pname = "todo-comments.nvim";
    version = "2023-10-25";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "todo-comments.nvim";
      rev = "4a6737a8d70fe1ac55c64dfa47fcb189ca431872";
      hash = "sha256-Z041A05I2zESNV+aSghtnijEUeDqPjLQxiOcCVVOwfE=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/todo-comments.nvim";
  };

  toggleterm-nvim = vimUtils.buildVimPlugin {
    pname = "toggleterm.nvim";
    version = "2023-12-13";

    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "toggleterm.nvim";
      rev = "91be5f327e42aa016da13b277540de8dba0b14e3";
      hash = "sha256-hfsBRQ+0d3fAZGWE5Dh/OEdAJfqb3Wuf3IGVI4y2+yI=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/akinsho/toggleterm.nvim";
  };

  tokyonight-nvim = vimUtils.buildVimPlugin {
    pname = "tokyonight.nvim";
    version = "2023-10-25";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "tokyonight.nvim";
      rev = "f247ee700b569ed43f39320413a13ba9b0aef0db";
      hash = "sha256-axjZVZOI+WIv85FfMG+lxftDKlDIw/HzQKyJVFkL33M=";
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
    version = "2023-12-19";

    src = fetchFromGitHub {
      owner = "pmizio";
      repo = "typescript-tools.nvim";
      rev = "829b5dc4f6704b249624e5157ad094dcb20cdc6b";
      hash = "sha256-O/wJzIflMXUc8FbeiUcYuWgE4md8gjK7KUifWFYZNXg=";
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
    version = "2023-11-03";

    src = fetchFromGitHub {
      owner = "gbprod";
      repo = "yanky.nvim";
      rev = "9268018e92d02650a94e39dd5f5903c542f7ea11";
      hash = "sha256-wpsTA9G/WK/mnm5gZHCXcmWgAGLSqeHLbDhITc2MdB0=";
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
