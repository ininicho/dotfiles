return {
  {
    "lervag/vimtex",
    dependencies = {
      "L3MON4D3/LuaSnip",
    },
    lazy = true,
    ft = "tex",
    -- keys = {
    --   {
    --     "<leader>lc",
    --     function()
    --       vim.cmd([[<plug>(vimtex-clean)]])
    --     end,
    --     desc = "Latex Clean",
    --   },
    --   {
    --     "<leader>lC",
    --     function()
    --       vim.cmd([[<plug>(vimtex-clean-full)]])
    --     end,
    --     desc = "Latex Clean Full",
    --   },
    --   {
    --     "<leader>ll",
    --     function()
    --       vim.cmd("<plug>(vimtex-compile)")
    --     end,
    --     desc = "Latex Compile",
    --   },
    --   {
    --     "<leader>lv",
    --     function()
    --       vim.cmd([[<plug>(vimtex-view)]])
    --     end,
    --     desc = "Latex View",
    --   },
    --   {
    --     "<leader>ls",
    --     function()
    --       vim.cmd([[<plug>(vimtex-stop)]])
    --     end,
    --     desc = "Latex Stop",
    --   },
    --   {
    --     "<leader>lS",
    --     function()
    --       vim.cmd([[<plug>(vimtex-stop-all)]])
    --     end,
    --     desc = "Latex Stop All",
    --   },
    -- },
    init = function()
      vim.cmd([[syntax enable]])
      vim.g.vimtex_view_method = "sioyek"

      vim.keymap.set("n", "<leader>lc", "<plug>(vimtex-clean)", { desc = "Clean" })
      vim.keymap.set("n", "<leader>lC", "<plug>(vimtex-clean-full)", { desc = "Clean Full" })
      vim.keymap.set("n", "<leader>ll", "<plug>(vimtex-compile)", { desc = "Compile" })
      vim.keymap.set("n", "<leader>lv", "<plug>(vimtex-view)", { desc = "View" })
      vim.keymap.set("n", "<leader>ls", "<plug>(vimtex-stop)", { desc = "Stop" })
      vim.keymap.set("n", "<leader>lS", "<plug>(vimtex-stop-all)", { desc = "Stop All" })
    end,
  },
}
