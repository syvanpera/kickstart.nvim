return {
  'b0o/incline.nvim',
  event = 'VeryLazy',
  config = function()
    local helpers = require 'incline.helpers'
    local devicons = require 'nvim-web-devicons'
    require('incline').setup {
      window = {
        padding = { left = 0, right = 0 },
        margin = {
          horizontal = 0,
        },
        overlap = {
          borders = true,
        },
      },
      render = function(props)
        local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ':t')
        if filename == '' then
          filename = '[No Name]'
        end
        local ft_icon, ft_color = devicons.get_icon_color(filename)
        local modified = vim.bo[props.buf].modified
        local fg = helpers.contrast_color(ft_color)
        local bg = '#44406e'

        if props.focused ~= true then
          ft_color = 'none'
          fg = 'none'
          bg = 'none'
        end

        return {
          ft_icon and { ' ', ft_icon, ' ', guibg = ft_color, guifg = fg } or '',
          ' ',
          { filename, gui = modified and 'bold,italic' or 'bold' },
          ' ',
          guibg = bg,
        }
      end,
    }
  end,
}
