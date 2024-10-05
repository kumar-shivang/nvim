-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Example keymap:

vim.api.nvim_set_keymap("n", ";", ":", { noremap = true, silent = false })

-- <M-j> and <M-k> to move lines up and down in insert mode ie alt+j to <Up> and alt+k to <Down>
vim.api.nvim_set_keymap("i", "<M-j>", "<Down>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<M-k>", "<Up>", { noremap = true, silent = true })

-- <M-h> and <M-l> to move cursor left and right in insert mode ie alt+h to <Left> and alt+l to <Right>
vim.api.nvim_set_keymap("i", "<M-h>", "<Left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<M-l>", "<Right>", { noremap = true, silent = true })

-- <M-;> to move to the end of the line in insert mode
vim.api.nvim_set_keymap("i", "<M-;>", "<End>", { noremap = true, silent = true })

-- <M-u> to move to the beginning of the line in insert mode
vim.api.nvim_set_keymap("i", "<M-u>", "<Home>", { noremap = true, silent = true })

-- jj to escape in insert mode
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })

-- jk to escape and save in insert mode
vim.api.nvim_set_keymap("i", "jk", "<Esc>:w<CR>", { noremap = true, silent = true })

-- vim.api.nvim_set_keymap("n", "<C-.>", ":1ToggleTerm<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-.>", ":1ToggleTerm<CR>", { noremap = true, silent = true })

-- use to the same command in terminal mode as well
vim.api.nvim_set_keymap("t", "<C-.>", "<C-\\><C-n>:1ToggleTerm<CR>", { noremap = true, silent = true })

-- <C-2> to open terminal using 2ToggleTerm
vim.api.nvim_set_keymap("n", "<C-k2>", ":2ToggleTerm<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-k2>", "<C-\\><C-n>:2ToggleTerm<CR>", { noremap = true, silent = true })

-- <C-3> to open terminal using 3ToggleTerm
vim.api.nvim_set_keymap("n", "<C-k3>", ":3ToggleTerm<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-k3>", "<C-\\><C-n>:3ToggleTerm<CR>", { noremap = true, silent = true })

-- <C-;> to open outline
vim.api.nvim_set_keymap("n", "<C-;>", ":AerialToggle<CR>", { noremap = true, silent = true })

-- <leader-td> to open todo
vim.api.nvim_set_keymap("n", "<leader>td", ":TodoQuickFix<CR>", { noremap = true, silent = true })
-- <leader-S> to capture screenshot
-- vim.api.nvim_set_keymap("n", "<leader>S", ":Silicon<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<leader>S", ":Silicon<CR>", { noremap = true, silent = true })

local wk = require("which-key")
wk.add({
	mode = { "v" },
	{ "<leader>S", group = "Silicon" },
	-- {
	-- 	"<leader>Sc",
	-- 	function()
	-- 		require("nvim-silicon").clip()
	-- 	end,
	-- 	desc = "Copy code screenshot to clipboard",
	-- },
	{
		"<leader>Sf",
		function()
			require("nvim-silicon").file()
		end,
		desc = "Save code screenshot as file",
	},
	{
		"<leader>Ss",
		function()
			require("nvim-silicon").shoot()
		end,
		desc = "Create code screenshot",
	},
})
--add a shortcut for Copilot disable
-- vim.api.nvim_set_keymap("n", "<leader>cp", ":Copilot disable<CR>", { noremap = true, silent = true })

--add a shortcut for Copilot enable
-- vim.api.nvim_set_keymap("n", "<leader>cP", ":Copilot enable<CR>", { noremap = true, silent = true })
