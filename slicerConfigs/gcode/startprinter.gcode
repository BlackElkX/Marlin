;begin of start-code printer
G21                                            ;milimeter units
G90                                            ;absolute x and y positioning
M82                                            ;absolute extruder positioning
G28                                            ;home
;G0 X330 Y316                                  ;move head to oposite side of home
;M107 T0                                       ;set fan off
M140 S{material_bed_temperature}               ;set bed temperature
M104 S{material_print_temperature, 0} T0       ;set hotend 1 temperature
M104 S{material_print_temperature, 1} T1       ;set hotend 2 temperature
M104 S{material_print_temperature, 2} T2       ;set hotend 3 temperature
M190 S{material_bed_temperature}               ;wait for bed temperature
M109 S{material_print_temperature, 0} T0       ;wait for hotend temperature
G29                                            ;bed leveling

;extruder 1
T0                                             ;tool change to extruder 1
G92 E0                                         ;Set the current position for extruder 1 as zero.
G0 X0.0   Y1.0  Z0.0   F2700.0                 ;move extruder 1 to 0,1,0 and set feedrate
G1 X60.0  E60                                  ;extrude 60 mm filament
G1 X100.0 E-12.5 F500.0                        ;finish extruding, by retracting
;G92 E0                                         ;Set the current position for extruder 1 as zero.

;extruder 2
T1                                             ;tool change to extruder 2
G92 E0                                         ;Set the current position for extruder 2 as zero.
G0 X110.0   Y1.0  Z0.0   F2700.0               ;move out of printing area
G1 X170.0  E60                                 ;extrude 60 mm filament
G1 X210.0 E-12.5 F500.0                        ;finish extruding, by retracting
;G92 E0                                         ;Set the current position for extruder 2 as zero.

;extruder 3
T2                                             ;tool change to extruder 3
G92 E0                                         ;Set the current position for extruder 3 as zero.
G0 X220.0   Y1.0  Z0.0   F2700.0               ;move out of printing area
G1 X280.0  E60                                 ;extrude 60 mm filament
G1 X320.0 E-12.5 F500.0                        ;finish extruding, by retracting
;G92 E0                                         ;Set the current position for extruder 3 as zero.

;back to default extruder and clean up some left overs.
T0                                             ;tool change to extruder 1
;G92 E0                                         ;Set the current position for extruder 1 as zero.
G0  Z15.0 F{speed_travel}                      ;Move the platform down 15mm which clean up some left overs from the nozzle.
;G1  F200 E3                                    ;Set feedrate and extrude 3mm
;end of start-code for printer
