-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {

  theme_toggle = { "tokyonight", "ayu-dark" },
  theme = "tokyonight",

}

M.plugins = {
   user = {
      ["goolord/alpha-nvim"] = {
         disable = false,
      },
   },
}

return M
