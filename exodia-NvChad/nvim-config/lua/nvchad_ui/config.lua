-- config

local options = {
  statusline = {

    separator_style = "customArrow",

    overriden_modules = nil,

  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = true,
    lazyload = true,
    overriden_modules = nil,
  },
}

options = require("core.utils").load_override(options, "NvChad/ui")

return options
