return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    local noice = require("noice")
    local notify = require("notify")

    notify.setup({
      timeout = 3000,
      render = "minimal",
      stages = "fade_in_slide_out",
      on_open = function(win)
        vim.api.nvim_win_set_config(win, { focusable = false })
      end,
    })

    noice.setup({
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      },
    })

    vim.keymap.set("n", "<Esc>", function()
      notify.dismiss()
    end, { desc = "dismiss notify popup and clear hlsearch" })
  end
}
