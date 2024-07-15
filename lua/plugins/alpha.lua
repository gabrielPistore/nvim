return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
    }
    dashboard.section.buttons.val = {
      dashboard.button("e", "[e] New file", ":ene<BAR>startinsert<CR>"),
      dashboard.button("f", "[f] Find file", ":Telescope find_files<CR>"),
      dashboard.button("g", "[g] Find text", ":Telescope live_grep<CR>"),
      dashboard.button("r", "[r] Recently used files", ":Telescope oldfiles<CR>"),
      dashboard.button("q", "[q] Quit", ":qa<CR>"),
    }
    alpha.setup(dashboard.opts)
  end,
}
