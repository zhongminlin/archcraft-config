# Shell variables
# Generated by 'wal'
wallpaper='/home/zlin/.config/wpg/wallpapers/delorean-II.jpg'

# Special
background='#090708'
foreground='#cecdd1'
cursor='#cecdd1'

# Colors
color0='#090708'
color1='#605B66'
color2='#676371'
color3='#953E42'
color4='#A24C50'
color5='#EA5155'
color6='#837D84'
color7='#cecdd1'
color8='#908f92'
color9='#605B66'
color10='#676371'
color11='#953E42'
color12='#A24C50'
color13='#EA5155'
color14='#837D84'
color15='#cecdd1'

# FZF colors
export FZF_DEFAULT_OPTS="
    $FZF_DEFAULT_OPTS
    --color fg:7,bg:0,hl:1,fg+:232,bg+:1,hl+:255
    --color info:7,prompt:2,spinner:1,pointer:232,marker:1
"

# Fix LS_COLORS being unreadable.
export LS_COLORS="${LS_COLORS}:su=30;41:ow=30;42:st=30;44:"

accent=$color12
light_value='0.05'
dark_value='0.30'

# Wallpaper
#wdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
#wallpaper="$wdir/wallpaper"

# Polybar
polybar_font='Iosevka Nerd Font:size=10;3'

# Rofi
rofi_font='Iosevka 10'
rofi_icon='flattrcolor'

# Terminal
terminal_font_name='JetBrainsMono Nerd Font'
terminal_font_size='10'

# Geany
geany_colors='wal.conf'
geany_font='JetBrains Mono 10'

# Appearance
gtk_font='Noto Sans 9'
gtk_theme='FlatColor'
icon_theme='flattrcolor'
cursor_theme='Qogirr-Dark'

# Dunst
dunst_width='300'
dunst_height='80'
dunst_offset='10x42'
dunst_origin='top-right'
dunst_font='Iosevka Custom 9'
dunst_border='1'
dunst_separator='1'

# Picom
picom_backend='glx'
picom_corner='0'
picom_shadow_r='14'
picom_shadow_o='0.30'
picom_shadow_x='-12'
picom_shadow_y='-12'
picom_blur_method='none'
picom_blur_strength='0'

# Bspwm
bspwm_fbc="$accent"
bspwm_nbc="$background"
bspwm_abc="$color5"
bspwm_pfc="$color2"
bspwm_border='1'
bspwm_gap='10'
bspwm_sratio='0.50'

# Don't Delete This File