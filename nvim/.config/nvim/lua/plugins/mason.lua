return {
  "williamboman/mason.nvim",
  opts = {
    ui = {
      border = "single",
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
    ensure_installed = {
      "docker-compose-language-service",
      "dockerfile-language-server",
      "gofumpt",
      "goimports",
      "gopls",
      "hadolint",
      "json-lsp",
      "lua-language-server",
      "markdown-toc",
      "markdownlint",
      "markdownlint-cli2",
      "marksman",
      "prettierd",
      "pyright",
      "ruff-lsp",
      "shfmt",
      "stylua",
      "terraform-ls",
      "tflint",
      "yaml-language-server",
    },
  },
}
