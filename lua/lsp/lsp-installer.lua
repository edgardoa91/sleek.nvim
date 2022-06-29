local status_ok, lsp_installer = pcall(
  require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
}))


if not status_ok then
    return
end

-- Register a hendler that will be called for all installed servers
-- Alternatively, you can register a handler for a specific server
lsp_installer.on_server_ready(function(server)
   local opts = {
      on_attach = require('lsp.handlers').on_attach,
      capabilities = require('lsp.handlers').capabilities,
   }

  if server.name == 'sumneko_lua' then
    local sumneko_opt = require('lsp.settings.sumneko_lua')
    opts = vim.tbl_deep_extend('force', sumneko_opt, opts)
  end


  server:setup(opts)
end)
