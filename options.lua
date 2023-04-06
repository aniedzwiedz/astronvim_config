-- set vim options here (vim.<first_key>.<second_key> = value)

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- lvim.builtin.telescope.theme = "ivy"
-- lvim.builtin.telescope.pickers.git_files.hidden = false
-- lvim.builtin.telescope.pickers.find_files.hidden = false
-- vim.opt.mouse = none
-- vim.opt.wrap = false

vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

return {
  opt = {
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true,         -- sets vim.opt.number
    spell = true,         -- sets vim.opt.spell
    signcolumn = "auto",   -- sets vim.opt.signcolumn to auto
    wrap = true,           -- sets vim.opt.wrap
    backup = false,
    swapfile = false,
    smartindent = true, -- ... unless there is a capital letter in the query
    autoindent = true,
  },
  g = {
    mapleader = " ",                  -- sets vim.g.mapleader
    autoformat_enabled = false,       -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true,               -- enable completion at start
    autopairs_enabled = true,         -- enable autopairs at start
    diagnostics_mode = 2,             -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true,             -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = false, -- disable notifications when toggling UI elements
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.g.transparent_enabled = true
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
-- return local_vim
-- end
