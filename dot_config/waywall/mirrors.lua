local waywall = require("waywall")
local colors = require("colors")
local config = require("config")

local manage_mirror = function(params)
    local mirror = nil
    return function(visible)
        if visible and not mirror then
            mirror = waywall.mirror(params)
        elseif not visible and mirror then
            mirror:close()
            mirror = nil
        end
    end
end

local pie_chart_colors = {
    final_blockentities = "#e96d4d",
    final_entities      = "#e145c2",
    final_mob_spawner   = "#4de1ca",
    final_chest         = "#c46de1",
    special_unspecified = "#45CC65",
    level               = "#64CEC4",
    game_renderer       = "#C4CEC4",
    tick                = "#6543CA",
    block_entities      = "#C4C46D"
}
local pie_chart_label_colors = {
    final = colors.primary,
    special = colors.secondary,
    default = colors.text
}
local pie_chart_label_base_object = {
    src = { x = 10, y = 859, w = 320, h = 57 },
    dst = {
        x = config.mirrors.pie_chart_labels.x,
        y = config.mirrors.pie_chart_labels.y,
        w = 340 * config.mirrors.pie_chart_labels.scale,
        h = 57 * config.mirrors.pie_chart_labels.scale,
    },
}

local function resolve_output_color(name)
    if name:sub(1, 6) == "final_" then
        return pie_chart_label_colors.final, name:sub(7)
    elseif name:sub(1, 8) == "special_" then
        return pie_chart_label_colors.special, name:sub(9)
    else
        return pie_chart_label_colors.default, name
    end
end
local make_pie_chart_label = function(color_key_input, color_key_output)
    return manage_mirror({
        src = pie_chart_label_base_object.src,
        dst = pie_chart_label_base_object.dst,
        color_key = {
            input = color_key_input,
            output = color_key_output
        }
    })
end


local mirrors = {
    entity_count = manage_mirror({
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
        } or nil
    }),
    entity_count_in_screen = manage_mirror({
        src = { x = 13, y = 37, w = 37, h = 9 },
        dst = {
            x = config.mirrors.entity_count.x,
            y = config.mirrors.entity_count.y,
            w = config.mirrors.entity_count.scale * 37,
            h = config.mirrors.entity_count.scale * 9
        },
        color_key = config.mirrors.entity_count.color and {
            input = "#414141",
            output = config.mirrors.entity_count.color
        } or nil
    }),

    -- pie chart contents
    pie_chart = manage_mirror({
        src = { x = 10, y = 680, w = 320, h = 170 },
        dst = {
            x = config.mirrors.pie_chart.x,
            y = config.mirrors.pie_chart.y,
            w = config.mirrors.pie_chart.scale * 320,
            h = config.mirrors.pie_chart.scale * 170
        }
    }),
    pie_chart_directory = manage_mirror({
        src = { x = 10, y = 663, w = 320, h = 20 },
        dst = {
            x = config.mirrors.pie_chart.x - (60), -- some random value lmao
            y = config.mirrors.pie_chart.y - (20 * config.mirrors.pie_chart_labels.scale),
            w = 320 * config.mirrors.pie_chart_labels.scale,
            h = 20 * config.mirrors.pie_chart_labels.scale
        },
        color_key = {
            input = "#fcfcfc",
            output = config.mirrors.pie_chart_labels.color,
        },
    }),
}

for name, input_color in pairs(pie_chart_colors) do
    local output_color = resolve_output_color(name)
    mirrors["pie_chart_label_" .. name] = make_pie_chart_label(input_color, output_color)
end

local disable_all = function()
    mirrors.entity_count(false)
    mirrors.entity_count_in_screen(false)
    -- pie chart
    mirrors.pie_chart(false)
    mirrors.pie_chart_directory(false)
    for _, mirror in pairs(mirrors) do
        mirror(false)
    end
end

local toggle_pie = function()
    mirrors.pie_chart(true)
    mirrors.pie_chart_directory(true)
    for name in pairs(pie_chart_colors) do
        mirrors["pie_chart_label_" .. name](true)
    end
end

local toggle_entity_count = function()
    mirrors.entity_count(true)
    mirrors.entity_count_in_screen(true)
end

return {
    disable_all = disable_all,
    toggle_entity_count = toggle_entity_count,
    toggle_pie = toggle_pie
}
