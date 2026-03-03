return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    -- Remove buffer number from lualine_c
    -- Clear middle-right section (removes % and default position)
    opts.sections.lualine_y = {}
    opts.sections.lualine_x = {
      "encoding",
      "selectioncount",
      "searchcount",
      { "diff", symbols = { added = "+", modified = "~", removed = "-" } },
    }

    -- Custom rightmost section: current_line:total_lines
    opts.sections.lualine_z = {
      function()
        local current_line = vim.fn.line(".")
        local total_lines = vim.fn.line("$")
        return current_line .. ":" .. total_lines
      end,
    }
  end,
}
