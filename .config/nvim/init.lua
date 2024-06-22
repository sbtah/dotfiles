-- Seting vimrc commands in lua config via vim.cmd
vim.cmd("set termguicolors")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.g.mapleader = " "


-- LazyVim bootstrap script.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- All plugins that I'm currently using.
local plugins = {
    {"Mofiqul/dracula.nvim" }, {"LazyVim/LazyVim", opts = { colorscheme = "dracula", priority = 1000, lazy = false}},
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}, 
    {"nvim-telescope/telescope.nvim", tag = "0.1.6", dependencies = { "nvim-lua/plenary.nvim" }},
   -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}

local opts = {
}

require("lazy").setup(plugins, opts)

--vim.cmd.colorscheme "dracula"

-- Treesitter config
local config = require("nvim-treesitter.configs")
config.setup(
    {
        ensure_installed = {"lua", "python"},
        highlight = { enable = true },
        indent = { enable = true },
    }
)

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

