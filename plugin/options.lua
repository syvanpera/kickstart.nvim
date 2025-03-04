local opt = vim.opt

----- Interesting Options -----

-- You have to turn this one on :)
opt.inccommand = 'split'

-- Best search settings :)
opt.smartcase = true
opt.ignorecase = true

----- Personal Preferences -----
opt.number = true
opt.relativenumber = true

opt.splitbelow = true
opt.splitright = true

opt.signcolumn = 'yes'
opt.shada = { "'10", '<0', 's10', 'h' }

opt.swapfile = false

-- Don't have `o` add a comment
opt.formatoptions:remove 'o'

opt.wrap = false
opt.linebreak = true

opt.tabstop = 4
opt.shiftwidth = 4

opt.more = false

opt.foldmethod = 'manual'

opt.title = true
opt.titlestring = '%t%( %M%)%( (%{expand("%:~:h")})%)%a (nvim)'

opt.undofile = true

opt.showmode = false

-- Sets how neovim will display certain whitespace characters in the editor.
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Show which line your cursor is on
opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- Decrease update time
opt.updatetime = 250

-- Decrease mapped sequence wait time
opt.timeoutlen = 300

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.schedule(function()
--   opt.clipboard = 'unnamedplus'
-- end)

-- Yeah, I hate it that they changed this
vim.cmd [[noremap Y Y]]
