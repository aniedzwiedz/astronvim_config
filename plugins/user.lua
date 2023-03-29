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
	-- { "bluz71/vim-nightfly-guicolors" },
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
	-- {
	-- 	"sindrets/diffview.nvim",
	-- 	event = "User AstroFile",
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 	},
	-- },
	-- {
	-- 	"norcalli/nvim-colorizer.lua",
	-- 	event = { "BufRead" },
	-- 	config = function()
	-- 		-- load nvim-colorizer
	-- 		vim.cmd([[ColorizerAttachToBuffer]])
	-- 	end,
	-- },
}
