hl.config({
    animations = {
        enabled = true,
        workspace_wraparound = false
    }
})

hl.curve(
    "default",
    {
        type = "bezier",
        points = {
            { 0.05, 0.9 },
            { 0.1,  1.05 }
        }
    }
)
hl.curve(
    "default_variant",
    {
        type = "bezier",
        points = {
            { 0.05, 0.7 },
            { 0.1,  1.0 }
        }
    }
)

hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 3.0,
    bezier = "default",
    style = "slidevert"
})
hl.animation({
    leaf = "specialWorkspace",
    enabled = true,
    speed = 3.0,
    bezier = "default",
    style = "slide"
})

hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 3.0,
    bezier = "default_variant",
    style = "popin"
})
hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 3.0,
    bezier = "default_variant",
    style = "popin"
})
hl.animation({
    leaf = "windowsMove",
    enabled = true,
    speed = 3.0,
    bezier = "default",
    style = "slide"
})

-- some default animations
hl.animation({ leaf = "fade", enabled = true, speed = 3.0, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 3.0, bezier = "default" })
