local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
    -- 🔥 Filtrage du formatage si le fichier contient des {{ }}
    filter = function()
      local bufnr = vim.api.nvim_get_current_buf()
      local ft = vim.bo[bufnr].filetype -- récupère le type de fichier
      local content = table.concat(vim.api.nvim_buf_get_lines(bufnr, 0, -1, false), "\n")

      if ft == "javascript" or ft == "javascriptreact" then
        if content:match("{{.-}}") then
          vim.notify("Formatage ignoré : contient {{ }}", vim.log.levels.INFO)
          return false
        end
      end

      return true
    end,
  },
}

return options
