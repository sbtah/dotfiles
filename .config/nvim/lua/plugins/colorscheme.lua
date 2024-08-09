-- Dracula:
-- return {
-- 	{ "Mofiqul/dracula.nvim" },
-- 	{ "LazyVim/LazyVim", opts = { colorscheme = "dracula", priority = 1000, lazy = false } },
-- 	config = function()
-- 		vim.cmd.colorscheme("dracula")
-- 	end,
-- }

-- Tokyo:
return {
	{ "folke/tokyonight.nvim" },
	{ "LazyVim/LazyVim", opts = { colorscheme = "tokyonight", priority = 1000, lazy = false } },
	config = function()
		vim.cmd.colorscheme("tokynight-moon")
	end,
}

-- Pomandres:
-- return {
-- 	{ "olivercederborg/poimandres.nvim" },
-- 	{ "LazyVim/LazyVim", opts = { colorscheme = "poimandres", lazy = false, priority = 1000 } },
-- 	config = function()
-- 		vim.cmd("colorscheme poimandres")
-- 	end,
-- }
