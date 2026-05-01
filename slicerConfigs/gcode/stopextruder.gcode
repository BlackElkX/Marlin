;begin stop-code for extruder
G92 E0                                         ;Set the current position for the extruder as zero.
G1 E-25 F2700                                  ;finish extruding, by retracting 25mm
G92 E0                                         ;Set the current position for the extruder as zero.
;end stop-code for extruder
