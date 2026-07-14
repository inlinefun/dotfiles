hl.config({
    animations = {
        enabled = true,
        workspace_wraparound = false
    }
})

hl.curve("default", { type = "bezier", points = { { 0.05, 0.7 }, { 0.1, 1.0 } }})
hl.curve("alternative", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } }})

hl.animation({ leaf = "windows", enabled = true, speed = 3, bezier = "default", style = "slide" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3, bezier = "alternative", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.5, bezier = "default", style = "slide" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 3, bezier = "alternative", style = "slide" })

hl.animation({ leaf = "fade", enabled = true, speed = 2.5, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 3, bezier = "default" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 5, bezier = "default", style = "once" })
-- hl.animation({ leaf = "shadowangle", enabled = true, speed = 5, bezier = "default", style = "once" })
-- hl.animation({ leaf = "glowangle", enabled = true, speed = 5, bezier = "default", style = "once" })

hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "alternative", style = "slide" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3, bezier = "alternative", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3, bezier = "alternative", style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3, bezier = "alternative", style = "slidevert" })
hl.animation({ leaf = "specialWorkspaceIn", enabled = true, speed = 3, bezier = "alternative", style = "slidevert" })
hl.animation({ leaf = "specialWorkspaceOut", enabled = true, speed = 3, bezier = "default", style = "slidevertfade" })

hl.animation({ leaf = "zoomFactor", enabled = true, speed = 3, bezier = "alternative" })
