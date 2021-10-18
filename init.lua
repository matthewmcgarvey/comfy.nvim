-- We turn off the following because it's not needed at all, or enabling it
-- later on speeds up start-up times
-- Never needed
vim.g.loaded_gzip = false
vim.g.loaded_netrwPlugin = false
vim.g.loaded_tarPlugin = false
vim.g.loaded_zipPlugin = false
vim.g.loaded_2html_plugin = false
vim.g.loaded_remote_plugins = false

-- Deferred loading
vim.opt.syntax = "off"
-- vim.opt.filetype = "off"
-- vim.opt.filetype = "plugin indent off"
-- vim.opt.shadafile = "NONE"

vim.defer_fn(function()
  require('settings')
  require('plugins')
  require('mappings')

  -- vim.opt.shadafile = ""
  -- vim.opt.syntax = "on"
  -- vim.opt.filetype = "on"
  -- vim.opt.filetype = "plugin indent on"
end, 0)


