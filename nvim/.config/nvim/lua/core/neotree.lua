return {
  "neo-tree.nvim",
  enabled = false,
  opts = {
    default_component_configs = {
      icon = {
        -- folder_closed = "",
        -- folder_open = "",
        -- folder_empty = "󰜌",
        folder_closed = "",
        folder_open = "",
        folder_empty = "󰷌",
        -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
        -- then these will never be used.
        default = "*",
        highlight = "NeoTreeFileIcon",
      },
      modified = {
        -- symbol = "[+]",
        symbol = "󰏫",
        highlight = "NeoTreeModified",
      },
      git_status = {
        symbols = {
          -- Change type
          -- added = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
          -- modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
          -- deleted = "✖", -- this can only be used in the git_status source
          -- renamed = "󰁕", -- this can only be used in the git_status source
          added = "󰜄", -- or "✚", but this is redundant info if you use git_status_colors on the name
          modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
          deleted = "󰛲", -- this can only be used in the git_status source
          renamed = "", -- this can only be used in the git_status source

          -- Status type
          -- untracked = "",
          -- ignored   = "",
          -- unstaged  = "󰄱",
          -- staged    = "",
          -- conflict  = "",
          untracked = "",
          ignored = "",
          unstaged = "",
          staged = "",
          conflict = "",
        },
      },
    },
    window = {
      position = "float",
    },
    filesystem = {
      hijack_netrw_behavior = "disabled",
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          ".github",
          ".gitignore",
          "package-lock.json",
        },
        never_show = { ".git" },
      },
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
    },
    buffers = { follow_current_file = { enable = true } },
  },
  -- keys = {
  --   { "<leader>e", "<cmd>Neotree reveal<CR>" },
  -- },
}
