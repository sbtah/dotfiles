-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()
config.initial_cols = 230
config.initial_rows = 50

-- This is where you actually apply your config choices
-- For example, changing the color scheme:

--config.color_scheme = 'Catppuccin Mocha'
--config.color_scheme = 'Molokai (Gogh)'
--config.color_scheme = 'Material Darker (base16)'
--config.color_scheme = 'Tinacious Design (Dark)'
--config.color_scheme = 'Urple (Gogh)'
config.color_scheme = 'Dracula'
--config.color_scheme = 'Batman'
--config.color_scheme = 'Panda (Gogh)'
--config.color_scheme = 'Vice Dark (base16)'
--config.color_scheme = 'Rapture'


config.font_size = 12.0
config.font = wezterm.font 'JetBrainsMonoNl Nerd Font'
config.use_fancy_tab_bar = false
config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
config.window_decorations = "RESIZE"
config.tiling_desktop_environments = {
  'X11 LG3D',
  'X11 bspwm',
  'X11 i3',
  'X11 dwm',
}

-- and finally, return the configuration to wezterm
return config
