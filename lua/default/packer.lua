-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- use{"folke/tokyonight.nvim"}
  use{"ellisonleao/gruvbox.nvim"}

  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end,}

  use('nvim-treesitter/playground')
  use('preservim/tagbar')
  use('liuchengxu/vim-which-key')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('tpope/vim-commentary')
  use('romgrk/barbar.nvim')
  use('nvim-tree/nvim-web-devicons') -- barbar dependency OPTIONAL: for file icons
  use('lewis6991/gitsigns.nvim') -- barbar dependency OPTIONAL: for git status
  use('github/copilot.vim')
  use('catppuccin/nvim')
  use('ggandor/leap.nvim') --godsend
  use('folke/tokyonight.nvim')
  use('d00h/nvim-rusticated')

  use {'wookayin/semshi', config = 'vim.cmd [[UpdateRemotePlugins]]'}

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},
          -- Language servers
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'saadparwaiz1/cmp_luasnip'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-nvim-lua'},

          -- Snippets
          {'L3MON4D3/LuaSnip'},
          {'rafamadriz/friendly-snippets'},
      }
  }


end)
