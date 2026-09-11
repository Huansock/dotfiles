if vim.b.did_ftplugin then
  return
end
vim.b.did_ftplugin = 1

vim.lsp.enable('rust_analyzer')
