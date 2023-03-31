local prefix = "<leader>s"
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
			{ prefix,        desc = "Search / Replace",                mode = { "n", "x" } },
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
	{ "navarasu/onedark.nvim" },
	-- {
	-- 	"norcalli/nvim-colorizer.lua",
	-- 	event = { "BufRead" },
	-- 	config = function()
	-- 		-- load nvim-colorizer
	-- 		vim.cmd([[ColorizerAttachToBuffer]])
	-- 	end,
	-- },
}
