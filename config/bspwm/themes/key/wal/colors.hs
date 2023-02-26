--Place this file in your .xmonad/lib directory and import module Colors into .xmonad/xmonad.hs config
--The easy way is to create a soft link from this file to the file in .xmonad/lib using ln -s
--Then recompile and restart xmonad.

module Colors
    ( wallpaper
    , background, foreground, cursor
    , color0, color1, color2, color3, color4, color5, color6, color7
    , color8, color9, color10, color11, color12, color13, color14, color15
    ) where

-- Shell variables
-- Generated by 'wal'
wallpaper="/home/zlin/.config/wpg/wallpapers/key.png"

-- Special
background="#0D0D12"
foreground="#9a9abb"
cursor="#9a9abb"

-- Colors
color0="#0D0D12"
color1="#443C62"
color2="#58535F"
color3="#534A70"
color4="#D12F32"
color5="#FF3636"
color6="#C35039"
color7="#9a9abb"
color8="#6b6b82"
color9="#443C62"
color10="#58535F"
color11="#534A70"
color12="#D12F32"
color13="#FF3636"
color14="#C35039"
color15="#9a9abb"
