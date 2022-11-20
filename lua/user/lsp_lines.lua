local status_ok, lsp_lines = pcall(require, "lsp_lines")
if not status_ok then
  return
end

-- local lines_enabled = false

lsp_lines.setup({})

vim.diagnostic.config({
  virtual_text = false,
  update_in_insert = true,
})

vim.keymap.set(
  "n",
  "1",
  require("lsp_lines").toggle,
  { desc = "Toggle lsp_lines" }
)

