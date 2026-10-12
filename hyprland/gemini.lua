-- Hyprland (config em Lua): Gemini sempre na própria mesa
hl.window_rule({ match = { class = "^(gemini)$", float = false }, workspace = "6" })
-- Atalho global (como o Option+Space do app de macOS): SUPER+I abre/alterna o Gemini
hl.bind("SUPER + I", hl.dsp.exec_cmd("gemini-toggle"))
