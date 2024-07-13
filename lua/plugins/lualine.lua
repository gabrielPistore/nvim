return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = { theme = "tokyonight" },
  config = function()
    require("lualine").setup()
  end,
}
