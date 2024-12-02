return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              pythonPath = vim.fn.system("poetry env info --path"):gsub("%s+", "") .. "/bin/python",
            },
          },
        },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright", -- 自動安裝 Pyright
      },
    },
  },
}

