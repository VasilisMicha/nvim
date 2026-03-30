return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      powershell_es = {
        bundle_path = vim.fn.stdpath("data") .. "/mason/packages/powershell-editor-services",
        -- Force it to use 'powershell' if 'pwsh' is flaky on your system
        shell = "powershell.exe",
      },
    },
  },
}
