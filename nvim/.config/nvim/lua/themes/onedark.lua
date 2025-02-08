return {
  "navarasu/onedark.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("onedark").setup({
      style = "cool",
      transparent = true,
      code_style = {
        comments = "italic",
        keywords = "bold",
        functions = "none",
        strings = "none",
        variables = "none",
      },
      -- Lualine options --
      lualine = {
        transparent = true, -- lualine center bar transparency
      },
    })
    -- require("onedark").load()
  end,
}
