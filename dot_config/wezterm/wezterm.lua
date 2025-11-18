local wezterm = require("wezterm")

return {
  enable_tab_bar = true,
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  tab_max_width = 100,
  enable_kitty_keyboard = true,
  window_padding = {
    left = 5,
    right = 5,
    top = 5,
    bottom = 5,
  },
  font_dirs = {"~/.fonts/"},
  font_size = 9.0,
  -- disable ligatures in most fonts
  harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
  font = wezterm.font_with_fallback({
    -- { family="TerminessNF", weight="Regular" },
    { family="Maple Mono NF CN", weight="Bold" },
    { family="Sarasa Term SC Nerd", weight="Bold" },
    -- { family="CousineNerdFontComplete Nerd Font", weight="Bold" },
  }),
  custom_block_glyphs = false,
  color_scheme = "Espresso (base16)",
  scrollback_lines = 20000,
  adjust_window_size_when_changing_font_size = false,
  -- debug_key_events = true,
  disable_default_key_bindings = true,
  leader = { key = "q", mods = "CTRL", timeout_milliseconds = 1000 },
  keys = {
    { key = "q", mods = "LEADER|CTRL", action = wezterm.action { SendString = "\x11" } },
    { key = "f", mods = "SHIFT|CTRL", action = wezterm.action { Search = { CaseInSensitiveString = "" } } },
    { key = "t", mods = "SHIFT|CTRL", action = wezterm.action { SpawnTab = "CurrentPaneDomain" } },
    { key = "w", mods = "SHIFT|CTRL", action = wezterm.action { CloseCurrentTab = { confirm = true } } },
    { key = "PageUp", mods = "SHIFT", action = wezterm.action { ScrollByPage = -1 } },
    { key = "PageDown", mods = "SHIFT", action = wezterm.action { ScrollByPage = 1 } },
    { key = "/", mods = "LEADER", action = "ShowLauncher" },
    { key = "t", mods = "LEADER", action = "ShowTabNavigator" },
    { key = "x", mods = "SHIFT|CTRL", action = "ActivateCopyMode" },
    { key = "Space", mods = "SHIFT|CTRL", action = "QuickSelect" },

    { key = "f", mods = "LEADER", action = "TogglePaneZoomState" },
    { key = "s", mods = "LEADER", action = wezterm.action { SplitVertical = { domain = "CurrentPaneDomain" } } },
    { key = "v", mods = "LEADER", action = wezterm.action { SplitHorizontal = { domain = "CurrentPaneDomain" } } },
    { key = "x", mods = "LEADER", action = wezterm.action { CloseCurrentPane = { confirm = false } } },

    { key = "RightArrow", mods = "ALT", action = wezterm.action {ActivatePaneDirection = "Right"} },
    { key = "LeftArrow", mods = "ALT", action = wezterm.action { ActivatePaneDirection = "Left" } },
    { key = "UpArrow", mods = "ALT", action = wezterm.action { ActivatePaneDirection = "Up" } },
    { key = "DownArrow", mods = "ALT", action = wezterm.action { ActivatePaneDirection = "Down" } },

    { key = "RightArrow", mods = "ALT|SHIFT", action = wezterm.action { AdjustPaneSize = { "Right", 4 } } },
    { key = "LeftArrow", mods = "ALT|SHIFT", action = wezterm.action { AdjustPaneSize = { "Left", 4 } } },
    { key = "UpArrow", mods = "ALT|SHIFT", action = wezterm.action { AdjustPaneSize = { "Up", 4 } } },
    { key = "DownArrow", mods = "ALT|SHIFT", action = wezterm.action { AdjustPaneSize = { "Down", 4 } } },

    { key = "c", mods = "SHIFT|CTRL", action = wezterm.action { CopyTo = "Clipboard" } },
    { key = "v", mods = "SHIFT|CTRL", action = wezterm.action { PasteFrom = "Clipboard" } },
    { key = "Insert", mods = "CTRL", action = wezterm.action { CopyTo = "PrimarySelection" } },
    { key = "Insert", mods = "SHIFT", action = wezterm.action { PasteFrom = "PrimarySelection" } },


    { key = "n", mods = "SHIFT|CTRL", action = "SpawnWindow" },
    -- { key="Enter", mods="ALT", action = "ToggleFullScreen" },

    { key = "1", mods = "LEADER", action = wezterm.action { ActivateTab = 0 } },
    { key = "2", mods = "LEADER", action = wezterm.action { ActivateTab = 1 } },
    { key = "3", mods = "LEADER", action = wezterm.action { ActivateTab = 2 } },
    { key = "4", mods = "LEADER", action = wezterm.action { ActivateTab = 3 } },
    { key = "5", mods = "LEADER", action = wezterm.action { ActivateTab = 4 } },
    { key = "`", mods = "LEADER", action = "ActivateLastTab"  },

    { key = "=", mods = "CTRL", action = "IncreaseFontSize" },
    { key = "-", mods = "CTRL", action = "DecreaseFontSize" },
    { key = "0", mods = "CTRL", action = "ResetFontSize" },

    { key = "l", mods = "LEADER", action = wezterm.action { ClearScrollback = "ScrollbackOnly" } },
    { key = "j", mods = "LEADER", action = wezterm.action { ScrollToPrompt = 1 } },
    { key = "k", mods = "LEADER", action = wezterm.action { ScrollToPrompt = -1 } },
  },
  -- exit_behavior = "Hold",
  ssh_domains = {
    {
      name = "localhostssh",
      remote_address = "192.168.1.101",
      username = "Jenpin",
    },
  },
  -- unix_domains = {
  --   {
  --     name = "unix",
  --   }
  -- },
  -- default_gui_startup_args = {"connect", "unix"},
}
