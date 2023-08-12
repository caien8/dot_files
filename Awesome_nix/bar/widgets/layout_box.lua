-- by Hashino https://github.com/Hashino/dotfiles
-------------------------------------------------------------------------------------------------------------------
local gears 	= require("gears")
local awful 	= require("awful")
local wibox 	= require("wibox")
local theme	    = require("beautiful")
-------------------------------------------------------------------------------------------------------------------
local get_layoutbox = function(s)
-------------------------------------------------------------------------------------------------------------------
    theme.layout_tile 		= gears.color.recolor_image(theme.layout_tile, theme.fg_normal)
    theme.layout_floating 	= gears.color.recolor_image(theme.layout_floating, theme.fg_normal)
    theme.layout_magnifier 	= gears.color.recolor_image(theme.layout_magnifier, theme.fg_normal)
    theme.layout_max 		= gears.color.recolor_image(theme.layout_max, theme.fg_normal)
    theme.layout_fullscreen	= gears.color.recolor_image(theme.layout_fullscreen, theme.fg_normal)
    theme.layout_tilebottom	= gears.color.recolor_image(theme.layout_tilebottom, theme.fg_normal)
    theme.layout_tileleft 	= gears.color.recolor_image(theme.layout_tileleft, theme.fg_normal)
    theme.layout_dwindle 	= gears.color.recolor_image(theme.layout_dwindle, theme.fg_normal)
-------------------------------------------------------------------------------------------------------------------
	local layoutbox = wibox.widget
	{
		awful.widget.layoutbox(s),
		bottom 	= theme.universalsize / 6,
		top 	= theme.universalsize / 6,
		left	= theme.universalsize / 4,
		right	= theme.universalsize / 4,
		widget	= wibox.container.margin,
	}
	layoutbox:buttons({gears.table.join(
		awful.button({ }, 1, function () awful.layout.inc( 1) end),
		awful.button({ }, 3, function () awful.layout.inc(-1) end),
		awful.button({ }, 4, function () awful.layout.inc( 1) end),
		awful.button({ }, 5, function () awful.layout.inc(-1) end))
	})
	return layoutbox
end
-------------------------------------------------------------------------------------------------------------------
return get_layoutbox
-------------------------------------------------------------------------------------------------------------------