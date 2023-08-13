return {
  {
    "jesseleite/nvim-noirbuddy",
    lazy = false,
    priority = 1000,
    dependencies = {
      { "tjdevries/colorbuddy.nvim", branch = "dev" },
    },
    opts = {
      -- colors = {
      --   background = "#19191F",
      --   primary = "#89A7B1",
      --   secondary = "#566981",
      -- },
      preset = "slate",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "habamax",
    },
  },
}
