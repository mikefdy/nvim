-- Load plugins first
require("mike.plugins-setup")

-- Core settings
require("mike.core.options")
require("mike.core.keymaps")
require("mike.core.colorscheme")

-- Plugin configurations (load after plugins are installed)
-- These are wrapped in pcall to prevent errors on first run before plugins are installed
local plugins = {
  "mike.plugins.treesitter",
  "mike.plugins.lsp",
  "mike.plugins.cmp",
  "mike.plugins.telescope",
  "mike.plugins.nvim-tree",
  "mike.plugins.harpoon",
  "mike.plugins.gitsigns",
  "mike.plugins.comment",
  "mike.plugins.autopairs",
  "mike.plugins.surround",
  "mike.plugins.flash",
  "mike.plugins.lualine",
  "mike.plugins.bufferline",
  "mike.plugins.indent-blankline",
  "mike.plugins.which-key",
  "mike.plugins.trouble",
}

for _, plugin in ipairs(plugins) do
  local ok, err = pcall(require, plugin)
  if not ok then
    vim.notify("Error loading " .. plugin .. ": " .. err, vim.log.levels.WARN)
  end
end

-- Auto sync packer when plugins-setup.lua changes
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- Set colorscheme
vim.cmd("colorscheme tokyonight")
