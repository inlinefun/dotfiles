hl.config({
    general = {
        allow_tearing = false,
        border_size = 2,
        extend_border_grab_area = 5,
        float_gaps = 5,
        gaps_in = 5,
        gaps_out = 5,
        gaps_workspaces = 0,
        hover_icon_on_border = true,
        layout = "dwindle",
        locale = "en_US",
        modal_parent_blocking = true,
        no_focus_fallback = false,
        resize_corner = 0,
        resize_on_border = true,

        snap = {
            enabled = true,
            border_overlap = false,
            respect_gaps = true,
            monitor_gap = 0,
            window_gap = 5
        },
    },

    decoration = {
        active_opacity = 1.0,
        border_part_of_window = true,
        dim_around = 0.1,
        dim_inactive = true,
        dim_modal = true,
        dim_special = false,
        dim_strength = 0.1,
        fullscreen_opacity = 1.0,
        inactive_opacity = 0.9,
        rounding = 5,
        rounding_power = 4,

        blur = {
            enabled = true,
            brightness = 1.0,
            contrast = 1.0,
            ignore_opacity = true,
            input_methods = false,
            input_methods_ignorealpha = 0.1,
            new_optimizations = true,
            noise = 0.0,
            passes = 2,
            popups = true,
            popups_ignorealpha = 0.1,
            proportional = true,
            size = 5,
            special = true,
            -- variant = "frost",
            vibrancy = 0.0,
            vibrancy_darkness = 0.0,
            xray = false
        },

        shadow = {
            enabled = true,
            color = "#000000aa",
            -- color_inactive = ,
            offset = { 0, 0 },
            range = 4,
            render_power = 3,
            scale = 1.0,
            sharp = false
        }
    }
})
