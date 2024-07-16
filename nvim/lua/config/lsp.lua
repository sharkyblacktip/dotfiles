-- setup mason and lspconfig for language servers
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"html"
	}
})
require("lspconfig").lua_ls.setup({})

-- setup autocomplete with the language servers
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['lua_ls'].setup {capabilities = capabilities}
require('lspconfig')['html'].setup {capabilities = capabilities}
