local config         = require("config")
local resolutions    = require("resolutions")
local waywall        = require("waywall")
local util           = require("util")

local disabled       = false

local wrapped_action = function(runnable)
    return function()
        if disabled then
            return false
        end
        if waywall.get_key("F3") then
            return false
        end
        runnable()
    end
end

local toggle_keybind = function()
    disabled = not disabled;
    if disabled then
        waywall.set_resolution(0, 0)
    end
end

return {
    [config.keybinds.keybinds] = toggle_keybind,
    [config.keybinds.fullscreen] = waywall.toggle_fullscreen,
    [config.keybinds.toggle_ninbot] = wrapped_action(util.toggle_ninbot),
    [config.keybinds.tall_res] = wrapped_action(
        function()
            resolutions.toggle_tall_res()
        end
    ),
    [config.keybinds.thin_res] = wrapped_action(
        function()
            resolutions.toggle_thin_res()
        end
    ),
    [config.keybinds.wide_res] = wrapped_action(
        function()
            resolutions.toggle_wide_res()
        end
    ),
}
