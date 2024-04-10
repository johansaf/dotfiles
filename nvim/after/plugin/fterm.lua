require("FTerm").setup({
  border = "rounded",
})

-- Example keybindings
vim.keymap.set("n", "<leader>t", '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set("t", "<ESC>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
