local theme = {}

function theme.setup()

    local styles = { comments = "italic", functions = "bold", keywords = "italic", variables = "NONE", }

    local color = require("cs.palette").colors

    theme.highlights = {
        ----------------------------------------
        --          Base Highlights           --
        ----------------------------------------
        Normal = { fg = color.foreground, bg = color.background },
        NormalFloat = { link = "Normal" },

        SpecialKey = { fg = color.color3 },


        Boolean = { fg = color.color21 },
        Character = { link = "String" },
        Comment = { fg = color.comment },
        Statement = { fg = color.color3, bold = true },
        Constant = { fg = color.color20},
        String = { fg = color.color2 },
        Special = { link = "SpecialKey" },
        Function = { fg = color.color24, bold = true},
        Error = { fg = color.color8 },
        -- Keyword = { fg = color.color12, bold = true },
        Delimiter = { fg = color.black },
        Operator = { fg = color.black},
        Type = { fg = color.color3, bold = true},
        Identifier = { fg = color.black},
        Todo = { fg = color.color11 },
        PreProc = { fg = color.color4 },
        underline = { underline = true },

        MatchParen = { fg = color.color3, bold = true, underline = true},


        LineNr = { fg = color.color8 },
		WinSeparator = { fg = color.color16 },

        SignColumn = { link = "LineNr"},
        FoldColumn = { link = "SignColumn" },

		Conceal = { fg = color.color15 },
		SpellBad = { fg = color.color16, undercurl = true },
		SpellCap = { link = "SpellBad" },
		SpellLocal = { link = "SpellBad" },
		SpellRare = { link = "SpellBad" },

        Cursor = { bg = color.color16},
        TermCursor = { bg = color.color16},
        CursorLine = { bg = color.cursorline },
        CursorLineNr = { fg = color.black, bg = color.cursorline },
        Directory = { fg = color.color4 },

        Pmenu = { fg = color.black, bg = color.background },
        PmenuSel = { fg = color.color1, bg = color.color6 },

        Search = { fg = color.color1, bg = color.color4 },
        Title = { fg = color.color4, bold = true },
        Visual = { bg = color.color6 },
        WarningMsg = { fg = color.color3 },
        ModeMsg = { fg = color.color3},

		DiffAdd = { fg = color.color2 },
		DiffChange = { fg = color.color19 },
		DiffDelete = { fg = color.color1 },

        ----------------------------------------
        --              LSP                   --
        ----------------------------------------
        DiagnosticError = { fg = color.color1 },
        DiagnosticWarn = { fg = color.color3 },
        DiagnosticInfo = { fg = color.color4 },
        DiagnosticHint = { fg = color.color2 },
		DiagnosticOk = { fg = color.color9 },
		DiagnosticUnderlineError = { sp = color.color3, undercurl = true },
		DiagnosticUnderlineHint = { sp = color.color17, undercurl = true },
		DiagnosticUnderlineInfo = { sp = color.color3, undercurl = true },
		DiagnosticUnderlineOk = { sp = color.color9, undercurl = true },
		DiagnosticUnderlineWarn = { sp = color.color19, undercurl = true },

        ----------------------------------------
        --              Treesitter            --
        ----------------------------------------
        ["@variable"] = { link = "Identifier"},
        ["@variable.builtin"] = { link = "Type" },
        ["@variable.parameter"] = { link = "Identifier"},
        ["@variable.member"] = { link = "Identifier"},

		["@type"] = { link = "Type" },
		["@type.builtin"] = { link = "Type" },
		["@type.qualifier"] = { link = "Type" },
		["@type.definition"] = { link = "Typedef" },

		["@constant"] = { link = "Constant" },
		["@constant.builtin"] = { link = "Type" },
		["@constant.macro"] = { link = "Define" },

		["@string"] = { link = "String" },
		["@string.documentation"] = { link = "String" },
		["@string.regexp"] = { link = "String" },
		["@string.escape"] = { link = "SpecialChar" },
		["@string.special"] = { link = "SpecialChar" },
		["@string.special.symbol"] = { link = "Identifier" },
		["@string.special.path"] = { link = "Underlined" },
		["@string.special.url"] = { link = "Underlined" },

		["@character"] = { link = "Character" },
		["@character.special"] = { link = "SpecialChar" },

        ["@module"] = { link = "Type" },
		["@module.builtin"] = { link = "Include" },
		["@label"] = { link = "Label" },

		["@boolean"] = { link = "Boolean" },
		["@number"] = { link = "Number" },
		["@number.float"] = { link = "Float" },

		["@operator"] = { link = "Type" },

		["@attribute"] = { link = "PreProc" },
		["@property"] = { link = "Identifier" },

		["@function"] = { link = "Function" },
		["@function.builtin"] = { link = "Special" },
		["@function.call"] = { link = "Special" },
		["@function.macro"] = { link = "PreProc" },

		["@function.method"] = { link = "@function" },
		["@function.method.call"] = { link = "@function.call" },

		["@constructor"] = { link = "@function" },

        ["@keyword"] = { link = "Keyword" },
		["@keyword.coroutine"] = { link = "Keyword" },
		["@keyword.function"] = { link = "Type" },
		["@keyword.operator"] = { link = "Keyword" },
		["@keyword.import"] = { link = "Include" },
		["@keyword.storage"] = { link = "Keyword" },
		["@keyword.repeat"] = { link = "Repeat" },
		["@keyword.return"] = { link = "Keyword" },
		["@keyword.debug"] = { link = "Debug" },
		["@keyword.exception"] = { link = "Exception" },

		["@keyword.conditional"] = { link = "Conditional" },
		["@keyword.conditional.ternary"] = { link = "Conditional" },
		["@keyword.directive"] = { link = "PreProc" },
		["@keyword.directive.define"] = { link = "PreProc" },

		["@punctutation.delimiter"] = { link = "Delimiter" },
		["@punctutation.bracket"] = { link = "Delimiter" },
		["@punctutation.special"] = { link = "Delimiter" },

		["@comment"] = { link = "Comment" },
		["@comment.documentation"] = { link = "Comment" },

		["@comment.warning"] = { link = "WarningMsg" },
		["@comment.error"] = { link = "Error" },
		["@comment.todo"] = { link = "Todo" },
		["@comment.note"] = { link = "SpecialComment" },
		--
		["@markup.strong"] = { bold = true },
		["@markup.emphasis"] = { italic = true },
		["@markup.underline"] = { underline = true },
		["@markup.strike"] = { strikethrough = true },

		["@markup.heading"] = { link = "Title" },
		["@markup.heading.gitcommit"] = { link = "@spell" },

		["@markup.quote"] = { link = "Comment" },
		["@markup.math"] = { link = "Special" },
		["@markup.environment"] = { link = "Macro" },

		["@markup.link"] = { link = "Underlined" },
		["@markup.link.label"] = { link = "SpecialChar" },
		["@markup.link.url"] = { link = "Keyword" },

		["@markup.raw"] = { link = "SpecialComment" },
		["@markup.raw.block"] = {},

		["@markup.list"] = { link = "Identifier" },
		["@markup.list.checked"] = { link = "Comment" },
		["@markup.list.unchecked"] = { link = "Identifier" },

		["@tag"] = { link = "Label" },
		["@tag.delimiter"] = { link = "Delimiter" },
		["@tag.attribute"] = { link = "Identifier" },

		["@diff.plus"] = { link = "DiffAdd" },
		["@diff.minus"] = { link = "DiffDelete" },
		["@diff.delta"] = { link = "DiffChange" },


        -- nvim-cmp
		CmpItemAbbr = { fg = color.color3, bold = true },
		CmpItemAbbrDeprecated = { fg = color.color19 },
		CmpItemAbbrMatch = { link = "Identifier" },
		CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },

		CmpItemKindText = { fg = color.black },
		CmpItemKindSnippet = { fg = color.color18 },
		CmpItemKindConstant = { fg = color.color3 },
		CmpItemKindVariable = { fg = color.color3 },
		CmpItemKindKeyword = { fg = color.color19 },
		CmpItemKindMethod = { fg = color.color11 },
		CmpItemKindFunction = { link = "CmpItemKindMethod" },
		CmpItemKindConstructor = { link = "CmpItemKindMethod" },
		CmpItemKindClass = { fg = color.color12 },
		CmpItemKindInterface = { link = "CmpItemKindClass" },
		CmpItemKindModule = { link = "CmpItemKindClass" },
		CmpItemKindStruct = { link = "CmpItemKindClass" },
    }

    for group, hl in pairs(theme.highlights) do
        vim.api.nvim_set_hl(0, group, hl)
    end
end

return theme
