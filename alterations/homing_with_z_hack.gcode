;actually adjusting z (Z feedrate is set high so z moves will just make a noise)
M105
G91 ;relative positioning
;G1 X0.0 F30.0
;G1 X0.0 Z0.39 F30.0 ;<- layer thickness should equal skeinforge or random z move on slow xy move will occour and break all this shit till we're covered in feicesa
G1 X0.0 F3000 ;fast move back (just makes a noise) so that we don't risk an actual move
G1 X0.0 Z-0.39 F3000 ;<- layer thickness, what I said the last time about all this shit
G90 ;back to absolute positioning

;going home now
G92 X0;set x 0
G1 X0 F3000.0
G1 X-500 F3000.0 ;horizontal move
G92 X0;set x 0
G92 Y0;set y 0
G1 Y-250 F3000.0 ;horizontal move
G92 Y0;set y 0
