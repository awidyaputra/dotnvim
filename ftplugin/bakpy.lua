local nmap = function(keys, func, desc)
  if desc then
    desc = 'LSP: ' .. desc
  end

  vim.keymap.set('n', keys, func, { desc = desc })
end

nmap('<leader>kr', ':w<cr>:!python %<cr>', 'Run current python file')

vim.lsp.config('jedi-language-server', {})
vim.lsp.enable { 'jedi-language-server' }
