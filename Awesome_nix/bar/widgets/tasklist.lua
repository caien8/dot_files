local awful 	= require("awful")
local gears 	= require("gears")
local wibox 	= require("wibox")
local beautiful = require("beautiful")

local get_tasklist = function(s)

	local tasklist_buttons = gears.table.join
	(
		awful.button({ }, 1, function (c)
		    --? Without this, the following :isvisible() makes no sense
		    c.minimized = false
		    if not c:isvisible() and c.first_tag then
		        c.first_tag:view_only()
		    end
		    -- This will also un-minimize the client, if needed
		    client.focus = c
		    c:raise()
		end),
		awful.button({ }, 3, function (c)
		    c:kill()
		end)
	)

	--? I'll be real, this one is a mess. I won't even try to explain. good luck
	local mytasklist =
	{
		{
			awful.widget.tasklist
			{
				screen   = s,
				filter   = awful.widget.tasklist.filter.minimizedcurrenttags,
				buttons  = tasklist_buttons,
				layout   =
				{
					spacing = 0,
					layout  = wibox.layout.flex.horizontal
				},
				widget_template =
				{
					{
					    {
					        {
					            id     = "text_role",
					            widget = wibox.widget.textbox,
					        },
					        valign = "center",
					        halign = "center",
					        widget = wibox.container.place,
					    },
					    bg     = theme.bg_color_2,
					    widget = wibox.container.background,
					},
					left  	= theme.universalsize / 14,
					right 	= theme.universalsize / 14,
					top 	= theme.universalsize / 20,
					bottom 	= theme.universalsize / 20,
					widget 	= wibox.container.margin,
				},
			},
			bg     = theme.transparent,
			widget = wibox.container.background,
		},
		left  = theme.universalsize / 20,
		right = theme.universalsize / 20,
		widget = wibox.container.margin
	}
	return mytasklist
end

return get_tasklist
