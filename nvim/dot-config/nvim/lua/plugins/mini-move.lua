-- Move any selection in any direction

local conf = {
  "nvim-mini/mini.move",
  lazy = true,
  init = function()
    require("mini.move").setup()
  end,
}
return { conf }
