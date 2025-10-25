local colors = {
  aqua = "#7AB0DF",
  bg = "#1C212A",
  black = "#000000",
  blue = "#5FB0FC",
  cyan = "#70C0BA",
  darkred = "#FB7373",
  fg = "#C7C7CA",
  gray = "#6A6A6A",
  green = "#79DCAA",
  lightgray = "#454C5C",
  lime = "#54CED6",
  orange = "#FFD064",
  pink = "#D997C8",
  purple = "#C397D8",
  red = "#F87070",
  white = "#FFFFFF",
  yellow = "#FFE59E",
}

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

local opt = {
  -- theme = "codedark",
  -- theme = "nord",
  -- theme = "catppuccin",
  -- theme = "nordic",
  -- theme = "onedark",
  -- theme = "night-owl",
  -- theme = "tokyonight",
  theme = "auto",
  component_separators = { left = "", right = "" },
  section_separators = { left = "", right = "" },
}

local modes = {
  "mode",
  -- color = function()
  -- return { bg = mode_color[vim.fn.mode()], fg = colors.black, gui = "bold" }
  -- return { fg = mode_color[vim.fn.mode()], bg = "NONE", gui = "bold" }
  -- end,
}

local git_str = {
  "git_prompt_string",
  trim_prompt_prefix = false,
  prompt_config = {
    prompt_prefix = nil,
    prompt_suffix = nil,
    ahead_format = "↑[%v]",
    behind_format = "↓[%v]",
    diverged_format = "↕ ↑[%v] ↓[%v]",
    no_upstream_remote_format = " → %v/%v",
    color_disabled = true,
    -- color_clean = { fg = colors.green, bg = colors.lightgray },
    -- color_delta = { fg = colors.yellow, bg = colors.lightgray },
    -- color_dirty = { fg = colors.red, bg = colors.lightgray },
    -- color_untracked = { fg = colors.pink, bg = colors.lightgray },
    -- color_no_upstream = { fg = colors.gray, bg = colors.lightgray },
    -- color_merging = { fg = colors.blue, bg = colors.lightgray },
  },
}

local diff = {
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
}

local diag = {
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
}

local unsave = {
  function()
    local unsave = 0
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
      if vim.api.nvim_get_option_value("modified", { buf = buf }) then
        unsave = unsave + 1
      end
    end
    if unsave > 0 then
      return "󰽃 " .. unsave
    else
      return ""
    end
  end,
  -- color = { bg = colors.red, fg = colors.black },
  color = { fg = colors.red, bg = "NONE" },
}

local filename = {
  "filename",
  path = 1,
  symbols = {
    modified = "[+]", -- Text to show when the file is modified.
    readonly = "[-]", -- Text to show when the file is non-modifiable or readonly.
    unnamed = "[No Name]", -- Text to show for unnamed buffers.
    newfile = "[New]", -- Text to show for newly created file before first write
  },
  -- color = { bg = "NONE" },
}

local lsp_progress = {
  function()
    return require("lsp-progress").progress()
  end,
  color = { fg = colors.gray, bg = "NONE" },
}

local filetype = {
  "filetype",
  colored = true, -- Displays filetype icon in color if set to true
  icon_only = false, -- Display only an icon for filetype
  icon = { align = "left" }, -- Display filetype icon on the xxx hand side
}

local progress = {
  "progress",
  -- color = function()
  --   return { bg = mode_color[vim.fn.mode()], fg = colors.black }
  -- end,
}

local location = {
  "location",
  -- color = function()
  --   return { bg = mode_color[vim.fn.mode()], fg = colors.black }
  -- end,
}

local current_formatter = {
  function()
    -- Check if 'conform' is available
    local status, conform = pcall(require, "conform")
    local icon = "󰉼"
    if not status then
      return "Conform not installed"
    end

    local lsp_format = require("conform.lsp_format")

    -- Get formatters for the current buffer
    local formatters = conform.list_formatters_for_buffer()
    if formatters and #formatters > 0 then
      local formatterNames = {}

      for _, formatter in ipairs(formatters) do
        table.insert(formatterNames, formatter)
      end

      return icon .. " " .. table.concat(formatterNames, ", ")
    end

    -- Check if there's an LSP formatter
    local bufnr = vim.api.nvim_get_current_buf()
    local lsp_clients = lsp_format.get_format_clients({ bufnr = bufnr })

    if not vim.tbl_isempty(lsp_clients) then
      return icon .. " LSP Formatter"
    end

    return ""
  end,
  color = { fg = colors.gray, bg = "NONE" },
}

-- ========================== composition ==========================
return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", "mikesmithgh/git-prompt-string-lualine.nvim" },
    opts = function(_, opts)
      opts.options = opt
      opts.sections.lualine_a = { modes }
      opts.sections.lualine_b = { unsave, git_str, diag }
      opts.sections.lualine_c = { filename }
      table.insert(opts.sections.lualine_x, 1, current_formatter)
      table.insert(opts.sections.lualine_x, 1, lsp_progress)
      -- opts.sections.lualine_x = current_x
      opts.sections.lualine_y = { filetype }
      opts.sections.lualine_z = { progress, location }
    end,
  },
}
