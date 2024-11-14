local hl = vim.api.nvim_set_hl

local fg = '#cccccc'
local bg = '#1b1b1b'

local red = '#cd896c'
local blue = '#829ebf'
local yellow = '#ba9559'
local purple = '#b38fb0'
local green = '#88a273'

local system_gray1 = "#AEAEB2"
local system_gray2 = "#7C7C80"
local system_gray3 = "#545456"
local system_gray4 = "#444446"
local system_gray5 = "#363638"
local system_gray6 = "#242426"

local system_white = "#FFFFFF"
local system_red = "#FF453A"
local system_orange = "#FF9F0A"
local system_yellow = "#FFD60A"
local system_green = "#32D74B"
local system_mint = "#66D4CF"
local system_teal = "#6AC4DC"
local system_cyan = "#5AC8FA"
local system_blue = "#0A84FF"
local system_indigo = "#5E5CE6"
local system_purple = "#BF5AF2"
local system_pink = "#FF375F"
local system_brown = "#AC8E68"

hl(0, 'Comment', { fg = yellow })
hl(0, 'String', { fg = blue })
hl(0, 'Statement', { fg = purple })
hl(0, 'Constant', { fg = green })
hl(0, 'Type', { italic = true })

hl(0, 'Special', { link = 'Statement' })
hl(0, 'Identifier', { link = 'Normal' })
hl(0, 'Function', { link = 'Normal' })
hl(0, 'Operator', { link = 'Statement' })
hl(0, 'Variable', { link = 'Normal' })
hl(0, 'Delimiter', { link = 'Normal' })
hl(0, 'Folded', { link = 'Normal' })
hl(0, 'NonText', { fg = system_gray5 })

hl(0, 'Added', { fg = green })
hl(0, 'Removed', { fg = red })

-- Error groups

hl(0, 'ErrorMsg', { fg = system_red })
hl(0, 'WarningMsg', { fg = system_orange })
hl(0, 'MoreMsg', { link = 'Normal' })
hl(0, 'Question', { link = 'Normal' })

hl(0, 'DiagnosticError', { underline = true, sp = system_red })
hl(0, 'DiagnosticUnderlineWarn', { underline = true, sp = system_yellow })
hl(0, 'DiagnosticUnderlineHint', { underline = true, sp = system_teal })
hl(0, 'DiagnosticUnnecessary', { link = 'DiagnosticUnderlineHint' })
hl(0, 'DiagnosticUnderlineError', { link = 'DiagnosticError' })
hl(0, 'SpellBad', { link = 'DiagnosticError' })
hl(0, 'SpellCap', { link = 'DiagnosticUnderlineWarn' })
hl(0, 'SpellRare', { link = 'DiagnosticUnderlineWarn' })
hl(0, 'SpellLocal', { link = 'DiagnosticUnderlineWarn' })

-- Treesitter groups

hl(0, '@module', { link = 'Normal' })
hl(0, '@variable', { link = 'Normal' })
hl(0, '@markup.quote', { link = 'Normal' })
hl(0, '@spell', {})
hl(0, '@_label', { link = 'Normal' })
hl(0, '@markup.heading', { bold = true })
hl(0, '@markup.strong', { bold = true })
hl(0, '@markup.raw', { link = 'Normal' })
hl(0, '@markup.list', { link = 'Normal' })
hl(0, '@markup.link', { fg = system_gray2 })
hl(0, '@markup.link.url', { fg = system_gray2, underline = true, sp = system_gray3 })
hl(0, '@markup.link.label.markdown_inline', { link = 'Normal' })
hl(0, '@markup.link.label', { fg = system_gray2 })
hl(0, '@punctuation.delimiter.markdown', { fg = system_gray2 })
hl(0, '@punctuation.special.markdown', { fg = system_gray2 })
hl(0, '@string.escape.markdown_inline', { link = '@markup.link' })
hl(0, '@markup.raw.markdown_inline', { bg = system_gray6 })
hl(0, '@keyword.gitcommit', { link = 'Comment' })
hl(0, '@string.special.path.gitcommit', { link = 'Comment' })
hl(0, '@markup.link.gitcommit', { link = 'Comment' })
hl(0, '@label.diff', { link = 'Normal' })
hl(0, '@string.special.path.diff', { link = 'Normal' })
hl(0, '@keyword.diff', { link = 'Normal' })
hl(0, '@punctuation.special.diff', { link = 'Normal' })
hl(0, '@constant.diff', { link = 'Normal' })
hl(0, '@number.diff', { link = 'Normal' })
hl(0, '@constructor', { link = 'Normal' })

-- LSP semantic token

hl(0, "@lsp.mod.defaultLibrary", { link = 'Statement' })
hl(0, "@lsp.typemod.function.defaultLibrary", { link = 'Statement' })
hl(0, "@lsp.type.function", { link = 'Statement' })

-- UI groups

hl(0, 'Normal', { fg = fg, bg = bg })
hl(0, 'ModeMsg', { fg = system_gray2 })
hl(0, 'StatusLine', { bg = system_gray4 })
hl(0, 'Pmenu', { link = 'Normal' })
hl(0, 'NormalFloat', { link = 'Normal' })
hl(0, 'FloatBorder', { fg = system_gray2 })
hl(0, 'StatusLineNC', { fg = system_gray2, bg = system_gray5 })
hl(0, 'MatchParen', { underline = true })
hl(0, 'Visual', { bg = system_gray5 })
hl(0, 'Search', { fg = system_white, bg = system_brown })
hl(0, 'Cursearch', { fg = bg, bg = system_yellow })
hl(0, 'IncSearch', { link = 'Search' })

hl(0, 'TelescopeNormal', { fg = system_gray1 })
hl(0, 'TelescopePreviewNormal', { link = 'Normal' })
hl(0, 'TelescopeMatching', { fg = fg, bold = true })
hl(0, 'TelescopePromptPrefix', { link = 'Normal' })
hl(0, 'TelescopeBorder', { link = 'FloatBorder' })
hl(0, 'LspInfoBorder', { link = 'FloatBorder' })
