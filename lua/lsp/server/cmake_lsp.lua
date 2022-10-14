return {
  on_setup = function(server)
    server.setup({
      flags = require('keybinding').lsp_flags,
      on_attach = require('keybinding').on_attach,
    })
  end,
}
