-- ~/.config/nvim/lua/plugins/surround.lua
return {
  "kylechui/nvim-surround",
  version = "*",
  event = "VeryLazy",
  init = function()
    vim.g.nvim_surround_no_normal_mappings = true
    vim.keymap.set("n", "gz", "<Plug>(nvim-surround-normal)", { desc = "Surround" })
    vim.keymap.set("n", "gzz", "<Plug>(nvim-surround-normal-cur)", { desc = "Surround line" })
    vim.keymap.set("n", "gzd", "<Plug>(nvim-surround-delete)", { desc = "Delete surrounding" })
    vim.keymap.set("n", "gzc", "<Plug>(nvim-surround-change)", { desc = "Change surrounding" })
    vim.keymap.set("x", "gz", "<Plug>(nvim-surround-visual)", { desc = "Surround visual" })
  end,
}
