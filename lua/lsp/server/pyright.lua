return {
  on_setup = function(server)
    server.setup({
      flags = {
        debounce_text_changes = 150,
      },
      on_attach = require('keybinding').on_attach,
    })
  end,
}
