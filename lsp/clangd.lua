return {
  cmd = { 'clangd', '--header-insertion=never' },
  on_attach = function(_, bufnr)
    print 'configging clangd from lua lsp rtp folder'
  end,
}
