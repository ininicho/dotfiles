return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        mappings = {
          ["o"] = "open",
        },
      },
    },
    keys = {
      {
        "<leader>o",
        function()
          require("neo-tree.command").execute({ action = "focus", dir = vim.loop.cwd() })
        end,
        desc = "Explorer NeoTree (open)",
      },
      {
        "<leader>e",
        function()
          require("neo-tree.command").execute({ action = "close", dir = vim.loop.cwd() })
        end,
        desc = "Explorer NeoTree (close)",
      },
    },
  },
}
