return {
  -- credit: https://www.josean.com/posts/neovim-linting-and-formatting
  "mfussenegger/nvim-lint",
  event = {
    "BufReadPre",
    "BufNewFile",
  },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      markdown = { "markdownlint-cli2" },
      python = { "ruff" },
      sql = { "sqlfluff" },
      tf = { "tflint" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    -- credit: https://github.com/neovim/neovim/issues/26977
    vim.api.nvim_create_autocmd("Filetype", {
      pattern = "sql",
      callback = function()
        vim.keymap.del("i", "<left>", { buffer = true })
        vim.keymap.del("i", "<right>", { buffer = true })
      end,
    })

    vim.keymap.set("n", "<leader>ml", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
