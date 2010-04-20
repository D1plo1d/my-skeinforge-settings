;home
G28; home the reprap

;settings
G21; metric is gooderer
G90
M113 S0.001; set extruder PWM
G92 E0; zero the extruded length

;wipe
G0 X60 Y5 Z0; move to pre-wipe position and proceed to spooge
M109 S190; warm up extruder
G1 X60 Y5 Z0 F3000.0 E1000.0; feed for start of next move + extruder dwell
G1 X30 Y5 Z0 F3000.0; wipe the nozel and reset the feedrate

;Re-home X and Y for build
;going home now
G92 X0;set x 0
G1 X-1 F3000.0
G1 X-500 F3200.0 ;horizontal move
G92 X0;set x 0
G1 X1 F3000.0
G1 X-10 F3000.0
G92 X0;final x zeroing

G92 Y0;set y 0
G1 Y-250 F3200.0 ;horizontal move, resetting feedrate to normal
G92 Y0;set y 0
G1 Y1 F3000.0
G1 Y-10 F3000.0
G92 Y0;final y zeroing

G1 E1000.0
G92 E0; zero the extruded length and position
