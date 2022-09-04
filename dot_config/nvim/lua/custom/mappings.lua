local M = {}

-- add this table only when you want to disable default keys
-- M.disabled = {
-- }

M.abc = {
   n = {
      ["<C-'>"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree", opts = {} },
      [";"] = { ":", "enter cmdline", opts = { nowait = true } },
      ["<C-w>"] = { "<cmd> Tbufclose <CR>", "Close current tab", opts = { nowait = true } },
      ["<C-/>"] = {
         function()
            require("Comment.api").toggle_current_linewise()
         end,
         "蘒  toggle comment",
      },
   },
   i = {
      ["<C-'>"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree", opts = {} },
      ["<S-Tab>"] = { "<C-d>", "Inverse tab", opts = {} },
   },
   v = {
      ["<C-/>"] = {
         "<ESC><cmd>lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>",
         "蘒  toggle comment",
      },
   },
}

return M
