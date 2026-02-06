-- Mason setup (LSP installer)
require("mason").setup()

-- Mason-lspconfig (automatic_enable is on by default, calls vim.lsp.enable for installed servers)
require("mason-lspconfig").setup({
  ensure_installed = {
    "ts_ls",
    "pyright",
    "terraformls",
    "gopls",
    "rust_analyzer",
    "lua_ls",
    "jsonls",
    "yamlls",
    "html",
    "cssls",
    "bashls",
    "dockerls",
  },
})

-- Apply cmp capabilities to all LSP servers
vim.lsp.config("*", {
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

-- Lua LSP needs special config for Neovim
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
    },
  },
})

-- Diagnostic config
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = true,
  },
})
