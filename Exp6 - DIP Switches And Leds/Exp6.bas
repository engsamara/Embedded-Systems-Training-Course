'**Directives**'
$regfile = "m32def.dat"
$crystal = 8000000

'**Configuration**'
Config Portc = Output
Leds Alias Portc

Config Portb = Input
Switches Alias Pinb
Portb = &B00001111

'**Main Program**'
Do
 Leds = Switches
Loop