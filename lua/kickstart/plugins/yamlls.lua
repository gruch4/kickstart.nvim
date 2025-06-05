vim.lsp.enable 'yamlls'
vim.lsp.config('yamlls', {})
-- require('neovim/nvim-lspconfig').yamlls.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   settings = {
--     yaml = {
--       schemas = {
--         ['https://raw.githubusercontent.com/SchemaStore/schemastore/master/src/schemas/json/prettier.json'] = 'package.json',
--         ['https://raw.githubusercontent.com/SchemaStore/schemastore/master/src/schemas/json/eslint.json'] = 'eslint.config.js',
--         ['https://raw.githubusercontent.com/SchemaStore/schemastore/master/src/schemas/json/stylelint.json'] = 'stylelint.config.js',
--       },
--     },
--   },
-- }
