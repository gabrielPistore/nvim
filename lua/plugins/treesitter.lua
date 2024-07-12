return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opt = {
    ensure_installed = {
      "lua",
    },
    highlight = { enable = true },
    indent = { enable = true },
  }
}
