$regfile = "m32def.dat"
$crystal = 8000000

Config Portc = Output
Leds Alias Portc
Portc = &B11110000

Config Portb = Input
Switch_right Alias Pinb.0
Switch_left Alias Pinb.1

Portb.0 = 1 : Pinb.1 = 1

Config Debounce = 100

Do

Debounce Switch_right , 0 , Right_shift , Sub
Debounce Switch_left , 0 , Left_shift , Sub

Loop

Right_shift:

Rotate Leds , Right , 1


Return

Left_shift:

Rotate Leds , Left , 1

Return
