hl.config({
    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = false,
        disable_scale_notification = false,
        force_default_wallpaper = 0,
        font_family = "Inter"
    },
    xwayland = {
        enabled = true,
        use_nearest_neighbor = true,
        force_zero_scaling = false,
        create_abstract_socket = false
    },
    cursor = {
        invisible = false,
        sync_gsettings_theme = true
    },
})

hl.on(
    "hyprland.start",
    function ()
        hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Classic'")
        hl.exec_cmd("systemctl --user start hyprpaper.service")
        hl.exec_cmd("systemctl --user start hyprpolkitagent.service")
    end
)

hl.env("HYPRCURSOR_SIZE", 24)
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("XCURSOR_SIZE", 24)
hl.env("XCURSOR_THEME", "Bibata-Modern-Classic")
