local theme = {}

function theme.setup()

    local styles = { comments = "italic", functions = "bold", keywords = "italic", variables = "NONE", }

    local color = require("cs.palette").colors

    theme.highlights = {
        -- Base highlights
        Normal = { fg = color.foreground, bg = color.background },
        NormalFloat = { link = "Normal" },

        Boolean = { link = "String" },
        Character = { link = "String" },
        Comment = { fg = color.comment },
        Conditional = { fg = color.color12, bold = true },
        Constant = { fg = color.color3 },
        String = { fg = color.color2 },
        Function = { fg = color.color16,},
        Error = { fg = color.color8 },
        Keyword = { fg = color.color12 },
        Delimiter = { fg = color.color16 },
        Operator = { fg = color.color16 },
        Type = { fg = color.color3, bold = true},
        Identifier = { fg = color.color16 },
        Todo = { fg = color.color11 },
        PreProc = { fg = color.color4 },

        MatchParen = { fg = color.color3, bold = true },


        LineNr = { fg = color.color8 },

        CursorLine = { bg = color.cursorline },
        CursorLineNr = { fg = color.black, bg = color.cursorline },
        Directory = { fg = color.color4 },

        Pmenu = { fg = color.black, bg = color.background },
        PmenuSel = { fg = color.color1, bg = color.color6 },

        Search = { fg = color.color1, bg = color.color4 },
        Title = { fg = color.color4, bold = true },
        Visual = { bg = color.color6 },
        WarningMsg = { fg = color.color3 },

        -- LSP
        DiagnosticError = { fg = color.color1 },
        DiagnosticWarn = { fg = color.color3 },
        DiagnosticInfo = { fg = color.color4 },
        DiagnosticHint = { fg = color.color2 },

        -- Treesitter
        ["@variable"] = { link = "Identifier"},
        ["@variable.builtin"] = { link = "Type" },
        ["@variable.parameter"] = { link = "Identifier"},
        ["@variable.member"] = { link = "Identifier"}


    }

    for group, hl in pairs(theme.highlights) do
        vim.api.nvim_set_hl(0, group, hl)
    end
end

return theme
