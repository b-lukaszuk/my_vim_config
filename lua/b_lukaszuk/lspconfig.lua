local nvim_lsp = require('lspconfig')
local servers = { 'metals', 'tsserver' }

-- metals (lsp for Scala), root_dir ("build.sbt", "build.sc", "build.gradle", "pom.xml")
-- tsserver (lsp for TypeScript), root_dir ("package.json", "tsconfig.json", "jsconfig.json", ".git")

for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup { }
end
