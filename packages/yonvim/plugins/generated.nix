# This file has been auto-generated by plugins.py. Do not edit!
{ fetchFromGitHub, vimUtils }:

_self: {
  CopilotChat-nvim = vimUtils.buildVimPlugin {
    pname = "CopilotChat.nvim";
    version = "2024-04-17";

    src = fetchFromGitHub {
      owner = "CopilotC-Nvim";
      repo = "CopilotChat.nvim";
      rev = "c53e41fd2f4769e3fe60c7233fbd5d5a78324f4b";
      hash = "sha256-SzFRI5MfByFQZw80dv4nbmJmPUIo5o5NhNarlMueHYY=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/CopilotC-Nvim/CopilotChat.nvim";
  };

  LuaSnip = vimUtils.buildVimPlugin {
    pname = "LuaSnip";
    version = "2024-06-28";

    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "ce0a05ab4e2839e1c48d072c5236cce846a387bc";
      hash = "sha256-zjefbPMiKxwYsBzE75jQRVNFMDSnCq1hKe1cBBqMRWg=";
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

  NotebookNavigator-nvim = vimUtils.buildVimPlugin {
    pname = "NotebookNavigator.nvim";
    version = "2024-04-01";

    src = fetchFromGitHub {
      owner = "sei40kr";
      repo = "NotebookNavigator.nvim";
      rev = "fee81b2e2cdce570462d76ca648511ba02f31fb9";
      hash = "sha256-JHO7mN+lEAjGz1Zop/af2X1yHyU8ygf5R7S5BVEWqR4=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/sei40kr/NotebookNavigator.nvim";
  };

  actions-preview-nvim = vimUtils.buildVimPlugin {
    pname = "actions-preview.nvim";
    version = "2024-06-16";

    src = fetchFromGitHub {
      owner = "aznhe21";
      repo = "actions-preview.nvim";
      rev = "9f52a01c374318e91337697ebed51c6fae57f8a4";
      hash = "sha256-lYjsv8y1fMuTGpBF/iG7cm/a7tLdh748vJhVsSp/Iz8=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/aznhe21/actions-preview.nvim";
  };

  aerial-nvim = vimUtils.buildVimPlugin {
    pname = "aerial.nvim";
    version = "2024-07-24";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "aerial.nvim";
      rev = "e75a3df2c20b3a98c786f5e61587d74a7a6b61d6";
      hash = "sha256-fURk05BFspjLADYon/UVOQV4pEwFRAXPDNhvT8EPTxo=";
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
    version = "2024-04-22";

    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "73540cb95f8d95aa1af3ed57713c6720c78af915";
      hash = "sha256-bHlmaNXfZTlTm/8v48FwCde9ljZFLv25efYF5355bnw=";
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
    version = "2024-05-17";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-nvim-lsp";
      rev = "39e2eda76828d88b773cc27a3f61d2ad782c922d";
      hash = "sha256-CT1+Z4XJBVsl/RqvJeGmyitD6x7So0ylXvvef5jh7I8=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/hrsh7th/cmp-nvim-lsp";
  };

  cmp-nvim-lsp-signature-help = vimUtils.buildVimPlugin {
    pname = "cmp-nvim-lsp-signature-help";
    version = "2024-05-17";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-nvim-lsp-signature-help";
      rev = "031e6ba70b0ad5eee49fd2120ff7a2e325b17fa7";
      hash = "sha256-tLMhkmdehH3IDlIdqJq6GHpudY0G05Asjir6p4aONyI=";
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
    version = "2024-05-07";

    src = fetchFromGitHub {
      owner = "f3fora";
      repo = "cmp-spell";
      rev = "694a4e50809d6d645c1ea29015dad0c293f019d6";
      hash = "sha256-Gf7HSocvHmTleVQytNYmmN+fFX7kl5sYHQSpUJc0CGI=";
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
    version = "2024-06-15";

    src = fetchFromGitHub {
      owner = "zbirenbaum";
      repo = "copilot.lua";
      rev = "86537b286f18783f8b67bccd78a4ef4345679625";
      hash = "sha256-HC1QZlqEg+RBz/8kjLadafc06UoMAjhh0UO/BWQGMY8=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/zbirenbaum/copilot.lua";
  };

  diffview-nvim = vimUtils.buildVimPlugin {
    pname = "diffview.nvim";
    version = "2024-06-13";

    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "4516612fe98ff56ae0415a259ff6361a89419b0a";
      hash = "sha256-SX+ybIzL/w6uyCy4iZKnWnzTFwqB1oXSgyYVAdpdKi8=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/sindrets/diffview.nvim";
  };

  dressing-nvim = vimUtils.buildVimPlugin {
    pname = "dressing.nvim";
    version = "2024-04-24";

    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "5162edb1442a729a885c45455a07e9a89058be2f";
      hash = "sha256-46r7X8CNuMgSB9X1jFLTQAiiBVqszkBP6DPlo6nBAxI=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/stevearc/dressing.nvim";
  };

  edgy-nvim = vimUtils.buildVimPlugin {
    pname = "edgy.nvim";
    version = "2024-07-22";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "edgy.nvim";
      rev = "ebb77fde6f5cb2745431c6c0fe57024f66471728";
      hash = "sha256-ulA/sE/d1Vxby1oChC4aH2bGaGwcSgk63+5J1SjdSt8=";
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
    version = "2024-04-20";

    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "035da036e68e509ed158414416c827d022d914bd";
      hash = "sha256-UK3DyvrQ0kLm9wrMQ6tLDoDunoThbY/Yfjn+eCZpuMw=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/lewis6991/gitsigns.nvim";
  };

  haskell-tools-nvim = vimUtils.buildVimPlugin {
    pname = "haskell-tools.nvim";
    version = "2024-03-25";

    src = fetchFromGitHub {
      owner = "MrcJkb";
      repo = "haskell-tools.nvim";
      rev = "b53d4f2faef93c4b85c1510adef280747b37ec67";
      hash = "sha256-6+zP4YiMrN0WpoolRDHPppojvJx1XphRId0UQRIPUVE=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/MrcJkb/haskell-tools.nvim";
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
    version = "2024-07-25";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "077102c5bfc578693f12377846d427f49bc50076";
      hash = "sha256-Rd5r7AcdXYJ+gIsvh0N3WIAgg7xXqEVo+62VzIT5QHo=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/lazy.nvim";
  };

  lsp-format-nvim = vimUtils.buildVimPlugin {
    pname = "lsp-format.nvim";
    version = "2024-04-03";

    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "lsp-format.nvim";
      rev = "3612642b0e2eb85015838df5dcfbacb61f15db98";
      hash = "sha256-jKF6pF+ro3AhhHj5X6fUHM9vqHEGvBS8dv6oaoKdP94=";
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
    version = "2024-07-25";

    src = fetchFromGitHub {
      owner = "onsails";
      repo = "lspkind.nvim";
      rev = "cff4ae321a91ee3473a92ea1a8c637e3a9510aec";
      hash = "sha256-1KK6JhQUtA5mxwRSKU5e3pTQzZwaoAjzycBLx5X/xlA=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/onsails/lspkind.nvim";
  };

  lualine-nvim = vimUtils.buildVimPlugin {
    pname = "lualine.nvim";
    version = "2024-03-21";

    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "b5e8bb642138f787a2c1c5aedc2a78cb2cebbd67";
      hash = "sha256-+2fi58GolO3e0O7+kl+idNeFuTfJA1b5yCBdY2RnVjA=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-lualine/lualine.nvim";
  };

  mini-bufremove = vimUtils.buildVimPlugin {
    pname = "mini.bufremove";
    version = "2024-07-01";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.bufremove";
      rev = "1ee294a97e091d3cf967974df622c0d887890dc2";
      hash = "sha256-tYE7ib/F3emDxHaeEW/k/P31/gKknLsw63H9T5yAEEo=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.bufremove";
  };

  mini-comment = vimUtils.buildVimPlugin {
    pname = "mini.comment";
    version = "2024-04-11";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.comment";
      rev = "f9f1a646fd3d9df7397aa1b9550a875fe8189eb0";
      hash = "sha256-cQgdKP4WybO6YAT7G+owO0G/7AfQHxFdFIAdzfoVwYo=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/echasnovski/mini.comment";
  };

  mini-surround = vimUtils.buildVimPlugin {
    pname = "mini.surround";
    version = "2024-07-13";

    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "57caca9525cec0ea771a67326b0ee637d056078a";
      hash = "sha256-XjF+F88wCom/ZLdosAFhdj8G+ECeqQvB8bk+k70TjHc=";
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

  molten-nvim = vimUtils.buildVimPlugin {
    pname = "molten-nvim";
    version = "2024-07-12";

    src = fetchFromGitHub {
      owner = "benlubas";
      repo = "molten-nvim";
      rev = "eb6d0fe33e14989b0f1fbe25d9732889ee57bd1a";
      hash = "sha256-TkHiUItTSjjSeGU92dzKEKgCrE426TTbc4sW6kg8NV8=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/benlubas/molten-nvim";
  };

  neo-tree-nvim = vimUtils.buildVimPlugin {
    pname = "neo-tree.nvim";
    version = "2024-06-11";

    src = fetchFromGitHub {
      owner = "nvim-neo-tree";
      repo = "neo-tree.nvim";
      rev = "206241e451c12f78969ff5ae53af45616ffc9b72";
      hash = "sha256-eNGuQEjAKsPuRDGaw95kCVOmP64ZDnUuFBppqtcrhZ4=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-neo-tree/neo-tree.nvim";
  };

  neoconf-nvim = vimUtils.buildVimPlugin {
    pname = "neoconf.nvim";
    version = "2024-07-27";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "neoconf.nvim";
      rev = "fa73db350690ede9ed0dab1a3d803d7d0406aa0e";
      hash = "sha256-gO80lOuBVtHZpt2gHKZAXsbJt1TrcAgmq2vAO/1PR1I=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/neoconf.nvim";
  };

  neodev-nvim = vimUtils.buildVimPlugin {
    pname = "neodev.nvim";
    version = "2024-03-29";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "ce9a2e8eaba5649b553529c5498acb43a6c317cd";
      hash = "sha256-mAJOMVN7/xO7ykVNAeTeX+z2A/7yB8zdqlEKHL6Pb74=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/neodev.nvim";
  };

  neogit = vimUtils.buildVimPlugin {
    pname = "neogit";
    version = "2024-07-23";

    src = fetchFromGitHub {
      owner = "NeogitOrg";
      repo = "neogit";
      rev = "2b74a777b963dfdeeabfabf84d5ba611666adab4";
      hash = "sha256-K9KbLRrEPfKGSbLl/dMoUcILsMmpv3kyCALmgX7if80=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/NeogitOrg/neogit";
  };

  noice-nvim = vimUtils.buildVimPlugin {
    pname = "noice.nvim";
    version = "2024-03-26";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "0cbe3f88d038320bdbda3c4c5c95f43a13c3aa12";
      hash = "sha256-y6gHNkWVsIuwBf7MblCTKTZSqjGDxqeFeQZWexzwk94=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/noice.nvim";
  };

  none-ls-nvim = vimUtils.buildVimPlugin {
    pname = "none-ls.nvim";
    version = "2024-07-26";

    src = fetchFromGitHub {
      owner = "nvimtools";
      repo = "none-ls.nvim";
      rev = "a8594ef3dabb484adabc0ebbf5800be1b807c9e7";
      hash = "sha256-qmai4Rsy4dtAePnqyovt329C0YAUjIY1j+mUgt/xaj8=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvimtools/none-ls.nvim";
  };

  nui-nvim = vimUtils.buildVimPlugin {
    pname = "nui.nvim";
    version = "2024-03-18";

    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "cbd2668414331c10039278f558630ed19b93e69b";
      hash = "sha256-Zr5CNx6BIM6naCXW8YBc/Oj1qOtWV/3tuMoaaZjoSZA=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/MunifTanjim/nui.nvim";
  };

  nvim-autopairs = vimUtils.buildVimPlugin {
    pname = "nvim-autopairs";
    version = "2024-07-21";

    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "e38c5d837e755ce186ae51d2c48e1b387c4425c6";
      hash = "sha256-2+r2SkCtLqKn6CxbEjvUEpsPL5G9KNOf7Q9lGMsolZs=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/windwp/nvim-autopairs";
  };

  nvim-cmp = vimUtils.buildVimPlugin {
    pname = "nvim-cmp";
    version = "2024-07-16";

    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "d818fd0624205b34e14888358037fb6f5dc51234";
      hash = "sha256-jc4fQBaAuL4XhHljVU3sdaEyQCnHbI+gwNOTnGHk0qM=";
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
    version = "2024-07-26";

    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "f95d371c1a274f60392edfd8ea5121b42dca736e";
      hash = "sha256-kBxo5oHCyPLrQaPJBoOPVhw47mA3RInnO49nvEnQI0E=";
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
    version = "2024-02-17";

    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-notify";
      rev = "5371f4bfc1f6d3adf4fe9d62cd3a9d44356bfd15";
      hash = "sha256-xJYPOX4YLcWojMCdP1RO22/7FMrbcBQxqxrcVCE2TrU=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/rcarriga/nvim-notify";
  };

  nvim-nu = vimUtils.buildVimPlugin {
    pname = "nvim-nu";
    version = "2024-04-21";

    src = fetchFromGitHub {
      owner = "LhKipp";
      repo = "nvim-nu";
      rev = "64e1677db3319ec5900afa666a2c85c31adc0705";
      hash = "sha256-nZ+NsBVrmvMhCF3FSliiGERDBnZfC6agdvVE9YWf7TE=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/LhKipp/nvim-nu";
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
    version = "2024-04-15";

    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter-textobjects";
      rev = "23b820146956b3b681c19e10d3a8bc0cbd9a1d4c";
      hash = "sha256-mndgAlmvzKZOjd3Z6wZb0ectvcOlYkatTADq8pdNfcs=";
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
    version = "2024-04-21";

    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "beb6367ab8496c9e43f22e0252735fdadae1872d";
      hash = "sha256-AW2W6H7OTv52hfZCcYQc5UjFArBWKLeVclrwMt13HOM=";
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
    version = "2024-06-28";

    src = fetchFromGitHub {
      owner = "pwntester";
      repo = "octo.nvim";
      rev = "aa5dfa573220a0a511a25ee14ce1570b6c23e56a";
      hash = "sha256-nbCoDR+GJaELei+Bv+SxIlQ+ABwjWH4gDr7BmFViwp4=";
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
    version = "2024-04-22";

    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "5129a3693c482fcbc5ab99a7706ffc4360b995a0";
      hash = "sha256-orGs1npIGIk7MUYadatYrcEXygK7JTj6OqQwy2TLDn0=";
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
    version = "2024-04-18";

    src = fetchFromGitHub {
      owner = "HiPhish";
      repo = "rainbow-delimiters.nvim";
      rev = "7ef0766b5cd2f5cdf4fcb08886f0a2ebf65981fa";
      hash = "sha256-7ZAZm/BqvpkIJLQ24MbiFvgImv7t8UrdYXxRlDCa2mA=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/HiPhish/rainbow-delimiters.nvim";
  };

  rustaceanvim = vimUtils.buildVimPlugin {
    pname = "rustaceanvim";
    version = "2024-04-22";

    src = fetchFromGitHub {
      owner = "mrcjkb";
      repo = "rustaceanvim";
      rev = "f7dbec708ad07a85abf0543e58fa2ec99cea7f95";
      hash = "sha256-ctECmikTGj7BO+eyQvw7kyx/MtAwMRhmN4W+rJKo1A0=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/mrcjkb/rustaceanvim";
  };

  scope-nvim = vimUtils.buildVimPlugin {
    pname = "scope.nvim";
    version = "2024-03-31";

    src = fetchFromGitHub {
      owner = "tiagovla";
      repo = "scope.nvim";
      rev = "86a0f5b594b08b2ad65f470ffdee81654942b6ac";
      hash = "sha256-8Bd1DI6nuUxkTCx0wCfWKHdi6UXQNuDygj5UuSGypLs=";
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
    version = "2024-06-16";

    src = fetchFromGitHub {
      owner = "jonarrien";
      repo = "telescope-cmdline.nvim";
      rev = "1c6a169d84a5e8f0c796f8275bdbb8019bd3ca14";
      hash = "sha256-WIpscQW+SfCHjcvLSf6N2FzxgptaU3fojFVmxZB8PVY=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/jonarrien/telescope-cmdline.nvim";
  };

  telescope-file-browser-nvim = vimUtils.buildVimPlugin {
    pname = "telescope-file-browser.nvim";
    version = "2024-07-21";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-file-browser.nvim";
      rev = "8574946bf6d0d820d7f600f3db808f5900a2ae23";
      hash = "sha256-bPsKJ1xHGlYGdVTOYR851cOraUCHjpsIZ6g9FZjWspA=";
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
    version = "2024-06-08";

    src = fetchFromGitHub {
      owner = "benfowler";
      repo = "telescope-luasnip.nvim";
      rev = "11668478677de360dea45cf2b090d34f21b8ae07";
      hash = "sha256-jzLzucF2rAa3nkHE5n4g2StkSUjMOMK93JCH/g09DQY=";
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
    version = "2024-02-27";

    src = fetchFromGitHub {
      owner = "LukasPietzschmann";
      repo = "telescope-tabs";
      rev = "0a678eefcb71ebe5cb0876aa71dd2e2583d27fd3";
      hash = "sha256-IvxZVHPtApnzUXIQzklT2C2kAxgtAkBUq3GNxwgPdPY=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/LukasPietzschmann/telescope-tabs";
  };

  telescope-nvim = vimUtils.buildVimPlugin {
    pname = "telescope.nvim";
    version = "2024-04-21";

    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "7d1698f3d88b448e0639974248cc17f49b7b8acf";
      hash = "sha256-wlRiwT1TCtwPXnIwnzqa6ZABUzJYn+lSRyvkqe6Dbsw=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/nvim-telescope/telescope.nvim";
  };

  todo-comments-nvim = vimUtils.buildVimPlugin {
    pname = "todo-comments.nvim";
    version = "2024-07-22";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "todo-comments.nvim";
      rev = "8f45f353dc3649cb9b44cecda96827ea88128584";
      hash = "sha256-pzUFoFaBrhKxO5jCmqaYaEnkyM/b9xer32yM7qpV2Tg=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/todo-comments.nvim";
  };

  toggleterm-nvim = vimUtils.buildVimPlugin {
    pname = "toggleterm.nvim";
    version = "2024-07-17";

    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "toggleterm.nvim";
      rev = "8ed0f52006d3207ec6c94de7db62da840937ef2a";
      hash = "sha256-G+sU7e9EyASEYzdIfBRI2BF5R2upFfOFClU6ERlfp3A=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/akinsho/toggleterm.nvim";
  };

  tokyonight-nvim = vimUtils.buildVimPlugin {
    pname = "tokyonight.nvim";
    version = "2024-07-24";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "tokyonight.nvim";
      rev = "b0e7c7382a7e8f6456f2a95655983993ffda745e";
      hash = "sha256-Fxakkz4+BTbvDLjRggZUVVhVEbg1b/MuuIC1rGrCwVA=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/tokyonight.nvim";
  };

  trouble-nvim = vimUtils.buildVimPlugin {
    pname = "trouble.nvim";
    version = "2024-07-22";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "6efc446226679fda0547c0fd6a7892fd5f5b15d8";
      hash = "sha256-db/riM3Kq+QgGUqRxJHA4HYXJE31276hrUrDj4UhC2g=";
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
    version = "2024-02-04";

    src = fetchFromGitHub {
      owner = "RRethy";
      repo = "vim-illuminate";
      rev = "305bf07b919ac526deb5193280379e2f8b599926";
      hash = "sha256-KNIu4cNyZddZSRS8KZ0U0T8uSSLJu8iqNLQN8e+Bv94=";
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
    version = "2024-07-24";

    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "6c1584eb76b55629702716995cca4ae2798a9cca";
      hash = "sha256-nv9s4/ax2BoL9IQdk42uN7mxIVFYiTK+1FVvWDKRnGM=";
    };

    dontBuild = true;

    meta.homepage = "https://github.com/folke/which-key.nvim";
  };

  yanky-nvim = vimUtils.buildVimPlugin {
    pname = "yanky.nvim";
    version = "2024-06-10";

    src = fetchFromGitHub {
      owner = "gbprod";
      repo = "yanky.nvim";
      rev = "73215b77d22ebb179cef98e7e1235825431d10e4";
      hash = "sha256-QB5VWIt80ANC1vAyDd3smbR0Sh+x7upEqDxqbcXJDQ8=";
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
