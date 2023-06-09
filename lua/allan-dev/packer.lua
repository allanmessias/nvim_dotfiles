	vim.cmd [[packadd packer.nvim]]

	return require('packer').startup(function(use)
		use 'wbthomason/packer.nvim'

		use {
			'nvim-telescope/telescope.nvim', tag = '0.1.0', 
			--or                             , branch = '0.1.x',
			requires = {{'nvim-lua/plenary.nvim'}}
		}

		use "EdenEast/nightfox.nvim"
		use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
		use ('nvim-treesitter/playground')
		use ('theprimeagen/harpoon')
		use ('mbbill/undotree')
		use('tpope/vim-fugitive')
		use {
			'VonHeikemen/lsp-zero.nvim',
			branch = 'v2.x',
			requires = {
				{'neovim/nvim-lspconfig'},
				{
					'williamboman/mason.nvim',
					run = function()
						pcall(vim.cmd, 'MasonUpdate')
					end,
				},
				{'williamboman/mason-lspconfig.nvim'},
				{'hrsh7th/nvim-cmp'},
				{'hrsh7th/cmp-nvim-lsp'},
				{'L3MON4D3/LuaSnip'}
			}

		}


	end)


