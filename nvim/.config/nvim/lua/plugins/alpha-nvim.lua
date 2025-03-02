return {
  "goolord/alpha-nvim",
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    -- require("alpha").setup(require("alpha.themes.startify").config)
    local alpha = require("alpha")
    local startify = require("alpha.themes.startify")
    startify.section.header.val = {
      -- [[                                   __                ]],
      -- [[      ___     ___    ___   __  __ /\_\    ___ ___    ]],
      -- [[     / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
      -- [[    /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
      -- [[    \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
      -- [[     \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
      [[                              ]],
      [[   ,--.   ,--.                ]],
      [[   |  |-. |  |,--.,--. ,---.  ]],
      [[   | .-. '|  ||  ||  || .-. : ]],
      [[   | `-' ||  |'  ''  '\   --. ]],
      [[    `---' `--' `----'  `----' ]],
      [[   ,--.   ,--.                ]],
      [[   |  |-. `--',--.--.,-----.  ]],
      [[   | .-. ',--.|  .--'`-.  /   ]],
      [[   | `-' ||  ||  |    /  `-.  ]],
      [[    `---' `--'`--'   `-----'  ]],
      [[                              ]],
    }
    alpha.setup(startify.config)
  end,
}
