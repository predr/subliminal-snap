--
-- Search for subtitles using subminimal
-- Shortcut: s (replaces shortcut for screenshots)
--
-- Place this file to ~/.config/mpv/scripts
--
-- Change shortcut and subtitle language here
local shortcut = 's'
local language = 'en'


local utils = require 'mp.utils'

function subliminal()
	mp.osd_message("Searching subtitles...", 4)

	cmd = {
		args = {
			"subliminal-subtitles",
			"download",
			"--single",      -- Save subtitle without language code in the file name
			--"--force",       -- Force download even if a subtitle already exist
			"--language", language,
			mp.get_property("path")
		}
	}

	proc = utils.subprocess(cmd)
	if mp.commandv("sub-add", string.gsub(mp.get_property("path"), "%.%w+$", ".srt"), "select") then
		mp.osd_message("☺", 3)
	else
		mp.osd_message("☹", 3)	
	end
end

mp.add_key_binding(shortcut, "subliminal", subliminal)
