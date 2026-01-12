local colors = require("colors")

return {
    sensitivities = {
        normal = 1.0,
        eye_measure = 0.1
    },
    -- resolution values from https://github.com/arjuncgore/waywall_generic_config
    resolutions = {
        normal = {
            width = 0,
            height = 0
        },
        tall = {
            -- do NOT the values
            width = 384,
            height = 16384
        },
        thin = {
            width = 340,
            height = 1080,
        },
        wide = {
            width = 1920,
            height = 300
        }
    },
    mirrors = {
        entity_count = {
            x = 10,
            y = 10,
            scale = 5,
            color = colors.text or "#ffffff"
        },
        pie_chart = {
            x = 1250,
            y = 415,
            scale = 1.5,
            color = colors.primary or "#00aeff"
        },
        pie_chart_labels = {
            x = 20,
            y = 500,
            scale = 2,
            color = colors.text or "#ffffff"
        }
    }
}
