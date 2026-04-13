vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.keymap.set("n", "p", function()
      vim.cmd("normal! p")
      vim.cmd("normal! `[v`]=") -- re-indent the pasted text
    end, { desc = "Smart paste + reindent for Lua" })

    vim.keymap.set("n", "P", function()
      vim.cmd("normal! P")
      vim.cmd("normal! `[v`]=")
    end, { desc = "Smart paste + reindent for Lua" })
  end,
})
