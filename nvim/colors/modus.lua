-- Name

vim.g.colors_name = 'modus'

-- Colors

local bg_main = '#000000'
local bg_dim = '#1e1e1e'
local fg_main = '#f0f0f0'
local fg_dim = '#989898'
local fg_alt = '#c6daff'
local bg_active = '#535353'
local bg_inactive = '#303030'
local border = '#646464'
local red = '#ff5f59'
local red_warmer = '#ff6b55'
local red_cooler = '#ff7f9f'
local red_faint = '#ff9580'
local red_intense = '#ff5f5f'
local green = '#44bc44'
local green_warmer = '#70b900'
local green_cooler = '#00c06f'
local green_faint = '#88ca9f'
local green_intense = '#44df44'
local yellow = '#d0bc00'
local yellow_warmer = '#fec43f'
local yellow_cooler = '#dfaf7a'
local yellow_faint = '#d2b580'
local yellow_intense = '#efef00'
local blue = '#2fafff'
local blue_warmer = '#79a8ff'
local blue_cooler = '#00bcff'
local blue_faint = '#82b0ec'
local blue_intense = '#338fff'
local magenta = '#feacd0'
local magenta_warmer = '#f78fe7'
local magenta_cooler = '#b6a0ff'
local magenta_faint = '#caa6df'
local magenta_intense = '#ff66ff'
local cyan = '#00d3d0'
local cyan_warmer = '#4ae2f0'
local cyan_cooler = '#6ae4b9'
local cyan_faint = '#9ac8e0'
local cyan_intense = '#00eff0'
local rust = '#db7b5f'
local gold = '#c0965b'
local olive = '#9cbd6f'
local slate = '#76afbf'
local indigo = '#9099d9'
local maroon = '#cf7fa7'
local pink = '#d09dc0'
local bg_red_intense = '#9d1f1f'
local bg_green_intense = '#2f822f'
local bg_yellow_intense = '#7a6100'
local bg_blue_intense = '#1640b0'
local bg_magenta_intense = '#7030af'
local bg_cyan_intense = '#2266ae'
local bg_red_subtle = '#620f2a'
local bg_green_subtle = '#00422a'
local bg_yellow_subtle = '#4a4000'
local bg_blue_subtle = '#242679'
local bg_magenta_subtle = '#552f5f'
local bg_cyan_subtle = '#004065'
local bg_red_nuanced = '#2c0614'
local bg_green_nuanced = '#001904'
local bg_yellow_nuanced = '#221000'
local bg_blue_nuanced = '#0f0e39'
local bg_magenta_nuanced = '#230631'
local bg_cyan_nuanced = '#041529'
local bg_graph_red_0 = '#b52c2c'
local bg_graph_red_1 = '#702020'
local bg_graph_green_0 = '#4fd100'
local bg_graph_green_1 = '#007800'
local bg_graph_yellow_0 = '#f1e00a'
local bg_graph_yellow_1 = '#b08600'
local bg_graph_blue_0 = '#2fafef'
local bg_graph_blue_1 = '#1f2f8f'
local bg_graph_magenta_0 = '#bf94fe'
local bg_graph_magenta_1 = '#5f509f'
local bg_graph_cyan_0 = '#47dfea'
local bg_graph_cyan_1 = '#00808f'
local bg_completion = '#2f447f'
local bg_hover = '#004f70'
local bg_hover_secondary = '#654a39'
local bg_hl_line = '#2f3849'
local bg_paren_match = '#2f7f9f'
local bg_paren_expression = '#453040'
local bg_region = '#5c5c5c'
local bg_region_subtle = '#4f1c2f'
local bg_char_0 = '#0050af'
local bg_char_1 = '#7f1f7f'
local bg_char_2 = '#625a00'
local bg_mode_line_active = '#505050'
local fg_mode_line_active = '#ffffff'
local border_mode_line_active = '#959595'
local bg_mode_line_inactive = '#2d2d2d'
local fg_mode_line_inactive = '#969696'
local border_mode_line_inactive = '#606060'
local modeline_err = '#ffa9bf'
local modeline_warning = '#dfcf43'
local modeline_info = '#9fefff'
local bg_tab_bar = '#313131'
local bg_tab_current = '#000000'
local bg_tab_other = '#545454'
local bg_added = '#00381f'
local bg_added_faint = '#002910'
local bg_added_refine = '#034f2f'
local bg_added_intense = '#237f3f'
local fg_added = '#a0e0a0'
local fg_added_intense = '#80e080'
local bg_changed = '#363300'
local bg_changed_faint = '#2a1f00'
local bg_changed_refine = '#4a4a00'
local bg_changed_intense = '#8a7a00'
local fg_changed = '#efef80'
local fg_changed_intense = '#c0b05f'
local bg_removed = '#4f1119'
local bg_removed_faint = '#380a0f'
local bg_removed_refine = '#781a1f'
local bg_removed_intense = '#b81a1f'
local fg_removed = '#ffbfbf'
local fg_removed_intense = '#ff9095'


-- Helper

local hl = vim.api.nvim_set_hl

-- Syntax groups

hl(0, 'Comment', { fg = yellow_faint })
hl(0, 'String', { fg = blue_warmer })
hl(0, 'Identifier', {})
hl(0, 'Function', {})
hl(0, 'Special', { fg = magenta_cooler })
hl(0, 'Statement', { fg = magenta_cooler })
hl(0, 'Operator', { fg = fg_main })
hl(0, 'Variable', { fg = fg_main })
hl(0, 'Constant', {})
hl(0, 'Delimiter', { fg = fg_main })
hl(0, 'Folded', {})
hl(0, 'Type', { italic = true })
hl(0, 'Title', { bold = true })

-- Error groups

hl(0, 'ErrorMsg', { fg = red })
hl(0, 'DiagnosticError', { link = 'ErrorMsg' })
hl(0, 'DiagnosticUnderlineWarn', { underline = true, sp = yellow_intense })
hl(0, 'DiagnosticUnnecessary', { underline = true, sp = yellow })
hl(0, 'DiagnosticUnderlineError', { underline = true, sp = red })
hl(0, 'SpellBad', { underline = true, sp = red_intense })
hl(0, 'SpellCap', { underline = true, sp = yellow_intense })
hl(0, 'SpellRare', {})
hl(0, 'SpellLocal', {})

-- Treesitter groups

hl(0, '@module', {})
hl(0, '@variable', { link = 'Variable' })
hl(0, '@markup.quote', {})
hl(0, '@spell', {})
hl(0, '@_label', {})
hl(0, '@markup.raw', { fg = green_faint })
hl(0, '@markup.list', {})
hl(0, '@markup.link', { fg = fg_dim })
hl(0, '@markup.link.url', { fg = fg_alt })
hl(0, '@markup.link.label', { fg = fg_main })
hl(0, '@punctuation.special.markdown', { fg = fg_dim })

-- UI groups

hl(0, 'Normal', { fg = fg_main, bg = bg_dim })
hl(0, 'ModeMsg', { fg = fg_dim })
hl(0, 'StatusLine', { fg = fg_main, bg = bg_mode_line_active })
hl(0, 'Pmenu', { fg = fg_main, bg = bg_mode_line_inactive })
hl(0, 'NormalFloat', { fg = fg_main, bg = bg_dim })
hl(0, 'FloatBorder', { fg = border })
hl(0, 'StatusLineNC', { fg = fg_main, bg = bg_mode_line_inactive })
hl(0, 'MatchParen', { underline = true })
hl(0, 'Visual', { bg = bg_region })
hl(0, 'Search', { fg = fg_main, bg = bg_yellow_intense })
hl(0, 'IncSearch', { fg = fg_main, bg = bg_yellow_intense })
hl(0, 'Curearch', { fg = fg_main, bg = yellow })
hl(0, 'Question', { fg = fg_main })

hl(0, 'TelescopeMatching', { link = 'Search' })
hl(0, 'TelescopePromptPrefix', { fg = fg_dim })
hl(0, 'TelescopeBorder', { link = 'FloatBorder' })
hl(0, 'LspInfoBorder', { link = 'FloatBorder' })
