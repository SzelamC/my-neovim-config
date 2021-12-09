local g = vim.g
local icons = require('cosmic.theme.icons')
local config = require('cosmic.config')

-- settings
g.nvim_tree_git_hl = 1
g.nvim_tree_refresh_wait = 300

g.nvim_tree_special_files = {}

g.nvim_tree_icons = {
  default = '',
  symlink = icons.symlink,
  git = icons.git,
  folder = icons.folder,

  lsp = {
    hint = icons.hint,
    info = icons.info,
    warning = icons.warn,
    error = icons.error,
  },
}

g.nvim_tree_respect_buf_cwd = 1

-- set up args
local args = {
  auto_close = true,
  diagnostics = {
    enable = true,
  },
  update_focused_file = {
    enable = true,
  },
  view = {
    width = 35,
    number = true,
    relativenumber = true,
  },
  git = {
    ignore = true,
  },
}

require('nvim-tree').setup(vim.tbl_deep_extend('force', args, config.nvim_tree or {}))
