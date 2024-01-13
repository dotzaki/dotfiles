return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    sources = { "filesystem", "buffers", "document_symbols" },
    source_selector = { winbar = true },
    indent = {
      indent_size = 1,
    },
    name = {
      trailing_slash = true,
    },
    window = {
      position = "float",
      auto_expand_width = true,
    },
  },
}
