-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }	  
  }

  use({ 
	'Mofiqul/dracula.nvim', 
	as = 'dracula',
	config = function()
		vim.cmd('colorscheme dracula')
	end
  })

  
 
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('thePrimeagen/harpoon')

  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
	  },
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
  }
}
use('ray-x/go.nvim')
use('ray-x/guihua.lua') -- recommended if need floating window support
use('neovim/nvim-lspconfig')
use {
  'dinhhuy258/git.nvim'
}
use('github/copilot.vim')
-- These optional plugins should be loaded directly because of a bug in Packer lazy loading
use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
use 'romgrk/barbar.nvim'
use 'NvChad/base46'
use 'nvim-tree/nvim-tree.lua'
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}

-- Lua
use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
  }

end)
