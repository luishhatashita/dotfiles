-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Colorschemes:
  -- For catppuccin:
  use { 
      "catppuccin/nvim", 
      as = "catppuccin",
      config = function()
    	  vim.cmd('colorscheme catppuccin-mocha')
      end
  }

  -- For rose-pine
  --use { 
  --    "rose-pine/nvim", 
  --    as = "rose-pine",
  --    config = function()
  --  	  vim.cmd('colorscheme rose-pine')
  --    end
  --}

  use { 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} }
  use { 'nvim-treesitter/playground' }
  use { 'theprimeagen/harpoon' }
  use { 'mbbill/undotree' }
  use { 'tpope/vim-fugitive' }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	  }
  }

  use { 'mfussenegger/nvim-dap' }

  use { 'theprimeagen/vim-be-good' }

end)
