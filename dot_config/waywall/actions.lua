local resolutions = require("resolutions")
local util = require("util")

local tall_res = "*-5"
local thin_res = "*-Alt_L"
local wide_res = "*-C"

return {
    ["Ctrl-O"] = util.toggle_fullscreen,
    ["Ctrl-I"] = util.toggle_ninbot,
    [tall_res] = resolutions.toggle_tall,
    [thin_res] = resolutions.toggle_thin,
    [wide_res] = resolutions.toggle_wide
}
