return {

   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
   },

   ["goolord/alpha-nvim"] = {
      disable = false,
   },

   ["windwp/nvim-ts-autotag"] = {},

}
