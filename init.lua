require("mike.plugins-setup")
require("mike.core.options")
require("mike.core.keymaps")
require("mike.core.colorscheme")

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

vim.cmd("colorscheme tokyonight")
