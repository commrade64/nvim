-- Remove any trailing whitespace on file savesvim.api.nvim_create_autocmd(
vim.cmd [[
  autocmd BufWritePre *.lua :%s/\s\+$//e
]]
