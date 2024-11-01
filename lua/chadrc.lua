-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },

    ["@variable.parameter"] = { fg = "#bb9966" },

    -- Normal = { bg = "#282d33" },
    -- NormalFloat = { bg = "#282d33" },
    -- CursorLine = { bg = "#353a44" },
    --
    -- TabLineFill = { bg = "#ff0000" },
    --
    -- NvimTreeNormal = { bg = "#282d33" },
    -- NvimTreeNormalNC = { bg = "#282d33" },
    -- NvimTreeFileIcon = { fg = "#c678dd" },
    -- NvimTreeCursorLine = { bg = "#353a44" },
    -- NvimTreeWinSeparator = { bg = "#282d33" },
    --
    -- TelescopeNormal = { bg = "#202528" },
    -- TelescopeBorder = { bg = "#202528", fg = "#282d33" },
    -- TelescopePromptNormal = { bg = "#202528" },
    -- TelescopePromptBorder = { bg = "#202528", fg = "#282d33" },
    -- TelescopePromptPrefix = { bg = "#202528" },
    -- TelescopePromptTitle = { bg = "#202528", fg = "#aaaaaa" },
    -- TelescopeResultsTitle = { bg = "#202528", fg = "#aaaaaa" },
    -- TelescopePreviewTitle = { bg = "#202528", fg = "#aaaaaa" },
  },
}


return M
