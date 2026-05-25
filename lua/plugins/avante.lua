return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  tag = "v0.0.28",
  build = ":AvanteBuild",
  opts = {
    hints = { enabled = false },
    provider = "gemini",
    providers = {
      gemini = {
        model = "gemini-2.5-flash",
        temperature = 0,
        max_tokens = 4096,
      },
    },
  },
  config = function(_, opts)
    require("avante").setup(opts)
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
    "HakonHarnes/img-clip.nvim",
    "hrsh7th/nvim-cmp",
  },
}
