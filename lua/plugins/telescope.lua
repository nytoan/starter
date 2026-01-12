return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = {
        horizontal = { width = 0.95, height = 0.9, preview_width = 0.5 },
        vertical = { width = 0.9, height = 0.9 },
        center = { width = 0.8, height = 0.8 },
      },
    },
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
      git_files = {
        file_ignore_patterns = {
          "%.g%.dart$",
          "%.freezed%.dart$",
        },
        hidden = true,
        no_ignore = false,
      },
      lsp_references = {
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
