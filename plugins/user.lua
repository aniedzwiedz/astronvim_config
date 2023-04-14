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

  -- {
  --   "rose-pine/neovim",
  --   lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000, -- make sure to load this before all the other start plugins
  -- },
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
  -- default = "",
  -- symlink = "",
  -- folder = {
  --   default = "",
  --   empty = "",
  --   empty_open = "",
  --   open = "",
  --   symlink = "",
  --   symlink_open = "",
  --   arrow_open = "",
  --   arrow_closed = "",
  -- },
  -- git = {
  --   unstaged = "✗",
  --   staged = "✓",
  --   unmerged = "",
  --   renamed = "➜",
  --   untracked = "★",
  --   deleted = "",
  --   ignored = "◌",
  {
    "rebelot/kanagawa.nvim",
    opts = {
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      terminalColors = true, -- define vim.g.terminal_color_{0,17}
      colors = {
        palette = {
          -- change all usages of these colors
          sumiInk0 = "#000000",
          -- Diff and Git
          winterGreen = "#2B3328",
          winterYellow = "#49443C",
          winterRed = "#43242B",
          winterBlue = "#252535",
          autumnGreen = "#76946A",
          autumnRed = "#C34043",
          autumnYellow = "#DCA561",
          fujiWhite = "#fffaf0",
        },
        theme = {
          -- change specific usages for a certain theme, or for all of them
          wave = {
            ui = {
              float = {
                bg = "none",
              },
            },
          },
          dragon = {
            syn = {
              parameter = "yellow",
            },
          },
          all = {
            ui = {
              bg_gutter = "none",
              bg = "none",
            },
          },
        },
      },
      theme = "dragon", -- Load "dragon" theme when 'background' option is not set
    },
  },
  {
    "NvChad/ui",
    branch = "v2.0",
    lazy = false,
    config = function()
      -- require "nvchad_ui"
    end,
  },

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
  -- {
  --   "xiyaowong/transparent.nvim",
  --   event = "VeryLazy",
  --   config = function() vim.cmd [[TransparentEnable]] end,
  -- },
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
  {
    "rodjek/vim-puppet",
    ft = "puppet",
    event = "BufRead",
  },
  {
    "pearofducks/ansible-vim",
    ft = "yaml.ansible",
    -- event = "BufRead",
    config = function()
      -- vim.cmd [[au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible]]
      vim.cmd [[au BufRead,BufNewFile *ctl.yml set filetype=yaml.ansible]]
    end,
  },
  {
    "nvim-telescope/telescope.nvim", -- tag = '0.1.1',
    -- dependencies = { "nvim-lua/plenary.nvim" },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
    },
    -- require("telescope").setup {
    opts = {
      defaults = {
        prompt_prefix = " 🍳  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
            results_width = 0.8,
          },
          vertical = {
            mirror = false,
          },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
      },
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
      open_files_do_not_replace_types = { "terminal", "trouble", "qf" }, -- when opening files, do not use windows containing these filetypes or buftypes
      default_component_configs = {
        -- container = {
        --   enable_character_fade = true,
        -- },
        indent = {
          indent_size = 3,
          padding = 1, -- extra padding on left hand side
          -- indent guides
          with_markers = true,
          indent_marker = "▪️",
          last_indent_marker = "👉",
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
