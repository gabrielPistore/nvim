return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opt = {
    ensure_installed = {
      "html",
      "javascript",
      "jsdoc",
      "lua",
      "luadoc",
      "python",
    },
    highlight = { enable = true },
    indent = { enable = true },
  },
}
