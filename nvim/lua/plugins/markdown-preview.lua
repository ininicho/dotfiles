return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    keys = {
      {
        "<leader>mp",
        function()
          vim.cmd([[MarkdownPreviewToggle]])
        end,
        desc = "Markdown Preview Toggle",
      },
      {
        "<leader>mm",
        function()
          vim.cmd([[MarkdownPreview]])
        end,
        desc = "Markdown Preview",
      },
    },
  },
}
