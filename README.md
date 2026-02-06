# Neovim Configuration

Neovim 0.11+ config with LSP, autocompletion, and standard vim keybindings.

## Setup

1. Clone into your config folder:
   ```bash
   cd ~/.config
   git clone git@github.com:mikefdy/nvim.git
   ```

2. Open Neovim and install plugins:
   ```
   nvim
   :PackerSync
   ```

3. Restart Neovim after plugins install.

## Requirements

- Neovim >= 0.11
- Git
- A [Nerd Font](https://www.nerdfonts.com/) (for icons)
- Node.js (for some LSP servers)
- ripgrep (for Telescope live grep): `brew install ripgrep`

## Keybindings

Leader key: `Space`

All standard vim keybindings are preserved. The only custom keymaps are leader-based plugin triggers:

### File Explorer (nvim-tree)

| Key | Action |
|-----|--------|
| `<leader>e` | Toggle file explorer |
| `<leader>ef` | Focus file explorer |

### Telescope (Fuzzy Finder)

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Find buffers |
| `<leader>fh` | Help tags |
| `<leader>fr` | Recent files |

### Harpoon (Quick File Marks)

| Key | Action |
|-----|--------|
| `<leader>ha` | Add file to harpoon |
| `<leader>hh` | Open harpoon menu |
| `<leader>1-4` | Jump to harpoon file 1-4 |

### Git

| Key | Action |
|-----|--------|
| `<leader>gb` | Toggle inline blame |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hp` | Preview hunk |
| `]c` / `[c` | Next/prev hunk |

### Diagnostics

| Key | Action |
|-----|--------|
| `<leader>xx` | Toggle Trouble diagnostics |

### LSP (Neovim 0.11 built-in defaults)

| Key | Action |
|-----|--------|
| `K` | Hover documentation |
| `gd` | Go to definition |
| `grr` | References |
| `gri` | Implementation |
| `grn` | Rename symbol |
| `gra` | Code actions |
| `[d` / `]d` | Prev/next diagnostic |

## Supported Languages (LSP)

Installed automatically via Mason:

TypeScript/JavaScript, Python, Terraform, Go, Rust, Lua, JSON, YAML, HTML, CSS, Bash, Docker

Add more with `:Mason`.

## Plugins

**LSP & Completion:** mason.nvim, nvim-lspconfig, nvim-cmp, LuaSnip, friendly-snippets
**Navigation:** telescope.nvim, nvim-tree, harpoon, flash.nvim
**Editing:** Comment.nvim, nvim-autopairs, nvim-surround, vim-visual-multi
**Git:** gitsigns.nvim, vim-fugitive
**UI:** tokyonight.nvim, lualine.nvim, bufferline.nvim, indent-blankline.nvim, which-key.nvim, trouble.nvim

## Troubleshooting

- **Plugins not loading?** `:PackerSync`
- **LSP not working?** `:checkhealth lsp` or `:Mason`
- **Treesitter issues?** `:TSUpdate`
- **Icons look weird?** Install a [Nerd Font](https://www.nerdfonts.com/) and set it in your terminal
