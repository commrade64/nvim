-- Remove any trailing whitespace on file savesvim.api.nvim_create_autocmd(
vim.cmd [[
  autocmd BufWritePre *.lua :%s/\s\+$//e
]]

-- Indentation (based on a filetype)
vim.api.nvim_create_autocmd("FileType", {
	pattern = "nix",
	callback = function()
		vim.opt_local.tabstop = 2
		vim.opt_local.softtabstop = 2
		vim.opt_local.shiftwidth = 2
	end
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "lua",
	callback = function()
		vim.opt_local.tabstop = 2
		vim.opt_local.softtabstop = 2
		vim.opt_local.shiftwidth = 2
	end
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "html",
	callback = function()
		vim.opt_local.tabstop = 2
		vim.opt_local.softtabstop = 2
		vim.opt_local.shiftwidth = 2
	end
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "css",
	callback = function()
		vim.opt_local.tabstop = 2
		vim.opt_local.softtabstop = 2
		vim.opt_local.shiftwidth = 2
	end
})