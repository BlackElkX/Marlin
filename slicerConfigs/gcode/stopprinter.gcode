;begin of stop-code printer
;extruder 3
T2                                             ;tool change to extruder 3
G92 E0                                         ;Set the current position for extruder 3 as zero.
G1 E-25 F2700                                  ;finish extruding, by retracting 25mm
T1                                             ;tool change to extruder 2
G92 E0                                         ;Set the current position for extruder 2 as zero.
G1 E-25 F2700                                  ;finish extruding, by retracting 25mm
T0                                             ;tool change to extruder 1
G92 E0                                         ;Set the current position for extruder 1 as zero.
G1 E-25 F2700                                  ;finish extruding, by retracting 25mm
M104 S0 T2                                     ;set hotend 3 temperature to zero
M104 S0 T1                                     ;set hotend 2 temperature to zero
M104 S0 T0                                     ;set hotend 1 temperature to zero
M140 S0                                        ;set bed temperature to zero
G0 X330 Y316                                   ;move head to oposite side of home
M84                                            ;disable the steppers
;end of stop-code for printer
