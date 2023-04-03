-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
-- TODO: add
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- vim.keymap.set("n", "J", "mzJ`z")
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")

return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    -- ["<leader>?"] = {
    --   function()
    --     require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
    --       winblend = 10,
    --       previewer = false,
    --     })
    --   end,
    --   desc = "Search in here",
    -- },
    -- ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<leader>w"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    ["<F2>"] = { ":DiffviewClose<cr>", desc = "Close Diff View" }, -- closing Diffview
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- Navigate tabs
    ["<S-l>"] = { "<cmd>bnext<cr>", desc = "Next tab" },
    ["<S-h>"] = { "<cmd>bprevious<cr>", desc = "Previous tab" },
    -- maps.n["[t"] = { function() vim.cmd.tabprevious() end, desc = "Previous tab" }
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
