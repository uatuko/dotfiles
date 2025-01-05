return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'phha/zenburn.nvim',
		config = function()
			require('zenburn').setup()
		end
	}

	use {
		'nvim-tree/nvim-tree.lua',
		config = function()
			require('nvim-tree').setup {
				renderer = {
					icons = {
						git_placement = 'signcolumn',
					},
				},
				view = {
					float = {
						enable = true,
					},
					signcolumn = 'auto',
				},
			}

			vim.keymap.set('n', '<F5>', ':NvimTreeFindFileToggle<CR>')
		end,
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
	}

	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}

	use {
		'akinsho/bufferline.nvim',
		config = function()
			vim.opt.termguicolors = true
			require('bufferline').setup()
		end,
		requires = 'kyazdani42/nvim-web-devicons',
		tag = "v3.*"
	}

	use {
		'nvim-lualine/lualine.nvim',
		config = function()
			require('lualine').setup {
				options = { theme = 'material' }
			}
		end,
		requires = {
			'kyazdani42/nvim-web-devicons',
			opt = true,
		}
	}

	use {
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		config = function()
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', 'ff', builtin.find_files, {})
			vim.keymap.set('n', 'fg', builtin.live_grep, {})
			vim.keymap.set('n', 'fb', builtin.buffers, {})
			vim.keymap.set('n', 'fh', builtin.help_tags, {})
		end,
		requires = 'nvim-lua/plenary.nvim'
	}
end)
