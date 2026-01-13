local waywall = require("waywall")
local config = require("config")
local mirrors = require("mirrors")

local resolutions = config.resolutions
local current_res = resolutions.normal

local toggle_res = function(resolution)
    -- resolution
    if resolution == current_res then
        current_res = resolutions.normal
        waywall.set_resolution(0, 0)
    else
        current_res = resolution
        waywall.set_resolution(resolution.width, resolution.height)
    end
    -- sens
    if current_res == resolutions.tall then
        waywall.set_sensitivity(config.sensitivities.eye_measure)
    else
        waywall.set_sensitivity(config.sensitivities.normal)
    end
    -- mirrors
    mirrors.disable_all() -- disable all and enable only ones required
    if current_res == resolutions.tall then
        mirrors.toggle_eye_measure()
    elseif current_res == resolutions.thin then
        mirrors.toggle_entity_count()
        mirrors.toggle_pie()
    elseif current_res == resolutions.wide then

    end
end

return {
    toggle_tall = function()
        toggle_res(resolutions.tall)
    end,
    toggle_thin = function()
        toggle_res(resolutions.thin)
    end,
    toggle_wide = function()
        toggle_res(resolutions.wide)
    end
}
