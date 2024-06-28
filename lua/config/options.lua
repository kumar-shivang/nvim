-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local M = {}

-- Set the default options
M.options = {
	-- Set the default options
	autoindent = true,
	autoread = true,
	autowrite = true,
	backup = false,
	clipboard = "unnamedplus",
	cmdheight = 1,
	completeopt = "menuone,noselect",
	cursorline = true,
	expandtab = true,
	hidden = true,
	hlsearch = true,
	ignorecase = true,
	incsearch = true,
	laststatus = 2,
	list = true,
	number = true,
	relativenumber = true,
	ruler = true,
	scrolloff = 8,
	shiftwidth = 2,
	showmode = false,
	smartcase = true,
	smartindent = true,
	splitbelow = true,
	splitright = true,
	tabstop = 2,
	termguicolors = true,
	timeoutlen = 500,
	updatetime = 300,
	wrap = false,
}
