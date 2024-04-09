evaluate-commands %sh{
    bg_main="rgb:000000"
    bg_dim="rgb:1e1e1e"
    fg_main="rgb:ffffff"
    fg_dim="rgb:989898"
    fg_alt="rgb:c6daff"
    bg_active="rgb:535353"
    bg_inactive="rgb:303030"
    border="rgb:646464"
    red="rgb:ff5f59"
    red_warmer="rgb:ff6b55"
    red_cooler="rgb:ff7f9f"
    red_faint="rgb:ff9580"
    red_intense="rgb:ff5f5f"
    green="rgb:44bc44"
    green_warmer="rgb:70b900"
    green_cooler="rgb:00c06f"
    green_faint="rgb:88ca9f"
    green_intense="rgb:44df44"
    yellow="rgb:d0bc00"
    yellow_warmer="rgb:fec43f"
    yellow_cooler="rgb:dfaf7a"
    yellow_faint="rgb:d2b580"
    yellow_intense="rgb:efef00"
    blue="rgb:2fafff"
    blue_warmer="rgb:79a8ff"
    blue_cooler="rgb:00bcff"
    blue_faint="rgb:82b0ec"
    blue_intense="rgb:338fff"
    magenta="rgb:feacd0"
    magenta_warmer="rgb:f78fe7"
    magenta_cooler="rgb:b6a0ff"
    magenta_faint="rgb:caa6df"
    magenta_intense="rgb:ff66ff"
    cyan="rgb:00d3d0"
    cyan_warmer="rgb:4ae2f0"
    cyan_cooler="rgb:6ae4b9"
    cyan_faint="rgb:9ac8e0"
    cyan_intense="rgb:00eff0"
    rust="rgb:db7b5f"
    gold="rgb:c0965b"
    olive="rgb:9cbd6f"
    slate="rgb:76afbf"
    indigo="rgb:9099d9"
    maroon="rgb:cf7fa7"
    pink="rgb:d09dc0"
    bg_red_intense="rgb:9d1f1f"
    bg_green_intense="rgb:2f822f"
    bg_yellow_intense="rgb:7a6100"
    bg_blue_intense="rgb:1640b0"
    bg_magenta_intense="rgb:7030af"
    bg_cyan_intense="rgb:2266ae"
    bg_red_subtle="rgb:620f2a"
    bg_green_subtle="rgb:00422a"
    bg_yellow_subtle="rgb:4a4000"
    bg_blue_subtle="rgb:242679"
    bg_magenta_subtle="rgb:552f5f"
    bg_cyan_subtle="rgb:004065"
    bg_red_nuanced="rgb:2c0614"
    bg_green_nuanced="rgb:001904"
    bg_yellow_nuanced="rgb:221000"
    bg_blue_nuanced="rgb:0f0e39"
    bg_magenta_nuanced="rgb:230631"
    bg_cyan_nuanced="rgb:041529"
    bg_graph_red_0="rgb:b52c2c"
    bg_graph_red_1="rgb:702020"
    bg_graph_green_0="rgb:4fd100"
    bg_graph_green_1="rgb:007800"
    bg_graph_yellow_0="rgb:f1e00a"
    bg_graph_yellow_1="rgb:b08600"
    bg_graph_blue_0="rgb:2fafef"
    bg_graph_blue_1="rgb:1f2f8f"
    bg_graph_magenta_0="rgb:bf94fe"
    bg_graph_magenta_1="rgb:5f509f"
    bg_graph_cyan_0="rgb:47dfea"
    bg_graph_cyan_1="rgb:00808f"
    bg_completion="rgb:2f447f"
    bg_hover="rgb:004f70"
    bg_hover_secondary="rgb:654a39"
    bg_hl_line="rgb:2f3849"
    bg_paren_match="rgb:2f7f9f"
    bg_paren_expression="rgb:453040"
    bg_region="rgb:5c5c5c"
    bg_region_subtle="rgb:4f1c2f"
    bg_char_0="rgb:0050af"
    bg_char_1="rgb:7f1f7f"
    bg_char_2="rgb:625a00"
    bg_mode_line_active="rgb:505050"
    fg_mode_line_active="rgb:ffffff"
    border_mode_line_active="rgb:959595"
    bg_mode_line_inactive="rgb:2d2d2d"
    fg_mode_line_inactive="rgb:969696"
    border_mode_line_inactive="rgb:606060"
    modeline_err="rgb:ffa9bf"
    modeline_warning="rgb:dfcf43"
    modeline_info="rgb:9fefff"
    bg_tab_bar="rgb:313131"
    bg_tab_current="rgb:000000"
    bg_tab_other="rgb:545454"
    bg_added="rgb:00381f"
    bg_added_faint="rgb:002910"
    bg_added_refine="rgb:034f2f"
    bg_added_intense="rgb:237f3f"
    fg_added="rgb:a0e0a0"
    fg_added_intense="rgb:80e080"
    bg_changed="rgb:363300"
    bg_changed_faint="rgb:2a1f00"
    bg_changed_refine="rgb:4a4a00"
    bg_changed_intense="rgb:8a7a00"
    fg_changed="rgb:efef80"
    fg_changed_intense="rgb:c0b05f"
    bg_removed="rgb:4f1119"
    bg_removed_faint="rgb:380a0f"
    bg_removed_refine="rgb:781a1f"
    bg_removed_intense="rgb:b81a1f"
    fg_removed="rgb:ffbfbf"
    fg_removed_intense="rgb:ff9095"

    echo "
        face global string ${blue_warmer}
        face global keyword ${magenta_cooler}
        face global meta ${magenta_cooler}
        face global module default
        face global value default
        face global operator ${magenta_cooler}
        face global builtin default
        face global variable default
        face global comment ${yellow_faint}
        face global attribute default
        face global function default

        face global mono ${green_faint}
        face global block ${green_faint}
        face global header ${magenta_cooler}+b

        face global DiagnosticError default,${bg_red_intense}+f
        face global Whitespace ${bg_dim}+f
        face global MenuBackground ${fg_main},${bg_tab_bar}
        face global MenuForeground default,${bg_region}+b
        face global MenuInfo ${fg_dim}
        face global PrimarySelection default,${bg_region}
        face global PrimaryCursor ${bg_main},${fg_dim}+b
        face global PrimaryCursorEol ${bg_main},${fg_dim}+b
        face global BufferPadding ${fg_dim}
        face global StatusLine ${fg_main}
        face global StatusLineInfo ${fg_dim}
        face global StatusLineMode ${green}
        face global Information ${fg_main},${bg_dim}
        face global Prompt ${fg_main},${bg_dim}
    "

    # Swich cursor in insert mode
    echo "
    set-face global InsertCursor ${bg_main},${fg_main}+fb
    hook global ModeChange .*:insert %{
        set-face window PrimaryCursor InsertCursor
        set-face window PrimaryCursorEol InsertCursor
    }
    hook global ModeChange .*:normal %{
        unset-face window PrimaryCursor
        unset-face window PrimaryCursorEol
    }

    "
}
