-- Adding silicon.nvim plugin

return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	cmd = "Silicon",
	main = "nvim-silicon",
	opts = {
		font = "FiraCode Nerd Font=34; Noto Color Emoji=34",
		theme = "DarkNeon",
		output = function()
			os.execute("mkdir -p ~/Pictures/Silicon")
			return "~/Pictures/Silicon/" .. os.date("!%Y-%m-%dT%H-%M-%S") .. "_code.png"
		end,
		window_title = function()
			return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":t")
		end,
	},
}
