-- setup mason and lspconfig for language servers
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"html",
		"rust_analyzer",
		"cssls",
		"css_variables",
		"pylsp"
	}
})
require("lspconfig").lua_ls.setup({})

-- setup autocomplete with the language servers
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['lua_ls'].setup {capabilities = capabilities}
require('lspconfig')['html'].setup {capabilities = capabilities}
require('lspconfig')['rust_analyzer'].setup {capabilities = capabilities}
require('lspconfig')['cssls'].setup {capabilities = capabilities}
require('lspconfig')['css_variables'].setup {capabilities = capabilities}
require('lspconfig')['pylsp'].setup {capabilities = capabilities}
