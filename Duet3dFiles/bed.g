; bed.g
; called to perform automatic delta calibration via G32
;
; generated by RepRapFirmware Configuration Tool on Fri Jul 13 2018 13:35:27 GMT+0200 (CEST)

M561 ; clear any bed transform

; Probe the bed at 3 peripheral and 0 halfway points, and perform 3-factor auto compensation
; Before running this, you should have set up your Z-probe trigger height to suit your build, in the G31 command in config.g.
G30 P0 X0       Y90     H0 Z-99999
G30 P1 X77.86   Y-44.95 H0 Z-99999
G30 P2 X-77.86  Y-44.95 H0 Z-99999
G30 P3 X0       Y0      H0 Z-99999 S3

; Use S-1 for measurements only, without calculations. Use S4 for endstop heights and Z-height only. Use S6 for full 6 factors
; If your Z probe has significantly different trigger