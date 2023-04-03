local prefix = "<leader>r"
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

  -- { "rose-pine/neovim", event = "VeryLazy" },
  {
    "navarasu/onedark.nvim",
    event = "VeryLazy",
    config = function()
      require("onedark").setup {
        -- style = "warmer",
        style = "warm",
        -- transparent = true,
        lualine = {
          transparent = true,
        },
        -- Plugins Config --
        diagnostics = {
          darker = true, -- darker colors for diagnostic
          undercurl = true, -- use undercurl instead of underline for diagnostics
          background = true, -- use background color for virtual text
        },
      }
    end,
  },
  -- {
  --   "NvChad/base46",
  --   branch = "master",
  --   config = function()
  --     local ok, base46 = pcall(require, "base46")
  --
  --     if ok then base46.load_theme() end
  --   end,
  -- },
  -- {
  --   "NvChad/ui",
  --   branch = "main",
  --   after = "base46",
  --   config = function()
  --     local present, nvchad_ui = pcall(require, "nvchad_ui")
  --
  --     if present then nvchad_ui.setup() end
  --   end,
  -- },
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
  { "rodjek/vim-puppet" },
  { "pearofducks/ansible-vim" },
  {
    "phaazon/hop.nvim",
    branch = "v2",
    event = "BufRead",
    config = function()
      require("hop").setup()
      -- vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },
  {
    "sindrets/diffview.nvim",
    event = "User AstroFile",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  {
    "nvim-pack/nvim-spectre",
    cmd = "Spectre",
    keys = {
      { prefix, desc = "Search / [r]eplace", mode = { "n", "x" } },
      { prefix .. "s", function() require("spectre").open() end, desc = "Spectre" },
      {
        prefix .. "w",
        mode = "n",
        function() require("spectre").open_visual { select_word = true } end,
        desc = "Spectre (current word)",
      },
      { prefix .. "f", function() require("spectre").open_file_search() end, desc = "Spectre (current file)" },
    },
    opts = function()
      return {
        mapping = {
          send_to_qf = { map = "q" },
          replace_cmd = { map = "c" },
          show_option_menu = { map = "o" },
          run_current_replace = { map = "C" },
          run_replace = { map = "R" },
          change_view_mode = { map = "v" },
          resume_last_search = { map = "l" },
        },
      }
    end,
  },
  { "bluz71/vim-nightfly-guicolors" },
  { "rodjek/vim-puppet" },
  { "pearofducks/ansible-vim" },
  {
    "nvim-telescope/telescope.nvim", -- tag = '0.1.1',
    -- dependencies = { "nvim-lua/plenary.nvim" },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
    },
    -- require("telescope").setup {
    opts = {
      -- defaults = {
      -- ...
      -- },
      pickers = {
        find_files = {
          theme = "ivy",
        },
        grep_string = {
          theme = "ivy",
        },
        live_grep = {
          theme = "ivy",
        },
      },
      -- extensions = {
      -- ...
      -- },
    },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      default_component_configs = {
        -- container = {
        --   enable_character_fade = true,
        -- },
        indent = {
          indent_size = 2,
          padding = 1, -- extra padding on left hand side
          -- indent guides
          with_markers = true,
          indent_marker = "│",
          last_indent_marker = "└",
        },
      },
    },
  },
  -- {
  -- 	"norcalli/nvim-colorizer.lua",
  -- 	event = { "BufRead" },
  -- 	config = function()
  -- 		-- load nvim-colorizer
  -- 		vim.cmd([[ColorizerAttachToBuffer]])
  -- 	end,
  -- },
}
