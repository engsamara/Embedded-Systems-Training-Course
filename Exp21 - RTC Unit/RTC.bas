$regfile = "m32def.dat"
$crystal = 4000000
$baud = 9600

Config Lcd = 20 * 2
Config Lcdpin = Pin , Db4 = Porta.0 , Db5 = Porta.1 , Db6 = Porta.2 , _
 Db7 = Porta.3 , E = Porta.4 , Rs = Porta.5

 Config Clock = Soft , Gosub = Sectic
 Config Date = Dmy , Separator = /
 Enable Interrupts

 Time$ = "12:00:00"
 Date$ = "01/01/15"

 Do

 Loop



 Sectic:
 Print "Time is " ; Time$
 Print "Date is " ; Date$
 Locate 1 , 1
 LCD "Time is " ; Time$
 Locate 2 , 1
 Lcd "Date is " ; Date$

' Print "Second Is " ; _sec
' Print "Minute Is " ; _min
' Print "Hour Is " ; _hour
' Print "Day Is " ; _day
' Print "Month Is " ; _month
' Print "Year Is " ; _year
 Return
