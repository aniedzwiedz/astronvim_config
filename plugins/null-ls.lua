return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.beautysh,
      null_ls.builtins.formatting.puppet_lint,
      -- null_ls.builtins.formatting.npm_groovy_lint,
      -- null_ls.builtins.formatting.yamlfmt,
      -- null_ls.builtins.formatting.yq,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.prettierd,
      -- null_ls.builtins.formatting.rubocop,
      -- Set diagnostics
      null_ls.builtins.diagnostics.zsh,
      -- null_ls.builtins.diagnostics.ansiblelint,
      null_ls.builtins.diagnostics.trail_space,
      null_ls.builtins.code_actions.eslint,
      null_ls.builtins.code_actions.shellcheck,
      null_ls.builtins.code_actions.gitsigns,
      null_ls.builtins.code_actions.proselint,
      null_ls.builtins.hover.dictionary,
      -- null_ls.builtins.diagnostics.puppet_lint,
      -- null_ls.builtins.diagnostics.rubocop,
    }
    return config -- return final config table
  end,
}
