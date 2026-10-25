-- Liquid Glass styling bundled with the 1984 Omarchy theme.
hl.config({
  general = {
    gaps_in = 7, gaps_out = 12, border_size = 1,
    col = { active_border = { colors = { "rgba(c08a5688)", "rgba(4d858366)" }, angle = 45 }, inactive_border = "rgba(ffffff22)" },
  },
  decoration = {
    rounding = 14, rounding_power = 3.2,
    active_opacity = 0.96, inactive_opacity = 0.92, fullscreen_opacity = 1.0,
    dim_inactive = true, dim_strength = 0.06,
    shadow = { enabled = true, range = 24, render_power = 3, color = "rgba(00000066)", color_inactive = "rgba(0000003d)", offset = { 0, 6 }, scale = 0.98 },
    blur = { enabled = true, size = 10, passes = 3, ignore_opacity = true, new_optimizations = true, xray = false, noise = 0.018, contrast = 1.08, brightness = 0.86, vibrancy = 0.22, vibrancy_darkness = 0.18, special = true, popups = true, popups_ignorealpha = 0.18 },
  },
})
hl.layer_rule({ match = { namespace = "^omarchy-(bar|menu|image-selector|emojis|clipboard|keyboard-panel|notifications|osd|reminders|polkit|network-qr)$" }, blur = true, blur_popups = true, ignore_alpha = 0.12 })
hl.curve("liquidOut", { type = "bezier", points = { { 0.22, 1 }, { 0.36, 1 } } })
hl.curve("liquidWorkspace", { type = "bezier", points = { { 0.4, 0 }, { 0.2, 1 } } })
hl.animation({ leaf = "windows", enabled = true, speed = 4.2, bezier = "liquidOut" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.6, bezier = "liquidOut", style = "popin 94%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.4, bezier = "liquidOut", style = "popin 96%" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.2, bezier = "liquidOut" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5.5, bezier = "liquidWorkspace", style = "slide" })
