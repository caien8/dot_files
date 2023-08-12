local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local gears = require("gears")

theme = {}
theme.location				= "~/.config/awesome/theme/"
theme.universalsize 		= 24
theme.spacing 				= 5
theme.useless_gap   		= 3 
theme.gap_single_client 	= true

--* FONT
theme.font_name				= "Terminus (TTF) Medium "
theme.font_size			    = 10 
theme.font          		= theme.font_name .. tostring(theme.font_size)
theme.icon_theme 			= "Papirus-Dark"

--* WALLPAPER
theme.wallpaper 			= "/home/caien/.config/awesome/city.jpg"

--* COLORS
theme.transparent			= "#00000000"

theme.fg_normal     			= "#ddeeff"
theme.fg_urgent     			= "#ff0000"
theme.fg_focus      			= theme.fg_normal
theme.fg_minimize   			= theme.fg_normal

theme.bg_color_1    			= "#2a303b"
theme.bg_color_2    			= "#323845"
theme.bg_color_3    			= "#232935"
theme.bg_color_4    			= "#353b47"
theme.bg_color_5    			= "#5f6677"
theme.bg_color_6    			= "#2c3040"

theme.bg_normal     			= theme.bg_color_1
theme.bg_focus      			= theme.bg_normal
theme.bg_urgent     			= "#000000"
theme.bg_systray    			= theme.bg_normal

theme.bg_light      = "#232530"
theme.bg_very_light = "#bcc2ef"

--* BORDER
theme.rounded_corners = true
theme.border_radius = 32
theme.useless_gap   = dpi(4)
theme.border_width                      = 10

theme.border_normal = "#bcc2ef"
theme.border_focus  = "#bcc2ef"
theme.border_marked = theme.bg_very_light

--* SYSTRAY
theme.systray_icon_spacing              = theme.spacing
theme.bg_systray                        = theme.bg_color_2

--* NOTIFICATION
theme.notification_bg                   = theme.bg_color_1
theme.notification_max_width 	        = theme.universalsize * 30
theme.notification_max_height 	        = theme.universalsize * 40
theme.notification_icon_size 	        = theme.universalsize * 5
theme.notification_width		        = theme.notification_max_width
theme.notification_opacity 	        	= 0.95
theme.notification_font                 = theme.font
theme.notification_border_width         = theme.universalsize / 2
theme.notification_border_color         = theme.bg_color_5

--* LAYOUT
theme.layout_tile       = theme.location.. "/icons/tile.png"
theme.layout_floating   = theme.location.. "/icons/floating.png"
theme.layout_max        = theme.location.. "/icons/max.png"
theme.layout_tilebottom = theme.location.. "/icons/tilebottom.png"
theme.layout_tileleft   = theme.location.. "/icons/tileleft.png"
theme.layout_dwindle    = theme.location.. "/icons/dwindle.png"

--* WINDOW

--* bar config
theme.bar_position = "top"
theme.bar_height = dpi(48)
theme.bar_item_radius = dpi(10)
theme.bar_item_padding = dpi(3)

--* regular
theme.titlebar_close_button_normal = theme.location.."titlebar/close/close_1.png"
theme.titlebar_close_button_focus = theme.location.."titlebar/close/close_2.png"

theme.titlebar_maximized_button_normal_inactive = theme.location.."titlebar/maximize/maximize_1.png"
theme.titlebar_maximized_button_focus_inactive  = theme.location.."titlebar/maximize/maximize_2.png"
theme.titlebar_maximized_button_normal_active = theme.location.."titlebar/maximize/maximize_3.png"
theme.titlebar_maximized_button_focus_active  = theme.location.."titlebar/maximize/maximize_3.png"

theme.titlebar_minimize_button_normal = theme.location.."titlebar/minimize/minimize_1.png"
theme.titlebar_minimize_button_focus  = theme.location.."titlebar/minimize/minimize_2.png"

--* hover
theme.titlebar_close_button_normal_hover = theme.location.."titlebar/close/close_3.png"
theme.titlebar_close_button_focus_hover = theme.location.."titlebar/close/close_3.png"

theme.titlebar_maximized_button_normal_inactive_hover = theme.location.."titlebar/maximize/maximize_3.png"
theme.titlebar_maximized_button_focus_inactive_hover  = theme.location.."titlebar/maximize/maximize_3.png"
theme.titlebar_maximized_button_normal_active_hover = theme.location.."titlebar/maximize/maximize_3.png"
theme.titlebar_maximized_button_focus_active_hover  = theme.location.."titlebar/maximize/maximize_3.png"

theme.titlebar_minimize_button_normal_hover = theme.location.."titlebar/minimize/minimize_3.png"
theme.titlebar_minimize_button_focus_hover  = theme.location.."titlebar/minimize/minimize_3.png"

theme.titlebar_height = dpi(28)



----------------------------------------------------------------*
theme.tasklist_plain_task_name          = true

theme.awesome_icon                      = theme.location.. "/icons/awesome.png"

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80