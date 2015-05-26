$regfile = "m32def.dat"
$crystal = 8000000
$baud = 9600

Config Portc = &B00000111
Leds Alias Portc
Set Leds.0 : Set Leds.1 : Set Leds.2

Config Portb = Input
Switch Alias Pinb
Pinb = 255

Config Debounce = 100
Print "Hello World"

Dim Count1 As Byte
Dim Count2 As Byte
Dim Count3 As Byte

Do
Debounce Switch.0 , 0 , Switch_1 , Sub
Debounce Switch.1 , 0 , Switch_2 , Sub
Debounce Switch.2 , 0 , Switch_3 , Sub

Loop

Switch_1:

Toggle Leds.0
Incr Count1
Print "Switch 1 Has Been Pressed " ; Count1

Return

Switch_2:

Toggle Leds.1
Incr Count2
Print "Switch 2 Has Been Pressed " ; Count2

Return

Switch_3:

Toggle Leds.2
Incr Count3
Print "Switch 3 Has Been Pressed " ; Count3

Return

