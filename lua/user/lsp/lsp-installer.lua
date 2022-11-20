local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    return
end

local servers = {
  "cssls",
  "cssmodules_ls",
  "emmet_ls",
  "html",
  "elixirls",
  "dockerls",
  "jdtls",
  "jsonls",
  "solc",
  "sumneko_lua",
  "tflint",
  "terraformls",
  "tsserver",
  "tailwindcss",
  "pyright",
  "yamlls",
  "bashls",
  "clangd",
  "rust_analyzer",
  "taplo",
  --"zk@v0.10.1",
}

local settings = {
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
}

lsp_installer.setup(settings)

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
    return
end

local opts = {}
-- Register a hendler that will be called for all installed servers
-- Alternatively, you can register a handler for a specific server
for _, server in pairs(servers) do
  -- opts = {
    --on_attach = require("user.lsp.handlers").on_attach,
    --capabilities = require("user.lsp.handlers").capabilities,
  -- } 

   server = vim.split(server, "@")[1]

  if server == 'sumneko_lua' then
    local sumneko_opt = require('user.lsp.settings.sumneko_lua')
    opts = vim.tbl_deep_extend('force', sumneko_opt, opts)
  end

  lspconfig[server].setup(opts)
  ::continue::

end
