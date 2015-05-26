$regfile = "m32def.dat"
$crystal = 4000000
$baud = 9600

Config Porta = &B00000111
Leds Alias Porta
Set Leds.0 : Set Leds.1 : Set Leds.2

Dim Get_rc_value As Word

Do

Get_rc_value = Getrc(pinc , 0)
Print Get_rc_value
Waitms 500
If Get_rc_value <= 2149 And Get_rc_value > 1500 Then Reset Leds.0
If Get_rc_value <= 1500 And Get_rc_value > 500 Then Reset Leds.1
If Get_rc_value <= 500 And Get_rc_value > 0 Then Reset Leds.2


Loop