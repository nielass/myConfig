
-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"

-- jkhl rolling offset
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- line number and sign
vim.wo.number = true
vim.wo.relativenumber = false
vim.wo.signcolumn = "yes"

-- hl line
vim.wo.cursorline = false


-- rightside reference line
vim.wo.colorcolumn = "80"

-- indent
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true

vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- << >> behavior
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2

-- space and tab
vim.o.expandtab = true
vim.bo.expandtab = true

-- search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.hlsearch = true

vim.o.incsearch = true

-- command line size
vim.o.cmdheight = 1

-- auto load
vim.o.autoread = true
vim.bo.autoread = true

-- wrap
vim.wo.wrap = false
vim.o.whichwrap = "<,>,[,]"

-- buffer hidden
vim.o.hidden = true

-- mouse
vim.o.mouse = "a"

-- backup file 
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- smaller updatetime
vim.o.updatetime = 300

-- timeout 
vim.o.timeoutlen = 500

-- split window
vim.o.splitbelow = true
vim.o.splitright = true

-- autocomplete
vim.g.completeopt = "menu,menuone,noselect,noinsert"

--theme
vim.o.termguicolors = true
vim.opt.termguicolors = true

vim.o.list = false
vim.o.listchars = "space:·,tab:··"

-- wildmenu
vim.o.wildmenu = true
vim.o.pumheight = 8

-- Dont' pass messages to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. "c"

-- tabline
vim.o.showtabline = 2

-- show mode
vim.o.showmode = false

-- clipboard
vim.opt.clipboard = "unnamedplus"

