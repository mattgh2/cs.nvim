local theme = {}

function theme.setup()

    local styles = { comments = "italic", functions = "bold", keywords = "italic", variables = "NONE", }

    local color = require("cs.palette").colors

    theme.highlights = {
        -- Base highlights
        Boolean = { fg = color.color5 },
        Character = { fg = color.color2 },
        Comment = { fg = color.comment},
        Conditional = { fg = color.color12, bold = true },
        Constant = { fg = color.color3 },
        CursorLine = { bg = color.cursorline },
        CursorLineNr = { fg = color.foreground, bg = color.cursorline },
        Directory = { fg = color.color4 },
        Error = { fg = color.color1 },
        Function = { fg = color.color16,},
        Identifier = { fg = color.color7 },
        Keyword = { fg = color.color12},
        LineNr = { fg = color.color8 },
        Normal = { fg = color.foreground, bg = color.background },
        Pmenu = { fg = color.color6, bg = color.cursorline },
        PmenuSel = { fg = color.color1, bg = color.color6 },
        Search = { fg = color.color1, bg = color.color4 },
        String = { fg = color.color2 },
        Title = { fg = color.color4, bold = true },
        Type = { fg = color.color3, bold = true},
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

    for group, hl in pairs(theme.highlights) do
        vim.api.nvim_set_hl(0, group, hl)
    end
end

return theme
