# Subliminal snap

Subliminal - Subtitles, faster than your thoughts

Example usage:

	subliminal-subtitles download --language en movie.mp4

## Installation

Get it from the Snap Store or install in terminal.

[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/subliminal-subtitles)

	snap install subliminal-subtitles

## MPV Subtitles Script

Place the `mpv-subtitles.lua` file in `.config/mpv/scripts`. While playing press `s` to download subtitles. For different subtitle language or shortcut change following lines in the script:

	local shortcut = 's'
	local language = 'en'

## Links

[Github](https://github.com/Diaoul/subliminal)

[Documentation](http://subliminal.readthedocs.org)
