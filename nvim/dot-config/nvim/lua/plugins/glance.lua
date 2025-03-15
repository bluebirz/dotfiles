local conf = {
  "dnlhc/glance.nvim",
  opts = {
    theme = { mode = "auto" },
    border = { enable = true },
  },
  keys = {
    { "glr", "<CMD>Glance references<CR>", desc = "[Glance] references" },
    { "gld", "<CMD>Glance definitions<CR>", desc = "[Glance] definitions" },
    { "gli", "<CMD>Glance implementations<CR>", desc = "[Glance] implementations" },
  },
}

return { conf }
