return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", "mikesmithgh/git-prompt-string-lualine.nvim" },
    opts = function(_, opts)
      opts.options = {
        -- theme = "codedark",
        -- theme = "nord",
        theme = "catppuccin",
        -- component_separators = { left = '', right = ''},
        -- section_separators = { left = '', right = ''},
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      }
      opts.sections.lualine_a = { "mode" }
      opts.sections.lualine_b = {
        "git_prompt_string",
        {
          "diff",
          colored = true, -- Displays a colored diff status if set to true
          diff_color = {
            -- Same color values as the general color option can be used here.
            -- added = "LuaLineDiffAdd", -- Changes the diff's added color
            -- modified = "LuaLineDiffChange", -- Changes the diff's modified color
            -- removed = "LuaLineDiffDelete", -- Changes the diff's removed color you
            -- added = { fg = "#2b9416" }, -- Changes the diff's added color
            -- modified = { fg = "#99911a" }, -- Changes the diff's modified color
            -- removed = { fg = "#9c2721" }, -- Changes the diff's removed color you
          },
          -- symbols = { added = "+", modified = "~", removed = "-" }, -- Changes the symbols used by the diff.
          -- symbols = { added = "󰜄 ", modified = " ", removed = "󰛲 " }, -- Changes the symbols used by the diff.
        },
        {
          "diagnostics",
          -- Displays diagnostics for the defined severity types
          sections = { "error", "warn", "info", "hint" },

          diagnostics_color = {
            -- Same values as the general color option can be used here.
            error = "DiagnosticError", -- Changes diagnostics' error color.
            warn = "DiagnosticWarn", -- Changes diagnostics' warn color.
            info = "DiagnosticInfo", -- Changes diagnostics' info color.
            hint = "DiagnosticHint", -- Changes diagnostics' hint color.
          },
          -- symbols = { error = "E", warn = "W", info = "I", hint = "H" },
          -- symbols = { error = " ", warn = " ", info = " ", hint = " " },
          colored = true, -- Displays diagnostics status in color if set to true.
          update_in_insert = false, -- Update diagnostics in insert mode.
          always_visible = false, -- Show diagnostics even if there are none.
        },
      }
      opts.sections.lualine_c = {
        {
          "filename",
          path = 4,
          symbols = {
            modified = "[+]", -- Text to show when the file is modified.
            readonly = "[-]", -- Text to show when the file is non-modifiable or readonly.
            unnamed = "[No Name]", -- Text to show for unnamed buffers.
            newfile = "[New]", -- Text to show for newly created file before first write
          },
        },
      }
      -- opts.sections.lualine_x = { "encoding", "fileformat", "filetype" }
      opts.sections.lualine_y = {
        "progress",
        "location",
        {
          "filetype",
          colored = true, -- Displays filetype icon in color if set to true
          icon_only = false, -- Display only an icon for filetype
          icon = { align = "left" }, -- Display filetype icon on the xxx hand side
        },
      }
      opts.sections.lualine_z = {}
    end,
  },
}
