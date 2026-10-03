return {
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "nyoom-engineering/oxocarbon.nvim",
    -- priority = 1000,
    build = false,
  },
  -- {
  --   "jesseleite/nvim-noirbuddy",
  --   lazy = false,
  --   priority = 1000,
  --   dependencies = {
  --     { "tjdevries/colorbuddy.nvim", branch = "dev" },
  --   },
  --   opts = {
  --     -- colors = {
  --     --   background = "#19191F",
  --     --   primary = "#89A7B1",
  --     --   secondary = "#566981",
  --     -- },
  --     preset = "miami-nights",
  --   },
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oxocarbon",
    },
  },
}
