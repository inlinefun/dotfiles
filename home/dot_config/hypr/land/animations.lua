hl.config({
    animations = {
        -- enabled = true,
        workspace_wraparound = false
    }
})

hl.curve("fast_spatial", { type = "spring", mass = 1, stiffness = 800, damping = 33.94 })
hl.curve("fast_effects", { type = "spring", mass = 1, stiffness = 3800, damping = 123.29 })
hl.curve("spacial", { type = "spring", mass = 1, stiffness = 380, damping = 31.24 })
hl.curve("effects", { type = "spring", mass = 1, stiffness = 1600, damping = 80.0 })
hl.curve("slow_spatial", { type = "spring", mass = 1, stiffness = 200, damping = 22.63 })
hl.curve("slow_effects", { type = "spring", mass = 1, stiffness = 800, damping = 33.94 })

-- speed doesn't affect a spring animation
-- animations are the same with 1 speed, and 100 speed

hl.animation({ leaf = "windows", enabled = true, speed = 1, spring = "effects", style = "popin 80%" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 1, spring = "fast_effects", style = "popin 80%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1, spring = "fast_effects", style = "popin 80%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 1, spring = "spacial" })

hl.animation({ leaf = "workspaces", enabled = true, speed = 1, spring = "spacial", style = "slidefade 10%" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1, spring = "spacial", style = "slidefade 10%" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 1, spring = "spacial", style = "slidefade 10%" })

hl.animation({ leaf = "layers", enabled = true, speed = 1, spring = "effects", style = "slide bottom" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 1, spring = "fast_effects", style = "slide bottom" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1, spring = "fast_effects", style = "slide bottom" })

hl.animation({ leaf = "fade", enabled = true, speed = 1, spring = "fast_effects" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1, spring = "fast_effects" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1, spring = "fast_effects" })
hl.animation({ leaf = "fadeLayers", enabled = true, speed = 1, spring = "fast_effects" })
hl.animation({ leaf = "fadeSwitch", enabled = true, speed = 1, spring = "fast_effects" })
