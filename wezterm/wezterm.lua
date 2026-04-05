-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

local is_macos = wezterm.target_triple:find("darwin") ~= nil

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 50

-- or, changing the font size and color scheme.
config.font = wezterm.font("JetBrains Mono")
config.font_size = is_macos and 13 or 11
config.color_scheme = "Belge (terminal.sexy)"

-- foces WezTerm to draw it's own title bar, because it's broken in gnome
-- https://github.com/wezterm/wezterm/issues/5332
--config.window_decorations = "INTEGRATED_BUTTONS | RESIZE"

-- Transparent background with slight blur
config.window_background_opacity = is_macos and 0.95 or 0.8
config.win32_system_backdrop = "Acrylic"

local homebrew_zsh = "/home/linuxbrew/.linuxbrew/bin/zsh"
local f = io.open(homebrew_zsh, "r")
if f then
	f:close()
	config.default_prog = { homebrew_zsh, "-l" }
end

-- Finally, return the configuration to wezterm:
return config
