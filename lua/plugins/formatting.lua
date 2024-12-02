return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local null_ls = require("null-ls")
      -- 確保 opts.sources 初始化為空表格
      opts.sources = opts.sources or {}

      -- 使用 Black 格式化
      opts.sources = vim.list_extend(opts.sources, {
        null_ls.builtins.formatting.black,
      })
    end,
  },
}
