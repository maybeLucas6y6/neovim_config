local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

vim.g.rustaceanvim = {
    server = {
        on_attach = on_attach,
        capabilities = capabilities,
    }
}
