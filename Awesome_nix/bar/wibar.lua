local gears = require("gears")
local awful = require("awful")
local wibox = require("wibox")

local get_wibar = function(s)
    ----------------------------------------------------------------!
    --! WIBOX
    s.mywibox = awful.wibar({ position = "top", screen = s })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        --* LEFT WIDGETS
        {  
            layout = wibox.layout.fixed.horizontal,
            {   --* Workspace tags
                require("bar.widgets.taglist")(s),
                    bg = theme.bg_color_2,
                    widget = wibox.container.background
            },
        },
        
        --* MIDDLE WIDGETS
        {
            require("bar.widgets.tasklist")(s),
                bg = theme.transparent,
                widget = wibox.container.background
        },

        --* RIGHT WIDGETS
        { 
            layout = wibox.layout.fixed.horizontal,
            {   --* Systray
                require("bar.widgets.systray")(s),
                    bg = theme.bg_color_2,
                    widget = wibox.container.background
            },
            {   --* Layout
                require("bar.widgets.layout_box")(s),
                   bg = theme.bg_color_2,
                   widget = wibox.container.background
            },           
            { --* Clock
                require("bar.widgets.clock")(s),
                    bg = theme.bg_color_2,
                    widget = wibox.container.background     
            },
            --[[
                {    --* Layout Box
                require("bar.widgets.layout_box")(s),
                bg = theme.bg_color_2,
                widget = wibox.container.background
            },
            --]]
        },
    }
    
end

return get_wibar