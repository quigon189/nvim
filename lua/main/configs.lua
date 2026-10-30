local opt = vim.opt
local cmd = vim.cmd
local exec = vim.api.nvim_exec

cmd.colorscheme 'midnight'

opt.number = true
-- opt.relativenumber = true
opt.shell = "/bin/zsh"

opt.mouse = "a"
opt.mousefocus = true

opt.encoding = 'utf-8'
opt.cursorline = true
opt.fillchars='eob: '

opt.tabstop = 4
opt.shiftwidth = 4
cmd [[
autocmd FileType xml,html,xhtml,css,scss,javasript,lua,yaml,htmljinja setlocal shiftwidth=2 tabstop=2
]]

opt.smartindent = true

opt.so = 5

-- Подсветка при коопировании
exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.higlight.on_yank{higroup="IncSearch", timeout=500}
augroup end
]], false)

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "go",
--   callback = function()
--     vim.treesitter.start()
--   end,
-- })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "templ",
  callback = function()
    vim.treesitter.start()
  end,
})


vim.filetype.add({
  extension = {
    templ = "templ",
  }
})
