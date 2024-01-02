function FixColors(color)
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)
end

FixColors()
