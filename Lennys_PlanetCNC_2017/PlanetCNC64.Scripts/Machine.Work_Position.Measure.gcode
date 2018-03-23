M73 (save state, restore on end)
#3 = #<_abs_z> (store current z position)
G90 (absolute mode)
F#<_speed_probe> (set probe speed)
G38.2 Z100000 (touch down)
G04 P1.0 (dwell for sensor readings - NIR and color)
G00 Z-10
 G92 Z#<_sensor_thick> (set Z)
 G53 G0 Z#3 (move back to stored position)
