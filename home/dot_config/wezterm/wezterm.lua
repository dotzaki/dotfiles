local wezterm = require("wezterm")
local config = {}

-- For better error messages? see docs
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Config starts here
config.font = wezterm.font("Geist Mono")
-- config.font = wezterm.font("Iosevka Nerd Font")
config.font_size = 18

config.initial_cols = 105
config.initial_rows = 30

-- catppuccin my goat
config.color_scheme = "Catppuccin Latte"
-- config.color_scheme = "Catppuccin Frappe"
-- config.color_scheme = "Catppuccin Macchiato"
-- config.color_scheme = "Catppuccin Mocha"

config.enable_tab_bar = true -- Disable tab bar here if too annoying.
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.tab_and_split_indices_are_zero_based = false

config.audible_bell = "Disabled"
config.cursor_blink_rate = 0
config.default_cursor_style = "SteadyUnderline"

config.scroll_to_bottom_on_input = true
config.scrollback_lines = 2000

config.show_update_window = false

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- macOS specific
config.native_macos_fullscreen_mode = true

return config
