local M = {}

M.highlights_base = function (colors)
  return {
    -- -- Diagnostic
    -- DiagnosticError = { fg = colors.color9 },
    -- DiagnosticWarn = { fg = colors.color11 },
    -- DiagnosticInfo = { fg = colors.color4 },
    -- DiagnosticHint = { fg = colors.color14 },


    -- -- diff
    -- diffAdded = { fg = colors.color4 },
    -- diffRemoved = { fg = colors.color1 },
    -- diffChanged = { fg = colors.color5 },
    -- diffOldFile = { fg = colors.color5 },
    -- diffNewFile = { fg = colors.color5 },
    -- diffFile = { fg = colors.color7 },
    -- diffLine = { fg = colors.color1 },
    -- diffIndexLine = { fg = colors.color12 },


    -- -- GitSigns
    -- GitSignsAdd = { fg = colors.color4 }, -- diff mode: Added line |diff.txt|
    -- GitSignsChange = { fg = colors.color5 }, -- diff mode: Changed line |diff.txt|
    -- GitSignsDelete = { fg = colors.color1 }, -- diff mode: Deleted line |diff.txt|

    -- Telescope

    -- TelescopeBorder = {
    --   fg = colors.cursorline,
    --   bg = colors.cursorline,
    -- },

    -- TelescopePromptBorder = {
    --   fg = colors.color8,
    --   bg = colors.color8,
    -- },

    -- TelescopePromptNormal = {
    --   fg = colors.foreground,
    --   bg = colors.color8,
    -- },

    -- TelescopePromptPrefix = {
    --   fg = colors.color1,
    --   bg = colors.color8,
    -- },

    -- TelescopeNormal = { bg = colors.cursorline },

    -- TelescopePreviewTitle = {
    --   fg = colors.background,
    --   bg = colors.color10,
    -- },

    -- TelescopePromptTitle = {
    --   fg = colors.background,
    --   bg = colors.color9,
    -- },

    -- TelescopeResultsTitle = {
    --   fg = colors.cursorline,
    --   bg = colors.cursorline,
    -- },

    -- TelescopeSelection = { bg = colors.color0, fg = colors.foreground},

    -- TelescopeResultsDiffAdd = {
    --   fg = colors.color10,
    -- },

    -- TelescopeResultsDiffChange = {
    --   fg = colors.color11,
    -- },

    -- TelescopeResultsDiffDelete = {
    --   fg = colors.color9,
    -- },
    -- -- Indent Blank Line
    -- IndentBlanklineChar = { fg = colors.color0, bg = colors.background },


    --Staline
    StalineFolderIcon = {bg = colors.color1, fg=colors.background},
    StalineFolderSep = {bg = colors.background, fg=colors.color1},
    StalineFolderText = {bg = colors.color8, fg=colors.color15},
    StalineFilename = {bg = colors.background, fg=colors.color15},
    StalineFilenameSep = {fg = colors.color8, bg=colors.background},
    StalineLogo = {bg = colors.background, fg=colors.color12},
    StalineProgress = {bg = colors.color8, fg=colors.color15},
    StalineProgressSep = {bg = colors.color8, fg=colors.color10},
    StalineProgressIcon = {bg = colors.color10, fg=colors.color8},
    StalineBranch = {bg = colors.background,fg=colors.comment},
    StalineModeSepTwo = {bg=colors.background, fg=colors.color8},
    StalineNormalMode = {bg=colors.color12 , fg=colors.background},
    StalineVisualMode = {bg=colors.color11, fg=colors.background},
    StalineCommandMode = {bg=colors.color9, fg=colors.background},
    StalineInsertMode = {bg=colors.color10, fg=colors.background},
    StalineTerminalMode = {bg=colors.color13, fg=colors.background},
    StalineNTerminalMode = {bg=colors.color13, fg=colors.background},
    StalineConfirmMode = {bg=colors.color6, fg=colors.background},
    StalineNormalModeSep = {fg=colors.color12 , bg=colors.color8},
    StalineVisualModeSep = {fg=colors.color11, bg=colors.color8},
    StalineCommandModeSep = {fg=colors.color9, bg=colors.color8},
    StalineInsertModeSep = {fg=colors.color10, bg=colors.color8},
    StalineTerminalModeSep = {fg=colors.color13, bg=colors.color8},
    StalineNTerminalModeSep = {fg=colors.color13, bg=colors.color8},
    StalineConfirmModeSep = {fg=colors.color6, bg=colors.color8},
    StalineEmptySpace = {bg=colors.background, fg=colors.color15},
    StalineLspError = {bg=colors.color8, fg=colors.color9},
    StalineLspInfo = {bg=colors.color8, fg=colors.color12},
    StalineLspHints = {bg=colors.color8, fg=colors.color6},
    StalineLspWarning = {bg=colors.color8, fg=colors.color11},
    StalineLspErrorIcon = {fg=colors.background, bg=colors.color9},
    StalineLspInfoIcon = {fg=colors.background, bg=colors.color12},
    StalineLspHintsIcon = {fg=colors.background, bg=colors.color6},
    StalineLspWarningIcon = {fg=colors.background, bg=colors.color11},
    StalineLspName = {bg=colors.color8, fg=colors.foreground},
    StalineLspIcon = {bg=colors.color13, fg=colors.background},
    StalineDiffAdd = {bg=colors.background, fg=colors.color10},
    StalineDiffChange = {bg=colors.background, fg=colors.color11},
    StalineDiffRemove = {bg=colors.background, fg=colors.color9},
  }
end

return M
