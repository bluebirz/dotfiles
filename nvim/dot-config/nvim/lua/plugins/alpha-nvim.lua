return {
  "goolord/alpha-nvim",
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    -- require("alpha").setup(require("alpha.themes.startify").config)
    local alpha = require("alpha")
    local theta = require("alpha.themes.theta")
    local dashboard = require("alpha.themes.dashboard")
    math.randomseed(os.time())
    local function pick_color()
      local colors = { "String", "Identifier", "Keyword", "Number", "Error" }
      return colors[math.random(#colors)]
    end

    theta.header.val = {
      [[,--.   ,--.               ]],
      [[|  |-. |  |,--.,--. ,---. ]],
      [[| .-. '|  ||  ||  || .-. :]],
      [[| `-' ||  |'  ''  '\   --.]],
      [[ `---' `--' `----'  `----']],
      [[,--.   ,--.               ]],
      [[|  |-. `--',--.--.,-----. ]],
      [[| .-. ',--.|  .--'`-.  /  ]],
      [[| `-' ||  ||  |    /  `-. ]],
      [[ `---' `--'`--'   `-----' ]],
    }
    -- theta.header.opts.hl = pick_color()
    --
    theta.buttons.val = {
      { type = "text", val = "Operations", opts = { hl = "SpecialComment", position = "center" } },
      { type = "padding", val = 1 },
      dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("e", "  Yazi", "<cmd>Yazi<cr>"),
      dashboard.button("f", "󰱼  FZF File", "<cmd>FzfLua files<cr>"),
      dashboard.button("l", "󱎸  FZF Live Grep", "<cmd>FzfLua live_grep<cr>"),
      dashboard.button("g", "  Lazygit", "<cmd>LazyGit<cr>"),
      dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
    }

    alpha.setup(theta.config)
  end,
}
