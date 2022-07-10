local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

vim.g.mapleader = " "
vim.o.number  =true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.expandtab = true
vim.o.incsearch = true
vim.o.tabstop = 2
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 3
vim.o.errorbells = false
vim.o.shiftwidth = 2
vim.o.numberwidth = 4
vim.o.termguicolors = true
vim.o.colorcolumn = '80'
vim.o.showmode = false
vim.o.showtabline = 2
vim.o.signcolumn = 'yes'
vim.o.mouse = 'a'

keymap('n', 'vs', ':vs<CR>', { noremap = true })
keymap('n', 'sp', ':sp<CR>', { noremap = true })
keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true })
keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true })
keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true })
keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true })
keymap('n', 'tn', ':tabnew<CR>', { noremap = true })
keymap('n', 'tk', ':tabnext<CR>', { noremap = true })
keymap('n', 'tj', ':tabprev<CR>', { noremap = true })
keymap('n', 'to', ':tabo<CR>', { noremap = true })
keymap('n', '<C-S>', ':%s/', { noremap = true })
keymap('n', '<C-N>', ":NvimTreeToggle<CR> :vertical resize 30<CR>", { noremap = true })
-- keymap('n', '<C-N>', ":Lexplore<CR> :vertical resize 30<CR>", { noremap = true })
keymap("n", "<leader>t", ":sp<CR> :term<CR> :resize 20N<CR> i", {noremap = true, silent = true})
keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true, silent = true})

-- Better escape using jk in insert and terminal mode
keymap("i", "jk", "<ESC>", default_opts)
keymap("t", "jk", "<C-\\><C-n>", default_opts)

-- vim.g["netrw_banner"] = 0
-- vim.g["netrw_liststyle"] = 3
-- vim.g["netrw_winsize"] = 25
