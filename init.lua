
-- basic setting for vim
require("basic")

-- setting for all keybindings and shortcut
require("keybinding")

-- manage all plugins
require("plugin")

-- manage scheme and theme
require("colorscheme")

-- plugin configuration
require("plugin_config/nvim_tree")
require("plugin_config/bufferline")
require("plugin_config/lualine")
require("plugin_config/nvim_treesitter")
require("plugin_config/telescope")

-- lsp config
-- the order of require() here is matter
require("lsp/mason")
require("lsp/mason_config")
require("lsp/setup")

-- cmp snippet
require("nvim_cmp")
