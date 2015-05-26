$regfile = "m32def.dat"
$crystal = 8000000

Config Lcd = 20 * 4
Config Lcdpin = Pin , Db4 = Portc.0 , Db5 = Portc.1 , Db6 = Portc.2 , Db7 = Portc.3 , Rs = Portc.4 , E = Portc.5

Dim Namee As String * 5
Namee = "Arein"

Dim I As Byte

Deflcdchar 0 , 32 , 10 , 21 , 17 , 10 , 4 , 32 , 4          ' replace [x] with number (0-7)

Do
Gosub Lcd_check
Loop

Lcd_check:
Cursor Off
Locate 1 , 10
Lcd Namee
Locate 2 , 10
Lcd Chr(0)

Thirdline
For I = 0 To 8
Shiftcursor Right
Next I
Lcd "3-Center"
Fourthline
Lcd "Begining Of 4th Line"


Return