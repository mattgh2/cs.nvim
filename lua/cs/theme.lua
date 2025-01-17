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

        SpecialKey = { fg = color.blue },


        Boolean = { fg = color.blue },
        String = { fg = color.red },
        Character = { link = "String" }, Comment = { fg = color.comment }, Statement = { fg = color.pink},

        Constant = { fg = color.turquoise},
        Special = { link = "SpecialKey" },
        Function = { fg = color.yellow},
        Error = { fg = color.error },
        -- Keyword = { fg = color.color12, bold = true },
        Delimiter = { fg = color.black },
        Operator = { fg = color.black},
        Type = { fg = color.blue},
        Identifier = { fg = color.black},
        Todo = { fg = color.orange },
        PreProc = { fg = color.pink},
        underline = { underline = true },

        MatchParen = { fg = color.black, bold = true, underline = true},


        LineNr = { fg = color.darkerturquoise },
		WinSeparator = { fg = color.black },

        SignColumn = { link = "LineNr"},
        FoldColumn = { link = "SignColumn" },

		Conceal = { fg = color.comment },
		SpellBad = { fg = color.color16, undercurl = true },
		SpellCap = { link = "SpellBad" },
		SpellLocal = { link = "SpellBad" },
		SpellRare = { link = "SpellBad" },

        Cursor = { bg = color.cursorline},
        TermCursor = { bg = color.cursorline},
        CursorLine = { bg = color.cursorline },
        CursorLineNr = { fg = color.black, bg = color.cursorline },
        Directory = { fg = color.black },

        Pmenu = { fg = color.black, bg = color.background },
        PmenuSel = { fg = color.red, bg = color.gray },

        Search = { fg = color.red, bg = color.blue },
        Title = { fg = color.turquoise, bold = true },
        Visual = { bg = color.gray },
        WarningMsg = { fg = color.blue },
        ModeMsg = { fg = color.blue},

		DiffAdd = { fg = color.green },
		DiffChange = { fg = color.orange },
		DiffDelete = { fg = color.red },

        ----------------------------------------
        --              LSP                   --
        ----------------------------------------
        DiagnosticError = { fg = color.error },
        DiagnosticWarn = { fg = color.blue },
        DiagnosticInfo = { fg = color.green },
        DiagnosticHint = { fg = color.lightgreen },
		DiagnosticOk = { fg = color.lightgreen },
		DiagnosticUnderlineError = { sp = color.blue, undercurl = true },
		DiagnosticUnderlineHint = { sp = color.gray, undercurl = true },
		DiagnosticUnderlineInfo = { sp = color.blue, undercurl = true },
		DiagnosticUnderlineOk = { sp = color.lightgreen, undercurl = true },
		DiagnosticUnderlineWarn = { sp = color.orange, undercurl = true },

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


        ["@include"] = { link = "Constant"},

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

        ["@module"] = { link = "Constant" },
		["@module.builtin"] = { link = "Include" },
		["@label"] = { link = "Label" },

		["@boolean"] = { link = "Boolean" },
		["@number"] = { link = "Number" },
		["@number.float"] = { link = "Float" },

		["@operator"] = { link = "Type" },

		["@attribute"] = { link = "Type" },
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
		CmpItemAbbr = { fg = color.blue},
		CmpItemAbbrDeprecated = { fg = color.orange },
		CmpItemAbbrMatch = { link = "Identifier" },
		CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },

		CmpItemKindText = { fg = color.black },
		CmpItemKindSnippet = { fg = color.cursorline },
		CmpItemKindConstant = { fg = color.blue },
		CmpItemKindVariable = { fg = color.blue },
		CmpItemKindKeyword = { fg = color.oragne },
		CmpItemKindMethod = { fg = color.lightpink },
		CmpItemKindFunction = { link = "CmpItemKindMethod" },
		CmpItemKindConstructor = { link = "CmpItemKindMethod" },
		CmpItemKindClass = { fg = color.pink },
		CmpItemKindInterface = { link = "CmpItemKindClass" },
		CmpItemKindModule = { link = "CmpItemKindClass" },
		CmpItemKindStruct = { link = "CmpItemKindClass" },
    }

    for group, hl in pairs(theme.highlights) do
        vim.api.nvim_set_hl(0, group, hl)
    end
end

return theme
