vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup({})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer", silent = true })
vim.keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>", { desc = "Focus file explorer", silent = true })
