local mod = "SUPER"

local terminal = "kitty"
local launcher = "rofi -show drun"
local files = "nautilus"

-- basics
hl.bind(mod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(mod .. " + SPACE", hl.dsp.exec_cmd(launcher))
hl.bind(mod .. " + E", hl.dsp.exec_cmd(files))
hl.bind(mod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mod .. " + SHIFT + C", hl.dsp.window.close())

hl.bind(mod .. " + F", hl.dsp.layout("fit visible"))
hl.bind(mod .. " + C", hl.dsp.layout("colresize +conf"))

hl.bind(mod .. " + W", hl.dsp.focus({ workspace = "-1" }))
hl.bind(mod .. " + A", hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + S", hl.dsp.focus({ workspace = "+1" }))
hl.bind(mod .. " + D", hl.dsp.focus({ direction = "right" }))
hl.bind(mod .. " + SHIFT + W", hl.dsp.window.move({ workspace = "-1" }))
hl.bind(mod .. " + SHIFT + A", hl.dsp.layout("swapcol l"))
hl.bind(mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "+1" }))
hl.bind(mod .. " + SHIFT + D", hl.dsp.layout("swapcol r"))

hl.bind(mod .. " + UP", hl.dsp.focus({ workspace = "-1" }))
hl.bind(mod .. " + LEFT", hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + DOWN", hl.dsp.focus({ workspace = "+1" }))
hl.bind(mod .. " + RIGHT", hl.dsp.focus({ direction = "right" }))
hl.bind(mod .. " + SHIFT + UP", hl.dsp.window.move({ workspace = "-1" }))
hl.bind(mod .. " + SHIFT + LEFT", hl.dsp.layout("swapcol l"))
hl.bind(mod .. " + SHIFT + DOWN", hl.dsp.window.move({ workspace = "+1" }))
hl.bind(mod .. " + SHIFT + RIGHT", hl.dsp.layout("swapcol r"))

-- workspaces
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(
        mod .. " + " .. key,
        hl.dsp.focus(
            {
                workspace = i,
            }
        )
    )
    hl.bind(
        mod .. " + SHIFT + " .. key,
        hl.dsp.window.move(
            {
                workspace = i
            }
        )
    )
end

-- mouse binds
hl.bind(
    mod .. " + mouse:272",
    hl.dsp.window.drag(),
    {
        mouse = true
    }
)
hl.bind(
    mod .. " + mouse:273",
    hl.dsp.window.resize(),
    {
        mouse = true
    }
)
hl.bind(
    mod .. " + mouse_down",
    hl.dsp.focus(
        {
            workspace = "e+1",
        }
    )
)
hl.bind(
    mod .. " + mouse_up",
    hl.dsp.focus(
        {
            workspace = "e-1",
        }
    )
)

-- misc
hl.bind(
    mod .. " + SHIFT + M",
    hl.dsp.exec_cmd(
        "command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"
    )
)

hl.bind(
    "XF86AudioRaiseVolume",
    hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
    {
        locked = true,
        repeating = true,
    }
)
hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
    {
        locked = true,
        repeating = true,
    }
)
hl.bind(
    "XF86AudioMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    {
        locked = true,
        repeating = true,
    }
)
hl.bind(
    "XF86AudioMicMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    {
        locked = true,
        repeating = true,
    }
)
hl.bind(
    "XF86MonBrightnessUp",
    hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),
    {
        locked = true,
        repeating = true,
    }
)
hl.bind(
    "XF86MonBrightnessDown",
    hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),
    {
        locked = true,
        repeating = true,
    }
)

hl.bind(
    "XF86AudioNext",
    hl.dsp.exec_cmd("playerctl next"),
    {
        locked = true,
    }
)
hl.bind(
    "XF86AudioPause",
    hl.dsp.exec_cmd("playerctl play-pause"),
    {
        locked = true,
    }
)
hl.bind(
    "XF86AudioPlay",
    hl.dsp.exec_cmd("playerctl play-pause"),
    {
        locked = true
    }
)
hl.bind(
    "XF86AudioPrev",
    hl.dsp.exec_cmd("playerctl previous"),
    {
        locked = true
    }
)
