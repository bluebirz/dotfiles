return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", "mikesmithgh/git-prompt-string-lualine.nvim" },
    opts = function(_, opts)
      opts.options = {
        theme = "codedark",
        -- component_separators = { left = '', right = ''},
        -- section_separators = { left = '', right = ''},
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      }
      opts.sections.lualine_b = { "git_prompt_string", "diff", "diagnostics" }
      opts.sections.lualine_c = { { "filename", path = 4 } }
      opts.sections.lualine_z = {}
    end,
  },
}
