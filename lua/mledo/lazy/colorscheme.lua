return {
  "arzg/vim-colors-xcode",
  lazy = false,
  priority = 1000, -- Ensure it loads first
  config = function()
      vim.opt.termguicolors = true
      vim.cmd.colorscheme("xcodedarkhc")
  end
}
