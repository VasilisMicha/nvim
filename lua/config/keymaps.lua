-- Paste from unnamed register and fix indent
vim.keymap.set("n", "p", "p=']", { desc = "Paste and fix indent" }) -- for python use ]p

-- Paste from system clipboard and fix indent
vim.keymap.set("n", "<leader>p", '"+p=`]', { desc = "Paste clipboard and fix indent" })
