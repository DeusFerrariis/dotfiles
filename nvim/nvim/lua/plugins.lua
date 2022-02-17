return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	-- themes
	use 'projekt0n/github-nvim-theme'
	use 'glepnir/zephyr-nvim'

	-- treesitter/lsp
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
    	}

	-- telescope
	use {
		'nvim-telescope/telescope.nvim',
	  	requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- barbar
	use {
		'romgrk/barbar.nvim',
		requires = {'kyazdani42/nvim-web-devicons'}
	}

	-- Tab Completion
	use 'L3MON4D3/LuaSnip'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'saadparwaiz1/cmp_luasnip'
end)
