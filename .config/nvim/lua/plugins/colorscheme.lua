-- Dracula scheme:
-- return {
--     {"Mofiqul/dracula.nvim" }, {"LazyVim/LazyVim", opts = { colorscheme = "dracula", priority = 1000, lazy = false}},
--     config = function()
--         vim.cmd.colorscheme "dracula"
--     end
-- }
-- 
return {
    {"folke/tokyonight.nvim"}, {"LazyVim/LazyVim", opts = {colorscheme = "tokyonight", priority = 1000, lazy = false}},
    config = function ()
        vim.cmd.colorscheme "tokynight-moon"
    end
}
