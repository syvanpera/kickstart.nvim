-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  {
    'alexghergh/nvim-tmux-navigation',
    opts = {
      disable_when_zoomed = true,
    },
    keys = function()
      local nvim_tmux_nav = require 'nvim-tmux-navigation'
      return {
        { '<C-h>', nvim_tmux_nav.NvimTmuxNavigateLeft },
        { '<C-j>', nvim_tmux_nav.NvimTmuxNavigateDown },
        { '<C-k>', nvim_tmux_nav.NvimTmuxNavigateUp },
        { '<C-l>', nvim_tmux_nav.NvimTmuxNavigateRight },
      }
    end,
  },

  -- Highlight todo, notes, etc in comments
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      signs = true,
    },
  },

  {
    's1n7ax/nvim-window-picker',
    name = 'window-picker',
    event = 'VeryLazy',
    version = '2.*',
    config = function()
      require('window-picker').setup {
        hint = 'floating-letter',
      }
    end,
  },
}
