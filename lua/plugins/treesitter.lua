return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua", "go", "python", "sql", "bash", "vim", "vimdoc", "query", "markdown",
				"markdown_inline", "html", "css", "javascript", "templ"
			},               -- Добавьте нужные вам языки
			highlight = {
				enable = true, -- Включает Treesitter подсветку
			},
		})
	end,
}

-- local treesitter = require("nvim-treesitter")
--
-- treesitter.setup({
-- 	ensure_installed = {
-- 		"lua", "vim", "vimdoc", "query", "markdown",
-- 		"markdown_inline", "python", "go", "html", "css", "javascript", "templ",
-- 		"sql"
-- 	},
-- 	sync_install = false,
-- 	highlight = {
-- 		enable = true,
-- 	},
-- })
