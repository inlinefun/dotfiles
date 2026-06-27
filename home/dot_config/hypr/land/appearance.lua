hl.config({
    general = {
        border_size = 2,
        gaps_in = 5,
        gaps_out = 5,
        gaps_workspaces = 5,
        layout = "scrolling",
        no_focus_fallback = false,
        resize_on_border = true,
        extend_border_grab_area = 5,
        hover_icon_on_border = true,
        allow_tearing = true,
        resize_corner = 0,
        snap = {
            enabled = true,
            window_gap = 10,
            monitor_gap = 10,
            border_overlap = true,
            respect_gaps = false
        }
    },
    decoration = {
        rounding = 5,
        rounding_power = 4,
        active_opacity = 1.0,
        inactive_opacity = 0.9,
        fullscreen_opacity = 1.0,
        dim_modal = true,
        dim_inactive = false,
        dim_strength = 0.1,
        dim_special = 0.1,
        dim_around = 0.4,
        screen_shader = "",
        border_part_of_window = true,
        blur = {
            enabled = true,
            size = 5,
            passes = 2,
            ignore_opacity = true,
            new_optimizations = true,
            xray = false,
            noise = 0.0,
            contrast = 1.0,
            brightness = 1.0,
            vibrancy = 0.0,
            vibrancy_darkness = 0.0,
            special = true,
            popups = true,
            popups_ignorealpha = 0.2,
            input_methods = true,
            input_methods_ignorealpha = 0.2
        },
        shadow = {
            enabled = true,
            range = 5,
            render_power = 2,
            sharp = false
        },
        glow = {
            enabled = false
        },
    },
})
