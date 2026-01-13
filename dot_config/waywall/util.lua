local waywall = require("waywall")
local helper = require("waywall.helpers")

local resources_dir = os.getenv("HOME") .. "/.config/waywall/resources/"
local eye_measure_image = resources_dir .. "eye_measure_overlay.png"

local ninbot_running = function()
    local handle = io.popen("pgrep -f 'ninjabrain-bot.*jar'")
    local result = handle:read("*l")
    handle:close()
    return result ~= nil
end
local toggle_ninbot = function()
    print("tried to")
    if ninbot_running() then
        helper.toggle_floating()
    else
        waywall.exec("ninbot")
        waywall.set_floating(true)
    end
end

return {
    toggle_fullscreen = waywall.toggle_fullscreen,
    toggle_ninbot = toggle_ninbot,
    eye_measure_image = eye_measure_image
}
