;wait for drool to the side (should be between infill)
G91
G1 F20
G1 F1500
;G1 X-20 Y-20 E-20 F1500
G1 X-0.3 Y-0.3 F1500
G90
G4 P500

;going home now
G92 X0;set x 0
G1 X-1 F5000.0 
G1 X-500  F5200.0 ;horizontal move
G92 X0;set x 0
G1 X1 F5000.0
G1 X-10 F5000.0
G92 X0;final x zeroing

G92 Y0;set y 0
G1 Y-250 F5200.0 ;horizontal move, resetting feedrate to normal
G92 Y0;set y 0
G1 Y1 F5000.0
G1 Y-10 F5000.0
G92 Y0;final y zeroing
