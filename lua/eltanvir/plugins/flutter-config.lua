return {
    "akinsho/flutter-tools.nvim",
    -- branch = "fvm-on-windows",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = function()
      vim.keymap.set("n", "<leader>FS", ":FlutterRun <CR>", {})
      vim.keymap.set("n", "<leader>FQ", ":FlutterQuit <CR>", {})
      vim.keymap.set("n", "<leader>FR", ":FlutterRestart <CR>", {})
      vim.keymap.set("n", "<leader>LR", ":FlutterLspRestart <CR>", {})
      vim.keymap.set("n", "<leader>FD", ":FlutterDevTools <CR>", {})
      require("flutter-tools").setup({
        fvm = true,
        decorations = {
          statusline = {
            app_version = true,
            device = true,
          },
        },
        dev_tools = {
          autostart = true, -- autostart devtools server if not detected
          auto_open_browser = true, -- Automatically opens devtools in the browser
        },
        lsp = {
          -- cmd = {"C:/Users/FATMAN/Documents/fvm/fvm.bat", "dart", "language-server", "--protocol=lsp"}, -- The command to run the dart lsp binary (e.g. { "/custom/dart/path", "language-server", "--protocol=lsp" })
          color = { -- show the derived colours for dart variables
            enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
          },
        },
      })
    end,
  }