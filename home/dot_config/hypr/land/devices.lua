hl.monitor({
    output   = "",
    mode     = "1920x1080@60.000",
    position = "0x0",
    scale    = "1",
})

hl.config({
    input = {
        numlock_by_default = true,
        repeat_rate = 30,
        repeat_delay = 500,
        sensitivity = 0.00,
        accel_profile = "flat",
        force_no_accel = false,
        rotation = 0,
        left_handed = false,
        natural_scroll = false,
        follow_mouse = 1,
        special_fallthrough = false,
        touchpad = {
            disable_while_typing = true,
            natural_scroll = true,
            middle_button_emulation = true
        },
    },
})
