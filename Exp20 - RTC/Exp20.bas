$regfile = "m32def.dat"
$crystal = 8000000
$baud = 9600

Config Clock = Soft
Config Date = Dmy , Separator = /
Enable Interrupts

Time$ = "12:00:00"
Date$ = "01/01/15"

Dim Time_var As Byte
Dim Date_var As Byte

Do

   Gosub Time_date_check

Loop

Time_date_check:
Waitms 500

Print Time$
Print Date$
Print "The Second Is " ; _sec
Return