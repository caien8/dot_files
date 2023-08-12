pcall(require, "luarocks.loader")

local gears = require("gears")                                   -- Utils for colours & objects
require("awful.autofocus")
local awful = require("awful")                                   -- Window management
local wibox = require("wibox")                                   -- Widgets
local beautiful = require("beautiful")                           -- Themes
local naughty = require("naughty")                               -- Notification 
local menubar = require("menubar")

--------* MODULES -----------
require("modules.error_handle")
require("modules.layout")
require("modules.keys")
require("modules.menu")
require("modules.rules")
require("modules.signals")

beautiful.init("/home/caien/.config/awesome/theme/theme.lua")

--* Screen setup
screen.connect_signal("request::desktop_decoration", function(s)
  --- Creates starting tags on each screen
  awful.tag({ "" , "" , "" , "", "" }, s, awful.layout.layouts[1])
  -- Each screen has its own tag table.
end)

awful.screen.connect_for_each_screen(function(s)
    require("bar.wibar")(s)
    require("modules.wallpaper")
end)



----------------------------------------------------------------------------
-- AUTOSTART

awful.spawn.with_shell("xrandr --output Virtual-1 --mode 1920x1080")
