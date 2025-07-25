conky.config = {
--  Based on ANTARES theme by Closebox73

-- Size and Position settings --
  alignment = 'bottom_left',
  gap_x = 60,
  gap_y = 60,
  maximum_width = 500,
  minimum_height = 400,
  minimum_width = 500,
  
-- Text settings --
  use_xft = true,
  font = 'Roboto:light:size=9',
  
-- Color Settings --
  default_color = 'white',
  default_outline_color = 'white',
  default_shade_color = 'white',
  color1 = 'FFFFFF',
  color2 = '7fff00',
  
-- Window Settings --
  background = false,
  border_width = 1,
  draw_borders = false,
  draw_graph_borders = false,
  draw_outline = false,
  draw_shades = false,
  own_window = true,
  own_window_colour = '000000',
  own_window_class = 'Conky',
  own_window_argb_visual = true,
  own_window_type = 'desktop',
  own_window_transparent = true,
  own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
  stippled_borders = 0,
  
-- Others --
  cpu_avg_samples = 2,
  net_avg_samples = 2,
  double_buffer = true,
  out_to_console = false,
  out_to_stderr = false,
  extra_newline = false,
  update_interval = 1,
  uppercase = false,
  use_spacer = 'none',
  show_graph_scale = false,
  show_graph_range = false,
  lua_load = '/home/shresthp/.config/conky/scripts/rings.lua',
  lua_draw_hook_pre = 'ring_stats',
  lua_draw_hook_post = 'draw_text',
}

conky.text = [[
${offset 0}${color2}${font Metropolis Black:size=60}${color1}${time %A}${font Cantarell:size=1}
${offset 0}${voffset 10}${font Cantarell:size=15}${time %d %B %Y}${font Cantarell:size=1}
${image ~/.config/conky/res/bg.png -p 0,120}\
${execi 300 ~/.config/conky/scripts/weather.sh}\
${offset 25}${voffset 23}${color2}${font weather icons:size=17}${execi 15 ~/.config/conky/scripts/weather-text-icon}${font}
${offset 67}${voffset -36}${color1}${font Cantarell:size=9}The Weather in ${execi 100 cat ~/.cache/weather.json | jq -r '.name'} is ${execi 100 cat ~/.cache/weather.json | jq -r '.weather[0].main'}. ${execi 100 cat ~/.cache/weather.json | jq '.main.temp' | awk '{print int($1+0.5)}'} °C
${offset 67}${voffset 0}${color1}${font Cantarell:size=9}Wind speed in your location is ${execi 100 (cat ~/.cache/weather.json | jq '.wind.speed')}km/h
${offset 67}${voffset 0}${color1}${font Cantarell:size=9}And Humidity is ${execi 100 (cat ~/.cache/weather.json | jq '.main.humidity')}%
${image ~/.config/conky/res/line.png -p 0,185}\
${offset 50}${voffset 55}${font Metropolis Medium:size=9}Cpu:${goto 165}Mem:${goto 275}Home:
${offset 50}${voffset }${font Metropolis Medium:size=9}${cpu cpu0}%${goto 165}${memperc} %${goto 275}$fs_used_perc %
${voffset 30}${offset 0}${color1}${font Metropolis Medium:size=14}Time is ${time %I} : ${time %M} ${time %p}
]]

