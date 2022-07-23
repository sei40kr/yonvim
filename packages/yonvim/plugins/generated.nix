# This file has been auto-generated by plugins.py. Do not edit!
{ fetchFromGitHub, vimUtils }:

{
  LuaSnip = vimUtils.buildVimPlugin {
    pname = "LuaSnip";
    version = "2022-05-28";

    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "52f4aed58db32a3a03211d31d2b12c0495c45580";
      sha256 = "0drc847m55xwiha1wa2ykd5cwynmvd5ik2sys9v727fb4fbqmpa0";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/L3MON4D3/LuaSnip";
  };

  auto-session = vimUtils.buildVimPlugin {
    pname = "auto-session";
    version = "2022-07-14";

    src = fetchFromGitHub {
      owner = "rmagatti";
      repo = "auto-session";
      rev = "50f5f2eaa7ff825c7036dc3c9981ebae7584b48e";
      sha256 = "1h89cw34dnk3xgvpd12ic9bpll62sa3qpif4sfhb8rjcdxi9b1sl";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/rmagatti/auto-session";
  };

  bufferline-nvim = vimUtils.buildVimPlugin {
    pname = "bufferline.nvim";
    version = "2022-06-05";

    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "v2.2.1";
      sha256 = "03sf49s26nb9aqr16f776p58vs3dx9kyyach2jj4k1lp318w6ikp";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/akinsho/bufferline.nvim";
  };

  cmp-buffer = vimUtils.buildVimPlugin {
    pname = "cmp-buffer";
    version = "2022-06-15";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-buffer";
      rev = "62fc67a2b0205136bc3e312664624ba2ab4a9323";
      sha256 = "0wcys2z1yw6raxr9x5nm19ac04q8gfri4pw9mfsh18smv4rnl8zs";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/cmp-buffer";
  };

  cmp-cmdline = vimUtils.buildVimPlugin {
    pname = "cmp-cmdline";
    version = "2022-05-02";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-cmdline";
      rev = "c36ca4bc1dedb12b4ba6546b96c43896fd6e7252";
      sha256 = "04h6np207781l3wa36l6nqd56lx39s1kycf4jvclgfrr6ddnbv68";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/cmp-cmdline";
  };

  cmp-nvim-lsp = vimUtils.buildVimPlugin {
    pname = "cmp-nvim-lsp";
    version = "2022-05-16";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-nvim-lsp";
      rev = "affe808a5c56b71630f17aa7c38e15c59fd648a8";
      sha256 = "1v88bw8ri8w4s8yn7jw5anyiwyw8swwzrjf843zqzai18kh9mlnp";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/cmp-nvim-lsp";
  };

  cmp-nvim-lsp-signature-help = vimUtils.buildVimPlugin {
    pname = "cmp-nvim-lsp-signature-help";
    version = "2022-06-20";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-nvim-lsp-signature-help";
      rev = "007dd2740d9b70f2688db01a39d6d25b7169cd57";
      sha256 = "194i2b6qbl3z4j2p2s6sig2fac8i9kglkdwdc5h3x2q7avw70yrg";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help";
  };

  cmp-omni = vimUtils.buildVimPlugin {
    pname = "cmp-omni";
    version = "2022-01-08";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-omni";
      rev = "7a457f0c4f9e0801fee777d955eb841659aa3b84";
      sha256 = "0f9mk0h3g1gg6lq9qnasi0liv8kvgc6rzfvgc9cflq5kkw97gjpw";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/cmp-omni";
  };

  cmp-path = vimUtils.buildVimPlugin {
    pname = "cmp-path";
    version = "2022-02-02";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-path";
      rev = "466b6b8270f7ba89abd59f402c73f63c7331ff6e";
      sha256 = "15ksxnwxssv1yr1ss66mbl5w0layq0f4baisd9ki192alnkd7365";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/cmp-path";
  };

  cmp-spell = vimUtils.buildVimPlugin {
    pname = "cmp-spell";
    version = "2021-10-19";

    src = fetchFromGitHub {
      owner = "f3fora";
      repo = "cmp-spell";
      rev = "5602f1a0de7831f8dad5b0c6db45328fbd539971";
      sha256 = "1pk6izww8canfqpiyrqd6qx1p3j18pwfzkfx4ynbng8kl9nh6nv5";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/f3fora/cmp-spell";
  };

  cmp_luasnip = vimUtils.buildVimPlugin {
    pname = "cmp_luasnip";
    version = "2022-05-01";

    src = fetchFromGitHub {
      owner = "saadparwaiz1";
      repo = "cmp_luasnip";
      rev = "a9de941bcbda508d0a45d28ae366bb3f08db2e36";
      sha256 = "0mh7gimav9p6cgv4j43l034dknz8szsnmrz49b2ra04yk9ihk1zj";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/saadparwaiz1/cmp_luasnip";
  };

  copilot-cmp = vimUtils.buildVimPlugin {
    pname = "copilot-cmp";
    version = "2022-06-20";

    src = fetchFromGitHub {
      owner = "zbirenbaum";
      repo = "copilot-cmp";
      rev = "bcf4a3b8f2b7bb61a2d736adbb315d081444549f";
      sha256 = "082wy3bpmzac0vgjdkaaiih3h8k91rn1cjcvvwzpk8hjsxbbhf96";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/zbirenbaum/copilot-cmp";
  };

  copilot-lua = vimUtils.buildVimPlugin {
    pname = "copilot.lua";
    version = "2022-07-02";

    src = fetchFromGitHub {
      owner = "zbirenbaum";
      repo = "copilot.lua";
      rev = "2bd8d80e8eaf60d5237e02784081959ae13e90b7";
      sha256 = "1qz5b4v52fgahnp6a4mzibw84h4ihl061788q199d5c5ccn3fh8h";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/zbirenbaum/copilot.lua";
  };

  copilot-vim = vimUtils.buildVimPlugin {
    pname = "copilot.vim";
    version = "2022-06-17";

    src = fetchFromGitHub {
      owner = "github";
      repo = "copilot.vim";
      rev = "c2e75a3a7519c126c6fdb35984976df9ae13f564";
      sha256 = "0m65y0pvc7sdj2xc3r97nb5md1i0iqcyri6h83hvs88skrmwnpap";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/github/copilot.vim";
  };

  diffview-nvim = vimUtils.buildVimPlugin {
    pname = "diffview.nvim";
    version = "2022-06-09";

    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "ca297a7e526b42b1ea0e4bd6eebb36f2654125a7";
      sha256 = "1vr7yx7i863brmpbayxc7k9z14ai0naa030ck43cknib1bdilpkp";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/sindrets/diffview.nvim";
  };

  dressing-nvim = vimUtils.buildVimPlugin {
    pname = "dressing.nvim";
    version = "2022-07-14";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "1e60c07ae9a8557ac6395144606c3a5335ad47e0";
      sha256 = "1bavk3zf1x5x29jfhms6sdqjdl7zpjnhiggmgwbc8qjvr3vj6jgj";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/stevearc/dressing.nvim";
  };

  editorconfig-nvim = vimUtils.buildVimPlugin {
    pname = "editorconfig.nvim";
    version = "2022-07-13";

    src = fetchFromGitHub {
      owner = "gpanders";
      repo = "editorconfig.nvim";
      rev = "918279fe8a432aea7555fae4aac52c705d7f3c2e";
      sha256 = "1smb1zd7skhdivap7pr1wgn1cfxp83zlssxbs044rdcqg6h4zjb8";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/gpanders/editorconfig.nvim";
  };

  fidget-nvim = vimUtils.buildVimPlugin {
    pname = "fidget.nvim";
    version = "2022-06-12";

    src = fetchFromGitHub {
      owner = "j-hui";
      repo = "fidget.nvim";
      rev = "46d1110435f1f023c22fa95bb10b3906aecd7bde";
      sha256 = "0v0jnzj288swbp0w8xa7287sbql1rfgziqdk1gbcgvzs7zlvczbr";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/j-hui/fidget.nvim";
  };

  friendly-snippets = vimUtils.buildVimPlugin {
    pname = "friendly-snippets";
    version = "2022-07-06";

    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "24afb4c178d8ea28bfa73f37814ada43be478b1d";
      sha256 = "09fx4nrj9z0w8idv9pm80dlm57ffy5cxj9yy2agxwiwr0c1lkxsr";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/rafamadriz/friendly-snippets";
  };

  gitsigns-nvim = vimUtils.buildVimPlugin {
    pname = "gitsigns.nvim";
    version = "2022-01-15";

    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "v0.4";
      sha256 = "1mdhqqw9lyhzs2pflpmmg9cnhzdib4rw569xqqwjdg24nzr4gxzy";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lewis6991/gitsigns.nvim";
  };

  hop-nvim = vimUtils.buildVimPlugin {
    pname = "hop.nvim";
    version = "2022-02-07";

    src = fetchFromGitHub {
      owner = "phaazon";
      repo = "hop.nvim";
      rev = "v1.3.0";
      sha256 = "08yvjh70saffnjjxdhis9sfcbkpmbgm8jl3ax0qal41crwrv7ibb";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/phaazon/hop.nvim";
  };

  impatient-nvim = vimUtils.buildVimPlugin {
    pname = "impatient.nvim";
    version = "2021-12-26";

    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "impatient.nvim";
      rev = "3ea9abedb6941995b05fdad654d9cfd51c38a31f";
      sha256 = "06b8h3g77wrjxvhapkvx149pha29a0zcq28bj2pcvh7686cysz9k";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lewis6991/impatient.nvim";
  };

  indent-blankline-nvim = vimUtils.buildVimPlugin {
    pname = "indent-blankline.nvim";
    version = "2022-06-29";

    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "v2.19.1";
      sha256 = "1wppsqpi5h0qb1vhxryjw0sn0g8yhkpald47cwnr5r3ix5w99wfa";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lukas-reineke/indent-blankline.nvim";
  };

  lsp-format-nvim = vimUtils.buildVimPlugin {
    pname = "lsp-format.nvim";
    version = "2022-05-21";

    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "lsp-format.nvim";
      rev = "v2.4.1";
      sha256 = "0lj40p9ykj5f0d3sl4g0g0gjbfwx1vm6y5q613zphimpjgs3wl64";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lukas-reineke/lsp-format.nvim";
  };

  lspkind-nvim = vimUtils.buildVimPlugin {
    pname = "lspkind.nvim";
    version = "2022-04-18";

    src = fetchFromGitHub {
      owner = "onsails";
      repo = "lspkind.nvim";
      rev = "57e5b5dfbe991151b07d272a06e365a77cc3d0e7";
      sha256 = "1c13ll09v16prhzgmv8pappck4x3ahhc5sizp6r61kb7k4mkfpfk";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/onsails/lspkind.nvim";
  };

  lua-dev-nvim = vimUtils.buildVimPlugin {
    pname = "lua-dev.nvim";
    version = "2022-01-18";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "lua-dev.nvim";
      rev = "a0ee77789d9948adce64d98700cc90cecaef88d5";
      sha256 = "10hc5iyqicbwjchwfyk7dz2wph0hz7ikjanvga9ncjk62qm2154f";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/lua-dev.nvim";
  };

  lualine-nvim = vimUtils.buildVimPlugin {
    pname = "lualine.nvim";
    version = "2022-05-30";

    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "3362b28f917acc37538b1047f187ff1b5645ecdd";
      sha256 = "0pfkh7zhnwhbfdcild5vayymw4vqzcfb31nq1y33pk1zlvpwxksv";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-lualine/lualine.nvim";
  };

  mini-nvim = vimUtils.buildVimPlugin {
    pname = "mini.nvim";
    version = "2022-05-26";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.nvim";
      rev = "v0.4.0";
      sha256 = "0977ii8ard5rxlww55j33g6l3qp5k14r14mzkb4g1vprjqbqvypq";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.nvim";
  };

  neogit = vimUtils.buildVimPlugin {
    pname = "neogit";
    version = "2022-06-09";

    src = fetchFromGitHub {
      owner = "TimUntersberger";
      repo = "neogit";
      rev = "0ce803d22e361080ec0daf6bee7aad45e8cf8b07";
      sha256 = "0qh359k6x46na0raqrp5wkc7c25lsgsr5y35i0r426xxmr029kn8";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/TimUntersberger/neogit";
  };

  null-ls-nvim = vimUtils.buildVimPlugin {
    pname = "null-ls.nvim";
    version = "2022-06-11";

    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "null-ls.nvim";
      rev = "dfdd5fab3c53c30f83c78ea351b9a8f65715a5b7";
      sha256 = "16yy40k5pxwlwdi36dhpywrg3p4qwgwdxsydqparw4filjbv0iks";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/jose-elias-alvarez/null-ls.nvim";
  };

  nvim-autopairs = vimUtils.buildVimPlugin {
    pname = "nvim-autopairs";
    version = "2022-06-09";

    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "84cde3547e9a8b16db0bfe523e98e19b7be5148b";
      sha256 = "0hkfa28lcldacsxfccp99wbp42qp3cxffh5rg5s2brkkr3xdp3yl";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/windwp/nvim-autopairs";
  };

  nvim-cmp = vimUtils.buildVimPlugin {
    pname = "nvim-cmp";
    version = "2022-06-09";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "15c7bf7c0dfb7c75eb526c53f9574633c13dc22d";
      sha256 = "0fncx8cr915p5wxjb2wqmc5l3p1mjy0vwmkik4alz422c9zh436z";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/nvim-cmp";
  };

  nvim-lsp-installer = vimUtils.buildVimPlugin {
    pname = "nvim-lsp-installer";
    version = "2022-07-19";

    src = fetchFromGitHub {
      owner = "williamboman";
      repo = "nvim-lsp-installer";
      rev = "c8d14017c9ec1e5429ba5f053b844257d74d4639";
      sha256 = "05syzgwwj94251f00i5v7gvsy9mbn0k1lmzk50jsi58h182gynjb";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/williamboman/nvim-lsp-installer";
  };

  nvim-lspconfig = vimUtils.buildVimPlugin {
    pname = "nvim-lspconfig";
    version = "2022-04-15";

    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "v0.1.3";
      sha256 = "1x9b87d965q9a7a726dw6q6k0lady04acg0n4c1shjwin7cl6kx9";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/neovim/nvim-lspconfig";
  };

  nvim-tree-lua = vimUtils.buildVimPlugin {
    pname = "nvim-tree.lua";
    version = "2022-06-11";

    src = fetchFromGitHub {
      owner = "kyazdani42";
      repo = "nvim-tree.lua";
      rev = "bdb6d4a25410da35bbf7ce0dbdaa8d60432bc243";
      sha256 = "1kyckmbcb3bh73z3bk4325f7ll8svwbscv8dnxgn895lqis4clvk";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/kyazdani42/nvim-tree.lua";
  };

  nvim-treesitter-refactor = vimUtils.buildVimPlugin {
    pname = "nvim-treesitter-refactor";
    version = "2022-01-22";

    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter-refactor";
      rev = "0dc8069641226904f9757de786a6ab2273eb73ea";
      sha256 = "193fk657wjxz7hfbkjw566bng62vv7432cjhb5rwcig04xd5izqm";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-treesitter/nvim-treesitter-refactor";
  };

  nvim-treesitter-textobjects = vimUtils.buildVimPlugin {
    pname = "nvim-treesitter-textobjects";
    version = "2022-04-08";

    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter-textobjects";
      rev = "29c5e9effe53f19f250e3a88d1427b35031bc90d";
      sha256 = "09bpgd0fqpcwifs2wna1lqyrfn4rmp2gfan4635lwjp4sixj52vc";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects";
  };

  nvim-ts-autotag = vimUtils.buildVimPlugin {
    pname = "nvim-ts-autotag";
    version = "2022-03-01";

    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "57035b5814f343bc6110676c9ae2eacfcd5340c2";
      sha256 = "06fj3bpfakbzbb4saqa2dss0wz6z98farljv3xmih162qbybr2c1";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/windwp/nvim-ts-autotag";
  };

  nvim-ts-context-commentstring = vimUtils.buildVimPlugin {
    pname = "nvim-ts-context-commentstring";
    version = "2022-04-07";

    src = fetchFromGitHub {
      owner = "JoosepAlviste";
      repo = "nvim-ts-context-commentstring";
      rev = "88343753dbe81c227a1c1fd2c8d764afb8d36269";
      sha256 = "1qfgg9lzva7m3kbrxhhccf766by5n2sf456cdvadypr83sniq6ay";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring";
  };

  nvim-ts-rainbow = vimUtils.buildVimPlugin {
    pname = "nvim-ts-rainbow";
    version = "2022-07-14";

    src = fetchFromGitHub {
      owner = "p00f";
      repo = "nvim-ts-rainbow";
      rev = "9dd019e84dc3b470dfdb5b05e3bb26158fef8a0c";
      sha256 = "0gmh1h28vvrzgmaiz3mv41d7dmvs83r4d2ha8409zvs5bv5d19ad";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/p00f/nvim-ts-rainbow";
  };

  nvim-web-devicons = vimUtils.buildVimPlugin {
    pname = "nvim-web-devicons";
    version = "2022-05-30";

    src = fetchFromGitHub {
      owner = "kyazdani42";
      repo = "nvim-web-devicons";
      rev = "8d2c5337f0a2d0a17de8e751876eeb192b32310e";
      sha256 = "0jb25z0bw2xyix18pf59lrmbnih8yxxkb81xi9zl034k9l9cmsv3";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/kyazdani42/nvim-web-devicons";
  };

  nvimacs = vimUtils.buildVimPlugin {
    pname = "nvimacs";
    version = "2022-06-22";

    src = fetchFromGitHub {
      owner = "sei40kr";
      repo = "nvimacs";
      rev = "99f063cd25957cabc21e85f9d4d860d5be689a81";
      sha256 = "1pavy7kalgch9d73mlbz8v2rvy9v19c4pvqw1a6gbxraajiz4nkz";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/sei40kr/nvimacs";
  };

  octo-nvim = vimUtils.buildVimPlugin {
    pname = "octo.nvim";
    version = "2022-06-08";

    src = fetchFromGitHub {
      owner = "pwntester";
      repo = "octo.nvim";
      rev = "71d4dcfe56d4c45b7f1a1520d65ef5a86d2bc9bd";
      sha256 = "020k4nni9kqq4sqh86rsca3vkf49b56pllxk81yriwyazn8m3y2r";
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
      sha256 = "0n62h0gjakdc3bnpysny0rndhqhq7g5c97pgr42wz599wnr1pily";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/tyru/open-browser-github.vim";
  };

  open-browser-vim = vimUtils.buildVimPlugin {
    pname = "open-browser.vim";
    version = "2021-10-05";

    src = fetchFromGitHub {
      owner = "tyru";
      repo = "open-browser.vim";
      rev = "80ec3f2bb0a86ac13c998e2f2c86e16e6d2f20bb";
      sha256 = "01qj967nch3wwkbshrsdzyyr4apvsqrpa4dkmpn21qr2183w84zz";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/tyru/open-browser.vim";
  };

  plenary-nvim = vimUtils.buildVimPlugin {
    pname = "plenary.nvim";
    version = "2022-06-08";

    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "9c3239bc5f99b85be1123107f7290d16a68f8e64";
      sha256 = "1d948hq5aa8wbr1lvpi3c54mlgh8z6yk25bfn4ckbs1g1giar8ih";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-lua/plenary.nvim";
  };

  project-nvim = vimUtils.buildVimPlugin {
    pname = "project.nvim";
    version = "2022-05-29";

    src = fetchFromGitHub {
      owner = "ahmedkhalf";
      repo = "project.nvim";
      rev = "541115e762764bc44d7d3bf501b6e367842d3d4f";
      sha256 = "0vabnhb5d8nc25ap9zixazmr4sm5ylq0iqzsc89cc3h1907xp6lz";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/ahmedkhalf/project.nvim";
  };

  session-lens = vimUtils.buildVimPlugin {
    pname = "session-lens";
    version = "2022-06-29";

    src = fetchFromGitHub {
      owner = "rmagatti";
      repo = "session-lens";
      rev = "5e95ad9aec94b34c83db3eff5dabc4ca1778de6d";
      sha256 = "1gilz9nk9nc7qmzwz171k00l0bwdk94v3d9i9ars07x9bj9wmlvp";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/rmagatti/session-lens";
  };

  spellsitter-nvim = vimUtils.buildVimPlugin {
    pname = "spellsitter.nvim";
    version = "2022-07-09";

    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "spellsitter.nvim";
      rev = "eb74c4b1f4240cf1a7860877423195cec6311bd5";
      sha256 = "0qajg4kjwlwbxjjms580v5aisg1vjid4vbmvzwk6nsfms8nrzn18";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lewis6991/spellsitter.nvim";
  };

  symbols-outline-nvim = vimUtils.buildVimPlugin {
    pname = "symbols-outline.nvim";
    version = "2022-05-01";

    src = fetchFromGitHub {
      owner = "simrat39";
      repo = "symbols-outline.nvim";
      rev = "15ae99c27360ab42e931be127d130611375307d5";
      sha256 = "170lxb2hw814wjxkpl0g4sic7wg3krp7pfkf3wp5j4dwk8czm2wi";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/simrat39/symbols-outline.nvim";
  };

  telescope-file-browser-nvim = vimUtils.buildVimPlugin {
    pname = "telescope-file-browser.nvim";
    version = "2022-03-25";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-file-browser.nvim";
      rev = "c6f5104ff309649ebbaec283bbd1ab54511dd109";
      sha256 = "1b3z4i5jlxjk44x245b5sqnzcn5k1jww8viy0394hj6zqf7ink2w";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-telescope/telescope-file-browser.nvim";
  };

  telescope-fzy-native-nvim = vimUtils.buildVimPlugin {
    pname = "telescope-fzy-native.nvim";
    version = "2021-04-08";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-fzy-native.nvim";
      rev = "7b3d2528102f858036627a68821ccf5fc1d78ce4";
      sha256 = "13jxrvf7cgzhw5zbf69hcnjf1la3prll780lq07h06wakpyrrm4y";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-telescope/telescope-fzy-native.nvim";
  };

  telescope-luasnip-nvim = vimUtils.buildVimPlugin {
    pname = "telescope-luasnip.nvim";
    version = "2022-04-02";

    src = fetchFromGitHub {
      owner = "benfowler";
      repo = "telescope-luasnip.nvim";
      rev = "b4ebc74bb49fadc28fb7432f448ba8cbcee58904";
      sha256 = "0sdh5i11202sn1dq908i7bw70x9lylbyjrljpbk7sndn22pk5r93";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/benfowler/telescope-luasnip.nvim";
  };

  telescope-project-nvim = vimUtils.buildVimPlugin {
    pname = "telescope-project.nvim";
    version = "2022-01-23";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-project.nvim";
      rev = "d317c3cef6917d650d9a638c627b54d3e1173031";
      sha256 = "0kg2jh23cgbwjmvrc1cxvjka4y2j0qpi4r8dzzw0gs2nmdjmmic7";
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
      sha256 = "1yw09d2snma0vy36nfdswm1snf21w183aji7f6y8jnkx47g6gc37";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-telescope/telescope-symbols.nvim";
  };

  telescope-nvim = vimUtils.buildVimPlugin {
    pname = "telescope.nvim";
    version = "2022-04-22";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "nvim-0.6";
      sha256 = "0k2nw7f1fbi4g0gyr9rfn0mkk39bgqqqm89kd7h3a49xbbkwbz8f";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-telescope/telescope.nvim";
  };

  todo-comments-nvim = vimUtils.buildVimPlugin {
    pname = "todo-comments.nvim";
    version = "2022-01-19";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "todo-comments.nvim";
      rev = "98b1ebf198836bdc226c0562b9f906584e6c400e";
      sha256 = "02qjn45qpvxhw7zifw0a86alika5r8b5a98y1199jpdx2d7zks7j";
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
      sha256 = "0r1c361kg6xvyx785vjwang9qf1i7laaxh7bwryz76pb0byi80c0";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/akinsho/toggleterm.nvim";
  };

  tokyonight-nvim = vimUtils.buildVimPlugin {
    pname = "tokyonight.nvim";
    version = "2021-12-31";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "tokyonight.nvim";
      rev = "8223c970677e4d88c9b6b6d81bda23daf11062bb";
      sha256 = "1rzg0h0ab3jsfrimdawh8vlxa6y3j3rmk57zyapnmzpzllcswj0i";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/tokyonight.nvim";
  };

  trouble-nvim = vimUtils.buildVimPlugin {
    pname = "trouble.nvim";
    version = "2022-05-09";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "da61737d860ddc12f78e638152834487eabf0ee5";
      sha256 = "1aa45r9z8mghak8f5gymhm875rssi1afs92h0mpnn43y0j76xy31";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/trouble.nvim";
  };

  vim-visual-multi = vimUtils.buildVimPlugin {
    pname = "vim-visual-multi";
    version = "2020-09-01";

    src = fetchFromGitHub {
      owner = "mg979";
      repo = "vim-visual-multi";
      rev = "v0.5.8";
      sha256 = "0jggmhxgs3lkm8hfjicminhsmfdjw8gsp0p5jgamdx68bryp818g";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/mg979/vim-visual-multi";
  };

  which-key-nvim = vimUtils.buildVimPlugin {
    pname = "which-key.nvim";
    version = "2022-05-04";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "bd4411a2ed4dd8bb69c125e339d837028a6eea71";
      sha256 = "0vf685xgdb967wmvffk1pfrvbhg1jkvzp1kb7r0vs90mg8gpv1aj";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/which-key.nvim";
  };
}
