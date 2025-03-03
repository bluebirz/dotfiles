-- credit: https://github.com/jdhao/nvim-config/blob/4d8ef868ad0ef7f6433d91332aa6649186d9a2fb/lua/config/lsp.lua
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.pylsp.setup({
  filetypes = { "python" },
  settings = {
    configurationSources = { "flake8" },
    formatCommand = { "black" },
  },
  -- settings = {
  --   pylsp = {
  --     plugins = {
  --       -- formatter options
  --       black = { enabled = true },
  --       autopep8 = { enabled = false },
  --       yapf = { enabled = false },
  --       -- linter options
  --       pylint = { enabled = true, executable = "pylint" },
  --       ruff = { enabled = false },
  --       pyflakes = { enabled = false },
  --       pycodestyle = { enabled = false },
  --       -- type checker
  --       -- pylsp_mypy = {
  --       --   enabled = true,
  --       --   overrides = { "--python-executable", py_path, true },
  --       --   report_progress = true,
  --       --   live_mode = false,
  --       -- },
  --       -- auto-completion options
  --       jedi_completion = { fuzzy = true },
  --       -- import sorting
  --       isort = { enabled = true },
  --     },
  --   },
  -- },
  -- flags = {
  --   debounce_text_changes = 200,
  -- },
  -- capabilities = capabilities,
})
