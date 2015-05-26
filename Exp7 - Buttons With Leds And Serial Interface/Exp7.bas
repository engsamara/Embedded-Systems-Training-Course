$regfile = "m32def.dat"
$crystal = 8000000
$baud = 9600

Config Portc = &B00000111
Led1 Alias Portc.0
Led2 Alias Portc.1
Led3 Alias Portc.2

Config Pinb.0 = Input : Switch1 Alias Pinb.0 : Pinb.0 = 1
Config Pinb.1 = Input : Switch2 Alias Pinb.1 : Pinb.1 = 1
Config Pinb.2 = Input : Switch3 Alias Pinb.2 : Pinb.2 = 1

Dim Count1 As Byte
Dim Count2 As Byte
Dim Count3 As Byte

Set Led1 : Set Led2 : Set Led3
Do

   If Switch1 = 0 Then Gosub Switch_1

   If Switch2 = 0 Then Gosub Switch_2

   If Switch3 = 0 Then Gosub Switch_3


Loop

Switch_1:
 Toggle Led1
 Incr Count1
 Print "Switch 1 Is Pressed " ; Count1
Return

Switch_2:
Toggle Led2
Incr Count2
Print "Switch 2 Is Pressed " ; Count2
Return

Switch_3:
Toggle Led3
Incr Count3
Print "Switch 3 Is Pressed " ; Count3
Return