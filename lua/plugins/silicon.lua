-- Adding silicon.nvim plugin

return {
  "michaelrommel/nvim-silicon",
  lazy = true,
  cmd = "Silicon",
  init = function()
    local wk = require("which-key")
    wk.register({
      ["<leader>S"] = { ":Silicon<CR>", "Silicon: Capture code to image" },
    }, { mode = "v" })
    wk.register({
      ["<leader>S"] = { ":Silicon<CR>", "Silicon: Capture code to image" },
      { mode = "n" },
    })
  end,
  config = function()
    require("silicon").setup({
      font = "FiraCode Nerd Font=34; Noto Color Emoji=34",
      theme = "DarkNeon",
      output = function()
        os.execute("mkdir -p ~/Pictures/Silicon")
        return "~/Pictures/Silicon/" .. os.date("!%Y-%m-%dT%H-%M-%S") .. "_code.png"
      end,
      window_title = function()
        return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":t")
      end,
    })
  end,
}
