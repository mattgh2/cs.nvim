local theme = {}

function theme.setup()

    local styles = { comments = "italic", functions = "bold", keywords = "italic", variables = "NONE", }

    local color = require("cs.palette").colors
    theme.highlights = {
        -- Base highlights
        Boolean = { fg = color.color5 },
        Character = { fg = color.color3 },
        Comment = { fg = color.comment, style = styles.comments },
        Conditional = { fg = color.color4, style = styles.keywords },
        Constant = { fg = color.color2 },
        CursorLine = { bg = color.cursorline },
        CursorLineNr = { fg = color.foreground, bg = colors.cursorline },
        Directory = { fg = color.color4 },
        Error = { fg = color.color1 },
        Function = { fg = color.color6, style = styles.functions },
        Identifier = { fg = color.color7 },
        Keyword = { fg = color.color4, style = styles.keywords },
        LineNr = { fg = color.color8 },
        Normal = { fg = color.foreground, bg = colors.background },
        Pmenu = { fg = color.color6, bg = colors.cursorline },
        PmenuSel = { fg = color.color1, bg = colors.color6 },
        Search = { fg = color.color1, bg = colors.color4 },
        String = { fg = color.color2 },
        Title = { fg = color.color4, style = "bold" },
        Type = { fg = color.color3 },
        Visual = { bg = color.color6 },
        WarningMsg = { fg = color.color3 },

        -- LSP
        DiagnosticError = { fg = color.color1 },
        DiagnosticWarn = { fg = color.color3 },
        DiagnosticInfo = { fg = color.color4 },
        DiagnosticHint = { fg = color.color2 },

        -- Plugins: Telescope
        TelescopeBorder = { fg = color.color7 },
        TelescopeSelection = { fg = color.color6, bg = color.cursorline },
    }
end

  for group, colors in pairs(theme.highlights) do
    if colors.style then
      if type(colors.style) == "table" then
        colors = vim.tbl_extend("force", colors, colors.style)
      end
      colors.style = nil
    end
    vim.api.nvim_set_hl(0, group, colors)
  end
return theme
