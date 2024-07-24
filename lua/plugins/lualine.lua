return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = { theme = "tokyonight" },
  config = function(_, opts)
    require("lualine").setup(opts)
  end,
}
