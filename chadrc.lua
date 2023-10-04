---@type ChadrcConfig
local M = {}

vim.g.mapleader = ";"

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  -- nvdash (dashboard)
  nvdash = {
    load_on_startup = true,

    header = {
      "       _                        ",
      "       `*-.                     ",
      "        )  _`-.                 ",
      "       .  : `. .                ",
      "       : _   '                  ",
      "       ; *` _.   `*-._          ",
      "       `-.-'          `-.       ",
      "         ;       `       `.     ",
      "         :.       .        \\    ",
      "         . \\  .   :   .-'   .   ",
      "         '  `+.;  ;  '      :   ",
      "         :  '  |    ;       ;-. ",
      "         ; '   : :`-:     _.`* ;",
      "[bug] .*' /  .*' ; .*`- +'  `*' ",
      "      `*-*   `*-*  `*-*'        ",
    },

    buttons = {
      { "  Find File", "; f f", "Telescope find_files" },
      { "󰈚  Recent Files", "; f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "; f w", "Telescope live_grep" },
      { "  Bookmarks", "; m a", "Telescope marks" },
      { "  Mappings", "; c h", "NvCheatsheet" },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
