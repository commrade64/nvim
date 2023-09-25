local status, telescope = pcall(require, 'telescope')
if not status then
  print("telescope is not installed")
  return
end

telescope.setup({
  extensions = {
    fuzzy = true,
    override_generic_sorter = true,
    override_file_sorter = true,
    case_mode = "respect_case",
  }
})

telescope.load_extension("fzf")
