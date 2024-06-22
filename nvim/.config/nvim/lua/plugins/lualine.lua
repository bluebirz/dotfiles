return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = { theme = "nightfly" }
      opts.sections.lualine_c = { { "filename", path = 1 } }
      opts.sections.lualine_z = {}
    end,
  },
}
