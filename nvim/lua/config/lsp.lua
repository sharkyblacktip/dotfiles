-- setup mason and lspconfig for language servers
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"html",
		"rust_analyzer",
		"cssls",
		"css_variables",
		"pylsp",
		"clangd",
		"eslint"
	}
})
require("lspconfig").lua_ls.setup({})

-- setup autocomplete with the language servers
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')
lspconfig['lua_ls'].setup {capabilities = capabilities}
lspconfig['html'].setup {capabilities = capabilities}
lspconfig['rust_analyzer'].setup {capabilities = capabilities}
lspconfig['cssls'].setup {capabilities = capabilities}
lspconfig['css_variables'].setup {capabilities = capabilities}
lspconfig['pylsp'].setup {capabilities = capabilities}
lspconfig['clangd'].setup {capabilities = capabilities}
lspconfig['eslint'].setup {}

