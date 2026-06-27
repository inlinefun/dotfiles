hl.on(
    "hyprland.start",
    function()
        hl.exec_cmd("systemctl --user start hyprpaper.service")
        hl.exec_cmd("systemctl --user start hyprpolkitagent.service")
    end
)
