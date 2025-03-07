return {
  "sphamba/smear-cursor.nvim",
  event = "VeryLazy",
  cond = vim.g.neovide == nil,
  opts = {
    -- Smear cursor when switching buffers or windows.
    smear_between_buffers = true,
    -- Smear cursor when moving within line or to neighbor lines.
    -- Use `min_horizontal_distance_smear` and `min_vertical_distance_smear` for finer control
    smear_between_neighbor_lines = true,
    -- Draw the smear in buffer space instead of screen space when scrolling
    scroll_buffer_space = true,
    -- Smear cursor when entering or leaving command line mode
    smear_to_cmd = false,
    -- Attempt to hide the real cursor by drawing a character below it.
    -- Can be useful when not using `termguicolors`
    hide_target_hack = false,
    -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
    -- Smears will blend better on all backgrounds.
    legacy_computing_symbols_support = false,
    -- Smear cursor in insert mode.
    -- See also `vertical_bar_cursor_insert_mode` and `distance_stop_animating_vertical_bar`.
    smear_insert_mode = true,
    -- List of filetypes where the plugin is disabled.
    filetypes_disabled = {},
    -- Stop animating when the smear's tail is within this distance (in characters) from the target.
    distance_stop_animating = 3,
    -- Smear cursor color. Defaults to Cursor GUI color if not set.
    -- Set to "none" to match the text color at the target cursor position.
    cursor_color = "none",
  },
  -- specs = {
  --   -- disable mini.animate cursor
  --   {
  --     "echasnovski/mini.animate",
  --     optional = true,
  --     opts = {
  --       cursor = { enable = false },
  --     },
  --   },
  -- },
}
