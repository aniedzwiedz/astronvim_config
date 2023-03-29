return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- TODO:  test
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- config = function()
    --   require("todo-comments").setup {}
    -- end
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
  },
  {
    "xiyaowong/transparent.nvim",
    event = "VeryLazy",
    config = function() vim.cmd [[TransparentEnable]] end,
  },
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
    -- cmd = "GitBlameDisable",
    -- opts  = { gitblame_enabled = 0, },
    config = function() vim.cmd [[GitBlameDisable]] end,
    keys = {
      { "<leader>gB", "<cmd>GitBlameToggle<cr>", desc = "GitBlameToggle on/off" },
    },
  },
}
