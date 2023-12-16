require("catppuccin").setup({
     flavour = "latte",
     background = {
          light = "latte",
          dark = "latte"
     }
})

function ColorMyPanes(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPanes()

