-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[
  augroup FormatOnSave
    autocmd!
    autocmd BufWritePre *.py lua vim.lsp.buf.format({ async = false })
  augroup END
]])


