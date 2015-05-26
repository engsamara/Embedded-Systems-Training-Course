$regfile = "m32def.dat"
$crystal = 8000000
$baud = 9600

Config Portc = Output
Leds Alias Portc

Config Portb = Input
Switch Alias Pinb
Pinb = 255

Do

Bitwait Switch.0 , Reset
Toggle Leds.0
Print "Switch 1 Has Been Pressed"

Bitwait Switch.1 , Reset
Toggle Leds.1
Print "Switch 2 Has Been Pressed"

Bitwait Switch.2 , Reset
Toggle Leds.2
Print "Switch 3 Has Been Pressed"

Loop