-- Hyprland (config em Lua): Gemini sempre na própria mesa
hl.window_rule({ match = { class = "^(gemini)$", float = false }, workspace = "6" })
