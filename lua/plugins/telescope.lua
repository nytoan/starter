return {
  "nvim-telescope/telescope.nvim",
  opts = {
    pickers = {
      find_files = {
        file_ignore_patterns = {
          "%.g%.dart$",
          "%.freezed%.dart$",
        },
        hidden = true,
        no_ignore = false,
      },
      live_grep = {
        file_ignore_patterns = {
          "%.g%.dart$",
          "%.freezed%.dart$",
        },
        hidden = true,
        no_ignore = false,
      },
    },
  },
}
