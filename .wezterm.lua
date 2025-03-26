-- Pull in the wezterm API
local wezterm = require("wezterm")
local mux = wezterm.mux

-- This will hold the configuration.
local config = wezterm.config_builder()
--config.initial_cols = 230
--config.initial_rows = 50

-- This is where you actually apply your config choices
-- For example, changing the color scheme:

--config.color_scheme = "Catppuccin Mocha"
--config.color_scheme = "Molokai (Gogh)"
--config.color_scheme = "Material Darker (base16)"
--config.color_scheme = "Tinacious Design (Dark)"
--config.color_scheme = "Dracula"
--config.color_scheme = "Tokyo Night Moon"
--config.color_scheme = "Batman"
--config.color_scheme = "Panda (Gogh)"
--config.color_scheme = "Vice Dark (base16)"
--config.color_scheme = "Rapture"
config.color_scheme = "Poimandres"
--config.color_scheme = "Poimandres Storm"
--config.color_scheme = "Edge Dark (base16)"
--config.color_scheme = "Google Dark (Gogh)"
--config.color_scheme = "wilmersdorf"
--config.color_scheme = "Subliminal"
--config.color_scheme = "Breeze"
--config.color_scheme = "Google Dark (Gogh)"

config.font_size = 12.0
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.use_fancy_tab_bar = false
config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
config.window_decorations = "RESIZE"
--config.tiling_desktop_environments = {
--  "X11 i3",
--}

wezterm.on("gui-startup", function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- and finally, return the configuration to wezterm
return config
