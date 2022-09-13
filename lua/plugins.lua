return require('packer').startup(function(use)
  ---------------------------------------
  conf = {
        profile = {
          enable = true,
          threshold = 0, -- the amount in ms that a plugins load time must be over for it to be included in the profile
        },
    }

  local packer = require "packer"
  packer.init(conf)
  ---------------------------------------

  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}

  use {'stevearc/dressing.nvim'}

  use {'kdheepak/lazygit.nvim',}

  use {'tpope/vim-commentary'}

  use {'danilamihailov/beacon.nvim'}

  use {'jiangmiao/auto-pairs'}

  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {'nvim-treesitter/nvim-treesitter-textobjects'}
  use {'lewis6991/nvim-treesitter-context'}
  use {'nvim-treesitter/playground'}
  use {'p00f/nvim-ts-rainbow'}

  -- LSP
  use {'neovim/nvim-lspconfig'}
  use {'simrat39/rust-tools.nvim'}

  -- Autocompletion plugin(s)
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-nvim-lsp-signature-help'}

  -- Lua snip
  use { "L3MON4D3/LuaSnip", run = "make install_jsregexp" }
  use {'saadparwaiz1/cmp_luasnip'}

  -- Color Scheme
  use {'folke/tokyonight.nvim'}
  
  -- Debugger plugins
  use {'mfussenegger/nvim-dap-python'}
  use {'mfussenegger/nvim-dap'}
  use {'rcarriga/nvim-dap-ui'}
  use {'theHamsta/nvim-dap-virtual-text'}
  use {'nvim-telescope/telescope-dap.nvim'}
  use {'nvim-telescope/telescope-ui-select.nvim'}

  -- Awesome pop-up for key commands
  use {'folke/which-key.nvim'}

  -- VS-Code Pictograms
  use {'onsails/lspkind.nvim'}

  -- File Icons
  use {'kyazdani42/nvim-web-devicons'}

  -- Internet in vim?
  use {
      "nvim-telescope/telescope-arecibo.nvim",
      rocks = {"openssl", "lua-http-parser"}
    }

  -- Better terminal
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}
  ---------------------------------------

end)
