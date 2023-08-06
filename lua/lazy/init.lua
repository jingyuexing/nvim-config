local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
local plugins = {
  {
    "folke/tokyonight.nvim",
    config = function()
      require "themes.tokyohight"
    end,
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require "editor.autopairs"
    end,
    event = "VeryLazy",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "lsp.init"
    end,
  },
  -- {
  --   "ray-x/go.nvim",
  --   dependencies = { -- optional packages
  --     "ray-x/guihua.lua",
  --   },
  --   config = function()
  --   end,
  --   event = { "CmdlineEnter" },
  --   ft = { "go", 'gomod' }
  -- },
}
local opts = {

}
vim.opt.rtp:prepend(lazypath)
require("lazy").setup(plugins, opts)