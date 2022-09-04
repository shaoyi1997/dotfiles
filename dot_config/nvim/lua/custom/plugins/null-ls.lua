local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {

   -- c
   b.formatting.clang_format,

   -- webdev stuff
   b.formatting.prettier,
   b.diagnostics.eslint,

   -- Lua
   b.formatting.stylua,

   -- python
   b.diagnostics.flake8,
   b.diagnostics.pylint,
   b.formatting.black,

   -- Shell
   b.formatting.shfmt,
   b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
   debug = true,
   sources = sources,
}
