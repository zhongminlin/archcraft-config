#!/bin/bash

. ~/.cache/wal/colors.sh # import colors from pywal
light_value='0.05'
dark_value='0.30'
altbackground="`pastel color $background | pastel lighten $light_value | pastel format hex`"
altforeground="`pastel color $foreground | pastel darken $dark_value | pastel format hex`"
color8="`pastel color $color0 | pastel lighten $light_value | pastel format hex`"
color9="`pastel color $color1 | pastel lighten $light_value | pastel format hex`"
color10="`pastel color $color2 | pastel lighten $light_value | pastel format hex`"
color11="`pastel color $color3 | pastel lighten $light_value | pastel format hex`"
color12="`pastel color $color4 | pastel lighten $light_value | pastel format hex`"
color13="`pastel color $color5 | pastel lighten $light_value | pastel format hex`"
color14="`pastel color $color6 | pastel lighten $light_value | pastel format hex`"
color15="`pastel color $color7 | pastel lighten $light_value | pastel format hex`"

THEME_NAME="Pywal"


DIR=$(dirname "${BASH_SOURCE[0]}")
THEME_DIR="$DIR/$THEME_NAME"

# Converts hex colors into rgb joined with comma
# #fff -> 255, 255, 255
hexToRgb() {
    # Remove '#' character from hex color #fff -> fff
    plain=${1#*#}
    printf "%d, %d, %d" 0x${plain:0:2} 0x${plain:2:2} 0x${plain:4:2}
}

prepare() {
    if [ -d $THEME_DIR ]; then
        rm -rf $THEME_DIR
    fi
    
    mkdir $THEME_DIR
    mkdir "$THEME_DIR/images"
    
    # Copy wallpaper so it can be used in theme  
    background_image="images/theme_ntp_background_norepeat.png"
    cp "$wallpaper" "$THEME_DIR/$background_image"

}


background=$(hexToRgb $background)
foreground=$(hexToRgb $foreground)
accent=$(hexToRgb $altbackground)
secondary=$(hexToRgb $color8)

generate() {
    # Theme template
    cat > "$THEME_DIR/manifest.json" << EOF
    {
      "manifest_version": 3,
      "version": "1.0",
      "name": "$THEME_NAME Theme",
      "theme": {
        "images": {
          "theme_ntp_background" : "$background_image"
        },
        "colors": {
          "frame": [$background],
          "frame_inactive": [$background],
          "toolbar": [$accent],
          "ntp_text": [$foreground],
          "ntp_link": [$accent],
          "ntp_section": [$secondary],
          "button_background": [$foreground],
          "toolbar_button_icon": [$foreground],
          "toolbar_text": [$foreground],
          "omnibox_background": [$background],
          "omnibox_text": [$foreground]
        },
        "properties": {
          "ntp_background_alignment": "bottom"
        }
      }
    }
EOF
}

prepare
generate
echo "Pywal Chrome theme generated at $THEME_DIR"
