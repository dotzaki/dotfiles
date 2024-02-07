local wezterm = require("wezterm")
local config = {}

GEIST = "Geist Mono"
IOSEVKA = "Iosevka Nerd Font"

CAT_BASE = "#eff1f5"
CAT_TEXT = "#4c4f69"
CAT_SURFACETWO = "#acb0be"
CAT_MAROON = "#e64553"

-- For better error messages? see docs
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Config starts here
config.font = wezterm.font(GEIST)
-- config.font = wezterm.font(IOSEVKA)
config.font_size = 18

config.initial_cols = 105
config.initial_rows = 30

-- catppuccin my goat
config.color_scheme = "Catppuccin Latte"
-- config.color_scheme = "Catppuccin Frappe"
-- config.color_scheme = "Catppuccin Macchiato"
-- config.color_scheme = "Catppuccin Mocha"

config.enable_tab_bar = true -- Disable tab bar here if too annoying.
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.tab_and_split_indices_are_zero_based = false
config.tab_max_width = 30

config.window_frame = {
	font = wezterm.font(GEIST),
	active_titlebar_bg = CAT_BASE,
	inactive_titlebar_bg = CAT_BASE,
}
config.colors = {
	tab_bar = {
		inactive_tab_edge = CAT_BASE,
		active_tab = {
			bg_color = CAT_BASE,
			fg_color = CAT_TEXT,
		},
		inactive_tab = {
			bg_color = CAT_SURFACETWO,
			fg_color = CAT_TEXT,
		},
		new_tab = {
			bg_color = CAT_SURFACETWO,
			fg_color = CAT_MAROON,
		},
	},
}

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
