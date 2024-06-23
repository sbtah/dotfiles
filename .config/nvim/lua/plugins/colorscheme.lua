-- Dracula scheme:
return {
    {"Mofiqul/dracula.nvim" }, {"LazyVim/LazyVim", opts = { colorscheme = "dracula", priority = 1000, lazy = false}},
    config = function()
        vim.cmd.colorscheme "dracula"
    end
}

