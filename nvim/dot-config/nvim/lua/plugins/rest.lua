return {
  "rest-nvim/rest.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "http")
    end,
    keys = {
      { "<leader>R", "", desc = "+Rest" },
      {
        "<leader>Rr",
        "<cmd>Rest run<CR>",
        desc = "RestNvim",
        noremap = true,
        silent = true,
      },
      {
        "<leader>Rl",
        "<cmd>Rest run last<CR>",
        desc = "RestNvimLast",
        noremap = true,
        silent = true,
      },
    },
  },
}
