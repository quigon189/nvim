return {
  "neovim/nvim-lspconfig",
  dependencies = { "williamboman/mason-lspconfig.nvim" },
  config = function()
    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")

    mason_lspconfig.setup_handlers({
      -- Дефолтный обработчик для всех серверов
      function(server_name)
        lspconfig[server_name].setup({
          -- Здесь можно передать общие capabilities, если используете автодополнение (например, nvim-cmp)
        })
      end,

      -- Пример индивидуальной настройки для конкретного сервера (если потребуется)
      -- ["lua_ls"] = function()
      --   lspconfig.lua_ls.setup({
      --     settings = { Lua = { diagnostics = { globals = { "vim" } } } }
      --   })
      -- end,
    })
  end,
}



-- local lspconfig = require('lspconfig')
--
--
-- local util = require('lspconfig/util')
--
-- local function config(_config)
--   return vim.tbl_deep_extend('force', {
--     capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
--   }, _config or {})
-- end
--
-- -- vim.lsp.config.gopls.setup(config({
-- --   on_attach = on_attach,
-- --   cmd = { 'gopls', 'serve' },
-- --   filetypes = { 'go', 'go.mod' },
-- --   root_dir = util.root_pattern('go.work', 'go.mod', '.git'),
-- --   settings = {
-- --     gopls = {
-- --       analyses = {
-- --         unusedparams = true,
-- --         shadow = true,
-- --       },
-- --      staticcheck = true,
-- --     }
-- --   }
-- -- }))
