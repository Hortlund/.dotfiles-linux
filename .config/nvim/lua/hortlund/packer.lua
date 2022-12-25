return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	--use 'folke/tokyonight.nvim'
	use { "catppuccin/nvim", as = "catppuccin" }
    use 'sheerun/vim-polyglot'
--    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
--    use 'williamboman/nvim-lsp-installer'
  --  use 'hrsh7th/cmp-nvim-lsp'
   -- use 'hrsh7th/nvim-cmp'
    --use 'hrsh7th/cmp-buffer'
    --use 'hrsh7th/cmp-path'
    --use 'L3MON4D3/LuaSnip'
    --use 'saadparwaiz1/cmp_luasnip'
    --use "rafamadriz/friendly-snippets"
    use 'simrat39/rust-tools.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/nvim-treesitter-context'
    use 'ThePrimeagen/vim-be-good'
    use 'ThePrimeagen/harpoon'
	use 'junegunn/fzf.vim'
	use 'junegunn/fzf'
    use 'bscan/PerlNavigator'
    use {
  		'nvim-telescope/telescope.nvim',
  		requires = { {'nvim-lua/plenary.nvim'}, {'nvim-treesitter/nvim-treesitter'} }
	}
	use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons'}
	}
	use {
		'zivyangll/git-blame.vim'
	}
    use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
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

