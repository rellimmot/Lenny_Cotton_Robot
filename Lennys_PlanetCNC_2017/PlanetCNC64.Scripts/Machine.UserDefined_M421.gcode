M421
 M73 (save state, restore on end)
; #3 = #<_abs_z> (store current z position)
G90 (absolute mode)
F#<_speed_probe> (set probe speed)
G38.3 Z50 (touch down)
G91 G01 Z1 F600
G91 G01 Z1 F200
; G04 P1.0 (dwell for sensor readings - NIR and color)
; G92 Z#<_sensor_thick> (set Z)
; G91 G00 Z-1
; G53 G0 Z#3 (move back to stored position)
