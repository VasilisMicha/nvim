return {
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
      explorer = {
        replace_netrw = false,
      },
      picker = {
        sources = {
          explorer = {
            replace_netrw = false,
            layout = { layout = { position = "right" } },
          },
        },
      },
    },
  },
}
