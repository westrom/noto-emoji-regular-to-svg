#!/bin/bash
#
# Convert Noto Emoji ttf font into SVG files

rm svg/*.svg

# Convert TTF font to SVG font
fontforge -script ./src/ttf_to_svg_font.pe ./font/NotoEmoji-Regular.ttf

# Convert SVG font to SVG files
svg-caster --svg-font ./font/NotoEmoji-Regular.svg --out-svg ./svg --svgo

# Rename and categorize emoji
python3 ./src/rename_svg_emoji.py
python3 ./src/categorized_emoji.py
