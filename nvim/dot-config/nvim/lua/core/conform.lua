return {
  -- formatters with conform.nvim
  -- credit: https://www.josean.com/posts/neovim-linting-and-formatting
  "stevearc/conform.nvim",
  dependencies = { "williamboman/mason.nvim" },
  opts = function()
    local opts = {
      default_format_opts = {
        timeout_ms = 3000,
        async = false, -- not recommended to change
        quiet = false, -- not recommended to change
        lsp_format = "fallback", -- not recommended to change
      },
      formatters_by_ft = {
        css = { "prettierd" },
        go = { "gofumpt", "goimports" },
        html = { "prettierd" },
        javascript = { "prettierd" },
        json = { "prettierd" },
        lua = { "stylua" },
        markdown = { "markdownlint-cli2" },
        python = { "isort", "black" },
        sh = { "shfmt" },
        sql = { "sqlfluff" }, --, "sqlfmt" },
        tf = { "terraform_fmt" },
        yaml = { "prettierd" },
      },
      formatters = {
        injected = { options = { ignore_errors = true } },
        sqlfluff = { stdin = false, args = { "fix", "$FILENAME" } },
        -- # Example of using dprint only when a dprint.json file is present
        -- dprint = {
        --   condition = function(ctx)
        --     return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
        --   end,
        -- },
        --
        -- # Example of using shfmt with extra args
        -- shfmt = {
        --   prepend_args = { "-i", "2", "-ci" },
        -- },
      },
    }
    return opts
  end,
}
