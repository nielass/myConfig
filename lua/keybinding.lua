-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

local opt = {
  noremap = true,
  silent = true,
}

-- local var
local map = vim.api.nvim_set_keymap

-- swtich $ and g_
map("v", "$", "g_", opt)
map("v", "g_", "$", opt)
map("n", "$", "g_", opt)
map("n", "g_", "$", opt)

-- command line
map("c", "<C-j>", "<C-n>", { noremap = false })
map("c", "<C-k>", "<C-p>", { noremap = false })

-- quick save
map("n", "<leader>qq", ":bdelete!<CR>", opt)
map("n", "<leader>qa", ":qa!<CR>", opt)
map("n", "<leader>ww", ":wa<CR>", opt)

-- buffer jump
-- more see bufferine
map("n", "<F1>", ":wa<CR>:b#<CR>", opt)
map("n", "<F2>", ":wa<CR>:bp<CR>", opt)
map("n", "<F3>", ":wa<CR>:bn<CR>", opt)
map("n", "<F4>", ":wa<CR>", opt)

map("i", "<F1>", "<ESC><F1>", {})
map("i", "<F2>", "<ESC><F2>", {})
map("i", "<F3>", "<ESC><F2>", {})
map("i", "<F4>", "<ESC><F2>", {})

map("v", "<F1>", "<ESC><F1>", {})
map("v", "<F2>", "<ESC><F2>", {})
map("v", "<F3>", "<ESC><F2>", {})
map("v", "<F4>", "<ESC><F2>", {})

-- fix :set wrap
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- fix :set wrap
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- magic search
-- map("n", "/", "/\\v", { noremap = true, silent = false })
-- map("v", "/", "/\\v", { noremap = true, silent = false })

------------------------------------------------------------------
-- windows split 
------------------------------------------------------------------
map("n", "<leader>sv", ":vsp<CR>", opt)
map("n", "<leader>sh", ":sp<CR>", opt)

-- close current win
map("n", "<leader>sc", "<C-w>c", opt)
-- close all other win
map("n", "<leader>so", "<C-w>o", opt) -- close others

-- move
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- size control
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)
map("n", "<leader>s=", "<C-w>=", opt)

-- open terminal
map("n", "<leader>st", ":sp | terminal<CR>", opt)
map("n", "<leader>vst", ":vsp | terminal<CR>", opt)

map("t", "<Esc>", "<C-\\><C-n>", opt)
map("t", "<A-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<A-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<A-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<A-l>", [[ <C-\><C-N><C-w>l ]], opt)
map("t", "<leader>h", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<leader>j", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<leader>k", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<leader>l", [[ <C-\><C-N><C-w>l ]], opt)

--------------------------------------------------------------------
-- keybinding for plugins
--------------------------------------------------------------------
local pluginKeys = {}

-- treesitter
-- see config file

-- nvim-tree
map("n", "<F9>", ":NvimTreeToggle<CR>", opt)
pluginKeys.nvimTreeList = {
  { key = { "o", "<2-LeftMouse>" }, action = "edit" },
  { key = "<CR>", action = "system_open" },
  { key = "v", action = "vsplit" },
  { key = "h", action = "split" },
  { key = "i", action = "toggle_ignored" },
  { key = ".", action = "toggle_dotfiles" },
  { key = "R", action = "refresh" },
  { key = "a", action = "create" },
  { key = "d", action = "remove" },
  { key = "r", action = "rename" },
  { key = "x", action = "cut" },
  { key = "c", action = "copy" },
  { key = "p", action = "paste" },
  { key = "y", action = "copy_name" },
  { key = "Y", action = "copy_path" },
  { key = "gy", action = "copy_absolute_path" },
  { key = "I", action = "toggle_file_info" },
  { key = "n", action = "tabnew" },
  { key = { "]" }, action = "cd" },
  { key = { "[" }, action = "dir_up" },
}

-- bufferline
-- close current buffer
map("n", "<leader>bd", ":bdelete!<CR>", opt)
-- close all left/right buffers
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bo", ":BufferLineCloseRight<CR>:BufferLineCloseLeft<CR>", opt)

-- Telescope
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)

pluginKeys.telescopeList = {
  i = {
    -- move
    ["<C-j>"] = "move_selection_next",
    ["<C-k>"] = "move_selection_previous",
    ["<C-n>"] = "move_selection_next",
    ["<C-p>"] = "move_selection_previous",
    -- hist move
    ["<Down>"] = "cycle_history_next",
    ["<Up>"] = "cycle_history_prev",
    -- preview move 
    ["<C-u>"] = "preview_scrolling_up",
    ["<C-d>"] = "preview_scrolling_down",

    ["<C-c>"] = "close",

  },
}

-- lsp

pluginKeys.lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}


pluginKeys.on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', '<leader>f', vim.lsp.buf.formatting, bufopts)

  vim.keymap.set('n', 'ge', vim.diagnostic.open_float, opt)
  vim.keymap.set('n', 'gk', vim.diagnostic.goto_prev, opt)
  vim.keymap.set('n', 'gj', vim.diagnostic.goto_next, opt)
end

-- cmp

pluginKeys.cmp = function(cmp)
  return {
    ['<S-TAB>'] = cmp.mapping.select_prev_item(),
    ['<TAB>'] = cmp.mapping.select_next_item(),

    -- complete
    ['<TAB'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- cancel
    ['<A-,>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({
      select = true ,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    -- ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    -- ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  }
end

return pluginKeys

