local helpers = require("waywall.helpers")
local config = require("config")

-- base pie chart
helpers.res_mirror(
    {
        src = { x = 10, y = 680, w = 320, h = 170, },
        dst = {
            x = config.mirrors.pie_chart.x,
            y = config.mirrors.pie_chart.y,
            w = config.mirrors.pie_chart.scale * 320,
            h = config.mirrors.pie_chart.scale * 170,
        },
    },
    config.resolutions.thin.width,
    config.resolutions.thin.height
)

-- entity counter
helpers.res_mirror(
    {
        src = { x = 13, y = 37, w = 37, h = 9 },
        dst = {
            x = config.mirrors.entity_count.x,
            y = config.mirrors.entity_count.y,
            w = config.mirrors.entity_count.scale * 37,
            h = config.mirrors.entity_count.scale * 9
        },
        color_key = config.mirrors.entity_count.color and {
            input = "#dddddd",
            output = config.mirrors.entity_count.color
        } or nil,
    },
    config.resolutions.thin.width,
    config.resolutions.thin.height
)
-- chunk relative coords
helpers.res_mirror(
    {
        src = { x = 36, y = 109, w = 45, h = 9 },
        dst = {
            x = config.mirrors.chunk_coords.x,
            y = config.mirrors.chunk_coords.y,
            w = config.mirrors.chunk_coords.scale * 45,
            h = config.mirrors.chunk_coords.scale * 9
        },
        color_key = config.mirrors.entity_count.color and {
            input = "#dddddd",
            output = config.mirrors.entity_count.color
        } or nil,
    },
    config.resolutions.thin.width,
    config.resolutions.thin.height
)
-- o value
helpers.res_mirror(
    {
        src = { x = 45, y = 154, w = 37, h = 9 },
        dst = {
            x = config.mirrors.o_value.x,
            y = config.mirrors.o_value.y,
            w = config.mirrors.o_value.scale * 37,
            h = config.mirrors.o_value.scale * 9
        },
        color_key = config.mirrors.entity_count.color and {
            input = "#dddddd",
            output = config.mirrors.entity_count.color
        } or nil,
    },
    config.resolutions.thin.width,
    config.resolutions.thin.height
)

-- eye measure
helpers.res_mirror(
    {
        src = { x = 162, y = 7902, w = 60, h = 580 },
        dst = { x = 30, y = 340, w = 700, h = 400 }
    },
    config.resolutions.tall.width,
    config.resolutions.tall.height
)

-- pie chart percentages
-- entities
helpers.res_mirror(
    {
        src = { x = 240, y = 856, w = 44, h = 30, },
        dst = {
            x = config.mirrors.pie_chart.x + 120,
            y = config.mirrors.pie_chart.y + 170 + 170,
            w = 44 * 5,
            h = 30 * 5,
        },
        color_key = {
            input = "#E145C2",
            output = "#E145C2"
        }
    },
    config.resolutions.thin.width,
    config.resolutions.thin.height
)
-- block entities
helpers.res_mirror(
    {
        src = { x = 240, y = 856, w = 44, h = 30, },
        dst = {
            x = config.mirrors.pie_chart.x + 120,
            y = config.mirrors.pie_chart.y + 170 + 170,
            w = 44 * 5,
            h = 30 * 5,
        },
        color_key = {
            input = "#E96D4D",
            output = "#E96D4D"
        }
    },
    config.resolutions.thin.width,
    config.resolutions.thin.height
)
-- unspecified
helpers.res_mirror(
    {
        src = { x = 240, y = 856, w = 44, h = 30, },
        dst = {
            x = config.mirrors.pie_chart.x + 120,
            y = config.mirrors.pie_chart.y + 170 + 170,
            w = 44 * 5,
            h = 30 * 5,
        },
        color_key = {
            input = "#45CC65",
            output = "#45CC65"
        }
    },
    config.resolutions.thin.width,
    config.resolutions.thin.height
)
