M73 (save state, restore on end)
G90 (absolute mode)
G94 (units per minute mode)
F#<_speed_home> (set home speed)
#1=1

o<loop> while [#1 LE 9]

  o<ordy> if [#<_home_order_y> EQ #1]
    o<diry> if [#<_home_dir_y> GT +0.5]
      G38.1 Y+10 (home Y axis)
      G10 L9 Y[#<_motorlimit_yp> + #<_homeswitch_hysteresis>] (set absolute Y)
      G53 G0 Y[#<_home_y>] (move to home)
    o<diry> elseif [#<_home_dir_y> LT -0.5]
      G38.1 Y-10 (home Y axis)
      G10 L9 Y[#<_motorlimit_ym> - #<_homeswitch_hysteresis>] (set absolute Y)
      G53 G0 Y[#<_home_y>] (move to home)
    o<diry> endif
  o<ordy> endif

  o<ordz> if [#<_home_order_z> EQ #1]
	o<probechk> if [#<_pin_input4> EQ #1]
		  G91 G01 Z-2 F200
		  G90
		  F#<_speed_home> (set home speed)
	o<probechk> endif
    o<dirz> if [#<_home_dir_z> GT +0.5]
      G38.1 Z+10 (home Z axis)
      G10 L9 Z[#<_motorlimit_zp> + #<_homeswitch_hysteresis>] (set absolute Z)
      G53 G0 Z[#<_home_z>] (move to home)
    o<dirz> elseif [#<_home_dir_z> LT -0.5]
      G38.1 Z-10 (home Z axis)
      G10 L9 Z[#<_motorlimit_zm> - #<_homeswitch_hysteresis>] (set absolute Z)
      G53 G0 Z[#<_home_z>] (move to home)
    o<dirz> endif
  o<ordz> endif

  #1 = [#1 + 1]
o<loop> endwhile
