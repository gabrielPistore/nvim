return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opt = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      "html",
      "javascript",
      "jsdoc",
      "json",
      "lua",
      "luadoc",
      "python",
      "tsx",
      "typescript",
    },
  },
}
