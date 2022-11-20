require('user.basics')
require('user.colors')
require('user.telescope-config')
require('user.lsp')
require('user.nvim-tree')
require('user.comment')
require('user.lsp_lines')
require('user.pretty_fold')
require('user.treesitter')

-- Not installed
-- require('coc-config')
-- require('user.lualine')

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  -- lsp
  -- use {'neoclide/coc.nvim', branch = 'release'}
  use 'neovim/nvim-lspconfig' --enable lsp
  use 'williamboman/nvim-lsp-installer'
  -- copilot
  use 'github/copilot.vim'
  use 'folke/tokyonight.nvim'
  use 'nvim-treesitter/nvim-treesitter' 
  -- commenting
  use 'numToStr/Comment.nvim'

  use 'joosepalviste/nvim-ts-context-commentstring'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    }
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    "ur4ltz/surround.nvim",
    config = function()
      require("surround").setup {mappings_style = "surround"}
    end
  }
  use {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
    end,
  }
  use 'anuvyklack/pretty-fold.nvim'


end)
