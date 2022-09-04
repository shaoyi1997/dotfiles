local M = {}
--
M.options = {
   user = function()
      vim.opt.keymodel = "startsel,stopsel"
   end,
}

M.plugins = {
   override = {
      ["nvim-treesitter/nvim-treesitter"] = {
         autotag = {
            enable = true,
         },
         ensure_installed = {
            "lua",
            "html",
            "tsx",
            "typescript",
            "javascript",
            "python",
            "bash",
            "c",
            "cpp",
         },
      },
   },
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
   user = require "custom.plugins"
}

M.ui = {
   theme = "catppuccin"
}

M.mappings = require "custom.mappings"

return M
