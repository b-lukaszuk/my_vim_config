local nvim_lsp = require('lspconfig')
local servers = { 'metals' }

-- metals (lsp for Scala), root_dir ("build.sbt", "build.sc", "build.gradle", "pom.xml")

for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup { }
end
