vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Автоустановка Packer'а
	use 'wbthomason/packer.nvim'

	-- ВНЕШНИЙ ВИД
	-- Информационная строка
	use "nvim-tree/nvim-web-devicons"
	use { 'nvim-lualine/lualine.nvim',
	    requires = {'nvim-tree/nvim-web-devicons', opt = true},
			config = function()
				require('lualine').setup()
			end, 
		}
  use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine-moon')
		end
	})

	-- МОДУЛИ РЕДАКТОРА
	-- Табы с кладками
	use {'akinsho/bufferline.nvim',
	    requires = 'nvim-tree/nvim-web-devicons',
			config = function()
				require("bufferline").setup {}
			end,
		}

  -- Файловй менеджер
	use { 'nvim-tree/nvim-tree.lua',
	    requires = 'nvim-tree/nvim-web-devicons',
			config = function()
				require 'nvim-tree'.setup {}
			end,
		}

	-- popup windows
	use 'nvim-lua/popup.nvim'

	-- CODE
	-- автоматические закрывающиеся скобки
	use { 'windwp/nvim-autopairs',
	config = function()
		require("nvim-autopairs").setup()
	end }

	-- Коментарии для всех языков по нажатию gc
	use { 'numToStr/Comment.nvim',
	config = function()
		require('Comment').setup()
	end }

	-- LSP
	-- Конфигурации LSP клиента
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'

	-- Автодополнение
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'saadparwaiz1/cmp_luasnip'

	-- Для файлов
	use 'hrsh7th/cmp-path'

	-- Snippets
	use 'L3MON4D3/LuaSnip'

	-- Treesitter
	use 'nvim-treesitter/nvim-treesitter'

	-- Линтер
	use 'dense-analysis/ale'

	-- Команды работают и на русской расскладке
	use 'powerman/vim-plugin-ruscmd'

	-- Автоформатирование
	use 'Chiel92/vim-autoformat'

	-- Переводчик
	use 'skanehira/translate.vim'
end)
