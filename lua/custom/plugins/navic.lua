return {}

-- return {
--   -- lsp symbol navigation for lualine. This shows where
--   -- in the code structure you are - within functions, classes,
--   -- etc - in the statusline.
--   {
--     'SmiteshP/nvim-navic',
--     lazy = true,
--     init = function()
--       vim.g.navic_silence = true
--       vim.api.nvim_create_autocmd('LspAttach', {
--         callback = function(args)
--           local buffer = args.buf ---@type number
--           local client = vim.lsp.get_client_by_id(args.data.client_id)
--           if client then
--             if client.supports_method 'textDocument/documentSymbol' then
--               require('nvim-navic').attach(client, buffer)
--             end
--           end
--         end,
--       })
--     end,
--     opts = function()
--       return {
--         separator = ' ',
--         highlight = true,
--         depth_limit = 5,
--         icons = {
--           Array = ' ',
--           Boolean = '󰨙 ',
--           Class = ' ',
--           Codeium = '󰘦 ',
--           Color = ' ',
--           Control = ' ',
--           Collapsed = ' ',
--           Constant = '󰏿 ',
--           Constructor = ' ',
--           Copilot = ' ',
--           Enum = ' ',
--           EnumMember = ' ',
--           Event = ' ',
--           Field = ' ',
--           File = ' ',
--           Folder = ' ',
--           Function = '󰊕 ',
--           Interface = ' ',
--           Key = ' ',
--           Keyword = ' ',
--           Method = '󰊕 ',
--           Module = ' ',
--           Namespace = '󰦮 ',
--           Null = ' ',
--           Number = '󰎠 ',
--           Object = ' ',
--           Operator = ' ',
--           Package = ' ',
--           Property = ' ',
--           Reference = ' ',
--           Snippet = '󱄽 ',
--           String = ' ',
--           Struct = '󰆼 ',
--           Supermaven = ' ',
--           TabNine = '󰏚 ',
--           Text = ' ',
--           TypeParameter = ' ',
--           Unit = ' ',
--           Value = ' ',
--           Variable = '󰀫 ',
--         },
--         lazy_update_context = true,
--       }
--     end,
--   },
-- }
