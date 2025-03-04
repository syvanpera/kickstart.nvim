return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        transparent = true,
        styles = {
          --   comments = { italic = false }, -- Disable italics in comments
          sidebars = 'transparent',
          floats = 'transparent',
        },
      }

      -- Load the colorscheme
      -- vim.cmd.colorscheme 'tokyonight'
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    name = 'kanagawa',
    priority = 1000,
    config = function()
      require('kanagawa').setup {
        transparent = true,
        overrides = function(colors)
          return {
            LineNr = { bg = 'none' },
            SignColumn = { bg = 'none' },
            GitSignsAdd = { bg = 'none' },
            GitSignsChange = { bg = 'none' },
            GitSignsDelete = { bg = 'none' },
            TelescopeBorder = { bg = 'none' },
          }
        end,
      }

      -- Load the colorscheme
      vim.cmd.colorscheme 'kanagawa'
    end,
  },

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        transparent_background = true,
      }

      -- Load the colorscheme
      -- vim.cmd.colorscheme 'catppuccin'
    end,
  },

  {
    'Mofiqul/dracula.nvim',
    name = 'dracula',
    priority = 1000,
    config = function()
      require('dracula').setup {
        transparent_bg = true,
      }

      -- Load the colorscheme
      -- vim.cmd.colorscheme 'dracula'
    end,
  },
}
