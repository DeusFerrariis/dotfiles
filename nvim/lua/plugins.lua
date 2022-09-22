return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	-- lsp manager
	use 'williamboman/mason.nvim'    
    	use 'williamboman/mason-lspconfig.nvim'
	use 'simrat39/rust-tools.nvim'

	-- themes
	use 'sainnhe/gruvbox-material'

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

	-- tab completion
	use 'L3MON4D3/LuaSnip'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/vim-vsnip'    

	-- status line
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- transparent
	use 'xiyaowong/nvim-transparent'

	-- file explorer
	use {
	  'kyazdani42/nvim-tree.lua',
	  requires = {
		'kyazdani42/nvim-web-devicons', -- optional, for file icons
	  },
	}

	-- project management
	use "oberblastmeister/neuron.nvim"
end)
