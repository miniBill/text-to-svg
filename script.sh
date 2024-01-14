#!/usr/bin/env nix-shell
#! nix-shell -i bash -p pango -p graphicsmagick
pango-view --output=output.svg --font="Linja Pona" -q --text "sina pana e pona tawa mi. ni la mi pana e pona tawa sina."
npx svgo --multipass --pretty -p2 output.svg
sed -i 's/<svg/<svg fill="currentColor"/' output.svg
