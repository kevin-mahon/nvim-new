-- setup must be called before loading
--
--
require("tokyonight").setup({

  style = "night",

  on_highlights = function(hl, colors)
      hl.Visual = {
          bg = colors.red
      }
      hl.VisualNOS = {
          bg = colors.red
      }
  end,
  --  colors.border_highlight = colors.red 
  --end, 
})

function FixColor(color)
    color = color or "tokyonight-night"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

FixColor()



