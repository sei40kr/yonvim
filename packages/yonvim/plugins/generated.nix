# This file has been auto-generated by plugins.py. Do not edit!
{ fetchFromGitHub, vimUtils }:

_self: {
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
    version = "2022-07-24";

    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "c4dd9b4de03b891f648b098c25e4dc1bc48a13e5";
      sha256 = "0i9xpsg49m4m16m22iixhsfajnbcyw383iql1r9s5r8cwmzax0kq";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/akinsho/bufferline.nvim";
  };

  close-buffers-nvim = vimUtils.buildVimPlugin {
    pname = "close-buffers.nvim";
    version = "2021-11-14";

    src = fetchFromGitHub {
      owner = "kazhala";
      repo = "close-buffers.nvim";
      rev = "3acbcad1211572342632a6c0151f839e7dead27f";
      sha256 = "0gncvn531grcgdmxismfp49dqprj2qjasb3h3xr3jagiwvqkffgy";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/kazhala/close-buffers.nvim";
  };

  cmp-buffer = vimUtils.buildVimPlugin {
    pname = "cmp-buffer";
    version = "2022-08-10";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-buffer";
      rev = "3022dbc9166796b644a841a02de8dd1cc1d311fa";
      sha256 = "1cwx8ky74633y0bmqmvq1lqzmphadnhzmhzkddl3hpb7rgn18vkl";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/cmp-buffer";
  };

  cmp-cmdline = vimUtils.buildVimPlugin {
    pname = "cmp-cmdline";
    version = "2022-09-16";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-cmdline";
      rev = "c66c379915d68fb52ad5ad1195cdd4265a95ef1e";
      sha256 = "00ivhdq1skdccmkn0sd0kr8b9gnap84in34q5r2mkmnd07vhiwr2";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/cmp-cmdline";
  };

  cmp-nvim-lsp = vimUtils.buildVimPlugin {
    pname = "cmp-nvim-lsp";
    version = "2022-10-29";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-nvim-lsp";
      rev = "78924d1d677b29b3d1fe429864185341724ee5a2";
      sha256 = "1gzn4v70wa61yyw9vfxb8m8kkabz0p35nja1l26cfhl71pnkqrka";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/cmp-nvim-lsp";
  };

  cmp-nvim-lsp-signature-help = vimUtils.buildVimPlugin {
    pname = "cmp-nvim-lsp-signature-help";
    version = "2022-10-14";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-nvim-lsp-signature-help";
      rev = "d2768cb1b83de649d57d967085fe73c5e01f8fd7";
      sha256 = "13imcdv0yws084z2x2lmdj17zy4ngf126i7djknnwp2jfkca1120";
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
    version = "2022-10-03";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-path";
      rev = "91ff86cd9c29299a64f968ebb45846c485725f23";
      sha256 = "18ixx14ibc7qrv32nj0ylxrx8w4ggg49l5vhcqd35hkp4n56j6mn";
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
      sha256 = "1lzv8wbq1w45pbig7lcgyj46nmz4gkag7b37j72p04bixr7wgabv";
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
      sha256 = "18kcxl9rg6qrg5wv6bb0hv0sjafspjhy57irf8gyaa66svwmgxmh";
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
      sha256 = "0b91ap1l3nph46r7b5hcn7413yj3zhrz1jmn4xqp387ng35qz537";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/saadparwaiz1/cmp_luasnip";
  };

  copilot-cmp = vimUtils.buildVimPlugin {
    pname = "copilot-cmp";
    version = "2022-10-12";

    src = fetchFromGitHub {
      owner = "zbirenbaum";
      repo = "copilot-cmp";
      rev = "84d5a0e8e4d1638e7554899cb7b642fa24cf463f";
      sha256 = "180y6d89bldlpilhfz7dakyaml6mfhspnxjn4jliwql4k45xckbi";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/zbirenbaum/copilot-cmp";
  };

  copilot-lua = vimUtils.buildVimPlugin {
    pname = "copilot.lua";
    version = "2022-10-19";

    src = fetchFromGitHub {
      owner = "zbirenbaum";
      repo = "copilot.lua";
      rev = "81ffc4971c3fde809f90bc92232fd0d14bd6bc09";
      sha256 = "1f9d5gcj1s2maikbj4kjm9nsfc95l6maz1hvna7xr5d8dpf4c70k";
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
      sha256 = "0wr703fg7vvygx8iyym8jqqqm51nwffkz8aldma7ahkc5vwi2v0s";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/github/copilot.vim";
  };

  diffview-nvim = vimUtils.buildVimPlugin {
    pname = "diffview.nvim";
    version = "2022-07-20";

    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "a45163cb9ee65742cf26b940c2b24cc652f295c9";
      sha256 = "0vp6id3lqhvn9db5hd2bml5xfsmcy65hn19wbl82pscl6vqx80n4";
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
    version = "2022-09-24";

    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "9110ea15a134b421723cc45c3a8775a6491df39a";
      sha256 = "16mvlivkcfnvchlw9lqfxhs3bw4nbrv0jmkpqbm4adxz4wmplfna";
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
    version = "2022-07-27";

    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "c15bbe9f23d88b5c0b4ca45a446e01a0a3913707";
      sha256 = "03l28ja345vz4hrbj9ha864vfyagid116mqi4z8ka2g2nk7s1brd";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lukas-reineke/indent-blankline.nvim";
  };

  iron-nvim = vimUtils.buildVimPlugin {
    pname = "iron.nvim";
    version = "2022-09-30";

    src = fetchFromGitHub {
      owner = "hkupty";
      repo = "iron.nvim";
      rev = "d1e80812aacd0c7e1a5c3050596716851d223ce9";
      sha256 = "1vhn51mlp9yzzg4gydsh65hpbxy2x7qqf98sibbnc10bsrd2drha";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hkupty/iron.nvim";
  };

  lazy-nvim = vimUtils.buildVimPlugin {
    pname = "lazy.nvim";
    version = "2023-01-03";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "2e3e65b0f7b16773f5f83ee4eea09fe6bca653cd";
      sha256 = "127az575f70mi3w58pxjrwwi655z5jji5gcmx1zz6q7rjb5dnmay";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/lazy.nvim";
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

  lsp_signature-nvim = vimUtils.buildVimPlugin {
    pname = "lsp_signature.nvim";
    version = "2022-07-30";

    src = fetchFromGitHub {
      owner = "ray-x";
      repo = "lsp_signature.nvim";
      rev = "4665921ff8e30601c7c1328625b3abc1427a6143";
      sha256 = "0iiym7chxmidfbix150hjcq7i7hjnr2n010dhi67f0srq5vhwg22";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/ray-x/lsp_signature.nvim";
  };

  lspkind-nvim = vimUtils.buildVimPlugin {
    pname = "lspkind.nvim";
    version = "2022-09-22";

    src = fetchFromGitHub {
      owner = "onsails";
      repo = "lspkind.nvim";
      rev = "c68b3a003483cf382428a43035079f78474cd11e";
      sha256 = "0qrfqajpbkb757vbcjz1g7v5rihsyhg1f1jxrbwg08dbxpw101av";
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

  mason-lspconfig-nvim = vimUtils.buildVimPlugin {
    pname = "mason-lspconfig.nvim";
    version = "2022-07-31";

    src = fetchFromGitHub {
      owner = "williamboman";
      repo = "mason-lspconfig.nvim";
      rev = "f87c5796603aa3436d9cb1d36dbe5b2e579e4034";
      sha256 = "01d4y5qlsl3faxq3a03p7d1cqfclfrhy42m5yyrbzg3q2wmpgvqq";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/williamboman/mason-lspconfig.nvim";
  };

  mason-nvim = vimUtils.buildVimPlugin {
    pname = "mason.nvim";
    version = "2022-07-31";

    src = fetchFromGitHub {
      owner = "williamboman";
      repo = "mason.nvim";
      rev = "5676d6d63850ca63fe468a578387fed9eb0f69a3";
      sha256 = "06b594lv8akxmd54sa18g5w18z1blcvs8zk2p9dnczx9107099yx";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/williamboman/mason.nvim";
  };

  mini-nvim = vimUtils.buildVimPlugin {
    pname = "mini.nvim";
    version = "2022-08-01";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.nvim";
      rev = "75ab5efe4b33ec713b12811984b21067348e3eab";
      sha256 = "0b5pgkkzx7295hmrvqipk0y2gij6sy419is8fpm5q9sbhdyb40b8";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.nvim";
  };

  neogit = vimUtils.buildVimPlugin {
    pname = "neogit";
    version = "2022-10-27";

    src = fetchFromGitHub {
      owner = "TimUntersberger";
      repo = "neogit";
      rev = "1acb13c07b34622fe1054695afcecff537d9a00a";
      sha256 = "1wihkwfqhxvaxazn2wsd18jh8qd9cc2rc1m0rd2bw3ywm7jm24aw";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/TimUntersberger/neogit";
  };

  null-ls-nvim = vimUtils.buildVimPlugin {
    pname = "null-ls.nvim";
    version = "2022-08-04";

    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "null-ls.nvim";
      rev = "9caa5d6d19e4d0bc8782c2a75988af0c20eed59e";
      sha256 = "0li1jl46w6yg8h2lx5jq5jknb8iakz0fpxaskbd1nc89rrhvzwa7";
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
    version = "2022-10-29";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "9bb8ee6e2d6ab3c8cc53323b79f05886bc722faa";
      sha256 = "1z7b53yxamph255rvrs5a4pq5hbqa0nbwpdh1xy8fvfc71gap80n";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/nvim-cmp";
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

  nvim-notify = vimUtils.buildVimPlugin {
    pname = "nvim-notify";
    version = "2022-10-10";

    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-notify";
      rev = "56f65a9474e9ce294a89eb325fccf4391646bfd4";
      sha256 = "1dr3yv8b3zv50yls8xwf6k75xk7l8y78cbbs7zvjmwri31sw5w4f";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/rcarriga/nvim-notify";
  };

  nvim-tree-lua = vimUtils.buildVimPlugin {
    pname = "nvim-tree.lua";
    version = "2022-08-23";

    src = fetchFromGitHub {
      owner = "kyazdani42";
      repo = "nvim-tree.lua";
      rev = "c3ea264947671f44d836af5b7587e12c4b4611f9";
      sha256 = "1kpnixzz26r6byzaasg0hxqs13g7aa9qb0iwg8r1splr2vzaghwi";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/kyazdani42/nvim-tree.lua";
  };

  nvim-treesitter-endwise = vimUtils.buildVimPlugin {
    pname = "nvim-treesitter-endwise";
    version = "2022-09-02";

    src = fetchFromGitHub {
      owner = "RRethy";
      repo = "nvim-treesitter-endwise";
      rev = "dbe426b2786ee41e55afd8ebded172ce206ffa65";
      sha256 = "1j8zrhz8bb8zvki0nw2hyjdqb12skj65fh6j9cmbbmfbqff9prkg";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/RRethy/nvim-treesitter-endwise";
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

  stickybuf-nvim = vimUtils.buildVimPlugin {
    pname = "stickybuf.nvim";
    version = "2022-06-08";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "stickybuf.nvim";
      rev = "db2965ccd97b3f1012b19a76d8541f9843b12960";
      sha256 = "131rkw3nrx01zg6h15l5vzfg83dz5d4w65s7ab82fxga5fkzpy17";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/stevearc/stickybuf.nvim";
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
    version = "2022-08-01";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-file-browser.nvim";
      rev = "4272c52078cc457dfaabce6fa3545e7495651d04";
      sha256 = "0mrd9z0n96h7fwsk5dgb25ax3p3xygwfav4gfgyysb7s7fz3529d";
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
    version = "2022-06-12";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-project.nvim";
      rev = "8cd22b696e14b353fe8ea9648a03364cb56c39d4";
      sha256 = "1qrk2i7yvvrqg4yjma1q6c26wdlapc60yriiqx5mhfam9xh28s24";
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
    version = "2022-08-01";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "75a5e5065376d9103fc4bafc3ae6327304cee6e9";
      sha256 = "1dkh69kwyjmksbl1hi33mik1wf2cljmkaq0h1imk075x26l1zym2";
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

  virt-column-nvim = vimUtils.buildVimPlugin {
    pname = "virt-column.nvim";
    version = "2022-09-21";

    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "virt-column.nvim";
      rev = "36fa3be9cba9195081e934b4f9729021726c5889";
      sha256 = "097ki3ms89a2m2kvv3fg43dq7cfj6j62n3g58fmr945j5a7srssj";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lukas-reineke/virt-column.nvim";
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
