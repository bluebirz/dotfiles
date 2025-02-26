local conf = {
  "levouh/tint.nvim",
  config = function()
    require("tint").setup({
      tint = -30, -- Darken colors, use a positive value to brighten
      saturation = 0, -- Saturation to preserve
      transforms = require("tint").transforms.SATURATE_TINT, -- Showing default behavior, but value here can be predefined set of transforms
      tint_background_colors = false, -- Tint background portions of highlight groups
      highlight_ignore_patterns = { "WinSeparator", "Status.*" }, -- Highlight group patterns to ignore, see `string.find`
      window_ignore_function = function(winid)
        local bufid = vim.api.nvim_win_get_buf(winid)

        local ignoredFiletypes = { "DiffviewFiles", "DiffviewFileHistory" }
        -- local ignoredBuftypes = { "terminal" }

        local isDiff = vim.api.nvim_win_get_option(winid, "diff")
        local isFloating = vim.api.nvim_win_get_config(winid).relative ~= ""
        -- local isIgnoredBuftype = vim.tbl_contains(ignoredBuftypes, vim.api.nvim_buf_get_option(bufid, "buftype"))
        local isIgnoredFiletype = vim.tbl_contains(ignoredFiletypes, vim.api.nvim_buf_get_option(bufid, "filetype"))

        return isDiff or isFloating or isIgnoredFiletype
        -- local bufid = vim.api.nvim_win_get_buf(winid)
        -- local buftype = vim.api.nvim_buf_get_option(bufid, "buftype")
        -- local floating = vim.api.nvim_win_get_config(winid).relative ~= ""

        -- Do not tint `terminal` or floating windows, tint everything else
        -- return buftype == "terminal" or floating
        -- return floating
      end,
      -- transforms = {
      --   require("tint.transforms").tint_with_threshold(-100, "#1C1C1C", 150), -- Try to tint by `-100`, but keep all colors at least `150` away from `#1C1C1C`
      --   require("tint.transforms").saturate(0.5),
      -- },
    })
  end,
}

return { conf }
