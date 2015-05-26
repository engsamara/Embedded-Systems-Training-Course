$regfile = "m32def.dat"
$crystal = 8000000

Config Lcdpin = Pin , Port = Portc , Rs = Pind.0 , E = Pind.1
Config Lcd = 16 * 2

Dim I As Byte

Do
Wait 2
Gosub Lcd_write
Loop


Lcd_write:

Home Upper : Lcd " Arein Samara"
For I = 0 To 5
Shiftlcd Right
Waitms 500
Next I

For I = 0 To 5
Shiftlcd Left
Waitms 500
Next I

Lowerline
For I = 0 To 4
Shiftcursor Right
Next I
Lcd "Hello"
cursor off

Return