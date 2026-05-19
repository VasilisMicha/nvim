vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.textwidth = 80
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
  end,
})

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*.md",
  callback = function()
    vim.opt_local.textwidth = 80
    local row, col = unpack(vim.api.nvim_win_get_cursor(0))
    vim.bo.formatexpr = "" -- clear conform's hijack, use built-in
    vim.cmd("normal! gggqG")
    vim.api.nvim_win_set_cursor(0, { row, col })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.spell = false
  end,
})
