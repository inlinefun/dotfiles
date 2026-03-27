-- must load shaders before mirrors and overlays
-- this allows them to make use of shaders
local shaders = require("shaders")

require("mirrors")
require("overlays")

return {
    actions = require("actions"),
    input = require("input"),
    theme = require("appearance"),
    shaders = shaders
}
