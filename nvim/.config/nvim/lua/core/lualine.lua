local colors = {
  aqua = "#7AB0DF",
  bg = "#1C212A",
  blue = "#5FB0FC",
  cyan = "#70C0BA",
  darkred = "#FB7373",
  fg = "#C7C7CA",
  gray = "#222730",
  green = "#79DCAA",
  lime = "#54CED6",
  orange = "#FFD064",
  pink = "#D997C8",
  purple = "#C397D8",
  red = "#F87070",
  white = "#FFFFFF",
  yellow = "#FFE59E",
}

return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", "mikesmithgh/git-prompt-string-lualine.nvim" },
    opts = function(_, opts)
      opts.options = {
        -- theme = "codedark",
        theme = "nord",
        -- theme = "catppuccin",
        -- theme = {
        --   normal = {
        --     a = { fg = colors.black, bg = colors.violet },
        --     b = { fg = colors.white, bg = colors.grey },
        --     c = { fg = colors.white },
        --   },
        --
        --   insert = { a = { fg = colors.black, bg = colors.blue } },
        --   visual = { a = { fg = colors.black, bg = colors.cyan } },
        --   replace = { a = { fg = colors.black, bg = colors.red } },
        --
        --   inactive = {
        --     a = { fg = colors.white, bg = colors.black },
        --     b = { fg = colors.white, bg = colors.black },
        --     c = { fg = colors.white },
        --   },
        -- },
        -- component_separators = { left = '', right = ''},
        -- section_separators = { left = '', right = ''},
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      }
      opts.sections.lualine_a = {
        {
          "mode",
          color = function()
            local mode_color = {
              [""] = colors.orange,
              [""] = colors.blue,
              ["!"] = colors.red,
              ["R"] = colors.purple,
              ["Rv"] = colors.purple,
              ["S"] = colors.orange,
              ["V"] = colors.blue,
              ["c"] = colors.purple,
              ["ce"] = colors.red,
              ["cv"] = colors.red,
              ["i"] = colors.red,
              ["ic"] = colors.yellow,
              ["n"] = colors.green,
              ["no"] = colors.red,
              ["r"] = colors.cyan,
              ["r?"] = colors.cyan,
              ["rm"] = colors.cyan,
              ["s"] = colors.orange,
              ["t"] = colors.white,
              ["v"] = colors.blue,
            }
            return { fg = mode_color[vim.fn.mode()], bg = colors.bg, gui = "bold" }
          end,
          -- fmt = function(s)
          --   return s:lower()
          -- end,
        },
      }
      opts.sections.lualine_b = {
        {
          "git_prompt_string",
          trim_prompt_prefix = false,
          prompt_config = {
            -- prompt_prefix = nil,
            -- prompt_suffix = nil,
            -- color_clean = { fg = "LightGreen" },
            -- color_delta = "WarningMsg",
            -- color_dirty = function()
            --   return "ErrorMsg"
            -- end,
            -- color_untracked = { fg = "#b16286" }, -- bg = "Black" },
            -- color_no_upstream = { fg = "#c7c7c7" },
            -- color_merging = { fg = 4 },
          },
        },
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
          path = 1,
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
