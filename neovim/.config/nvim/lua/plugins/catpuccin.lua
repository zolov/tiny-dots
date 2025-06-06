return { 
	"catppuccin/nvim", 
	name = "catppuccin", 
	enable = true,
	priority = 1000,
    config = function()
        vim.opt.termguicolors = true

        local catppuccin = require("catppuccin")

        catppuccin.setup({
			flavor = "mocha",
            term_colors = true,
		})

        vim.cmd.colorscheme("catppuccin")
	end,
}
