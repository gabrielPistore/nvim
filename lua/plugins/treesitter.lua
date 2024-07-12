return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opt = {
    ensure_installed = {
      "lua",
      "python",
      "javascript",
      "html",
    },
    highlight = { enable = true },
    indent = { enable = true },
  }
}
