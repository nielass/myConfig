return {
  on_setup = function(server)
    server.setup({
      -- cmd = { "pyright-langserver", "--stdio", "-p", "./.pyright.json" },
      flags = {
        debounce_text_changes = 150,
      },
      on_attach = require('keybinding').on_attach,
      python = {
        analysis = {
          typeCheckingMode= "off",
        },
      },
    })
  end,
}
