return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      local noirbuddy_lualine = require("noirbuddy.plugins.lualine")

      return {
        options = {
          theme = noirbuddy_lualine.theme,
          globalstatus = true,
          disabled_filetypes = { statusline = { "dashboard", "alpha" } },
          section_separators = { left = "", right = "" },
          component_separators = { left = "", right = "" },
        },
        sections = noirbuddy_lualine.sections,
        inactive_sessions = noirbuddy_lualine.inactive_sections,
        extensions = { "neo-tree", "lazy" },
      }
    end,
  },
}
