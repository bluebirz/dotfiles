local conf = {
  "ilof2/posterpole.nvim",
  priority = 1000,
  config = function()
    local posterpole = require("posterpole")

    posterpole.setup({
      -- config here
      transparent = true,
      colorless_bg = false, -- grayscale or not
      dim_inactive = false, -- highlight inactive splits
    })
    -- vim.cmd("colorscheme posterpole")

    -- This function create sheduled task, which will reload theme every hour
    -- Without "setup_adaptive" adaptive brightness will be set only after every restart
    -- posterpole.setup_adaptive()
  end,
}

return {}
