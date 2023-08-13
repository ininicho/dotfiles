return {
  {
    "moll/vim-bbye",
    keys = {
      {
        "<leader>q",
        "<cmd>Bdelete<cr>",
        desc = "Delete Buffer",
      },
      {
        "<leader>Q",
        ":bufdo :Bwipeout<cr>",
        desc = "Delete all Buffers",
      },
    },
    lazy = false,
  },
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        indicator = {
          icon = " ",
        },
        show_close_icon = false,
        tab_size = 0,
        max_name_length = 25,
        offsets = {
          {
            filetype = "neo-tree",
            text = " Files",
            text_align = "left",
          },
        },
        separator_style = "slant",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
      },
      highlights = {
        pick = { italic = false },
        buffer_selected = { italic = false },
      },
    },
  },
}
