require("lspconfig")["gdscript"].setup({
  name = "godot",
  cmd = vim.lsp.rpc.connect("localhost", 6005),
})
