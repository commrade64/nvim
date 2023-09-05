local status, nvim_treesiter_configs = pcall(require, "nvim-treesitter.configs")
if not status then
  print("nvim-treesitter is not installed")
  return
end

---@diagnostic disable-next-line: missing-fields
nvim_treesiter_configs.setup({
  ensure_installed = {
    'bash',
    'bibtex',
    'c',
    'c_sharp',
    'cpp',
    'css',
    'go',
    'html',
    'javascript',
    'json',
    'latex',
    'lua',
    'markdown',
    'markdown_inline',
    'nix',
    'python',
    'rust',
    'scss',
    'sql',
    'toml',
    'typescript',
    'vim',
    'vimdoc',
  },

  auto_install = false,

  highlight = { enable = true },

  indent = { enable = true },
})
