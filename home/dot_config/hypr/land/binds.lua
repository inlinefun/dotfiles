local mod = "SUPER"

hl.bind(mod .. " + Q", hl.dsp.exec_cmd("kitty"))
hl.bind(mod .. " + E", hl.dsp.exec_cmd("nautilus"))
hl.bind(mod .. " + SPACE", hl.dsp.exec_cmd("rofi -show drun"))

hl.bind(mod .. " + V", hl.dsp.exec_cmd("hyprpicker | wl-copy"))
hl.bind(mod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mod .. " + CTRL + S", hl.dsp.exec_cmd("hyprshot -z -m region"))

hl.bind(mod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(mod .. " + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + SHIFT + C", hl.dsp.window.close())

hl.bind(mod .. " + TAB", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mod .. " + SHIFT + TAB", hl.dsp.window.move({ workspace = "special:magic" }))

hl.bind(mod .. " + G", hl.dsp.group.toggle())
hl.bind(mod .. " + SHIFT + G", hl.dsp.group.lock_active())
hl.bind("ALT + TAB", hl.dsp.group.next())
hl.bind("ALT + SHIFT + TAB", hl.dsp.group.prev())

for direction, keys in pairs(
    {
        up = { "UP", "W" },
        down = { "DOWN", "S" },
        left = { "LEFT", "A" },
        right = { "RIGHT", "D" },
    }
) do
    for _, key in pairs(keys) do
        hl.bind(mod .. " + " .. key, hl.dsp.focus({ direction = direction }))
        hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ direction = direction, group_aware = true }))
    end
end

-- stolen from default config
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mod .. " + SHIFT + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))

hl.bind(mod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
