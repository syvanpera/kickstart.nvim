local set = vim.keymap.set
local f = require 'custom.f'
local fn = f.fn

set('v', '<leader>y', '"+y', { desc = 'Yank to clipboard' })

set('n', '<C-s>', '<cmd>w<cr>', { desc = 'Save buffer' })
set('n', '<M-s>', '<cmd>w<cr>', { desc = 'Save buffer' })
set('n', '<leader><tab>', '<C-^>', { desc = 'Switch to other buffer' })

set('n', '<leader>l', '<cmd>Lazy<CR>', { desc = '[L]azy' })

set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
set('n', '<leader>en', fn(vim.diagnostic.jump, { count = 1, float = true }), { desc = 'Go to [N]ext diagnostic message' })
set('n', '<leader>ep', fn(vim.diagnostic.jump, { count = -1, float = true }), { desc = 'Go to [P]rev diagnostic message' })

-- These mappings control the size of splits (height/width)
set('n', '<M-,>', '<c-w>5<')
set('n', '<M-.>', '<c-w>5>')
set('n', '<M-;>', '<C-W>+')
set('n', '<M-:>', '<C-W>-')

set('n', '<leader>bd', '<cmd>bdel<cr>', { desc = '[D]elete [B]uffer' })
