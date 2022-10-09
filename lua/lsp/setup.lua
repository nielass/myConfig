local lspconfig = require('lspconfig')

local servers = {
  pyright = require('lsp/server/pyright'),
  clangd = require('lsp/server/clangd'),
  sumneko_lua = require('lsp/server/lua'),
}

for name, config in pairs(servers) do
  if config ~= nil and type(config) == "table" then
    config.on_setup(lspconfig[name])
  else
    lspconfig[name].setup({})
  end
end

