return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
    opts = {
      rocks = { "lua-curl", "nvim-nio", "mimetypes", "xml2lua" },
    },
  },
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = { "luarocks.nvim" },
    config = function()
      require("rest-nvim").setup()
    end,
    keys = {
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
