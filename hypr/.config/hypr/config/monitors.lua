-- Monitor wiki https://wiki.hypr.land/Configuring/Basics/Monitors/
-- Example: output can be found with hyprctl monitors
-- hl.monitor({
--     output    = "DP-1",
--     mode      = "1920x1080@60",
--     position  = "0x0",
--     scale     = "1",
-- })

-- hl.monitor({output = "", mode = "preferred", position = "auto", scale = "auto"})
-- hl.monitor({ output = "DP-1", mode = "1920x1080", position = "0x0", scale = 1 })
-- hl.monitor({ output = "DP-2", mode = "1920x1080", position = "1920x0", scale = 1 })

hl.monitor({ output = "eDP-1", mode = "2880x1920@120", position = "0x0", scale = 2 })
hl.monitor({ output = "DP-10", mode = "3440x1440@143.923", position = "1440x0", scale = 1 })
hl.monitor({ output = "DP-11", mode = "1920x1080@60", position = "4880x0", scale = 1 })
