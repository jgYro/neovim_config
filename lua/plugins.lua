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

  use {
      'kdheepak/lazygit.nvim',
      cmd = 'Lazygit'
  }

  use {'tpope/vim-commentary'}

  use {'danilamihailov/beacon.nvim'}

  use {'jiangmiao/auto-pairs'}

  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'lewis6991/nvim-treesitter-context'
  use 'nvim-treesitter/playground'
  use 'p00f/nvim-ts-rainbow'
  
  ---------------------------------------

end)
