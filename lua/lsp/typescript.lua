local lspconfig = require("lspconfig")
local util = require("lspconfig.util")
lspconfig.tsserver.setup {
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    root_dir = util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
    single_file_support = true
}
