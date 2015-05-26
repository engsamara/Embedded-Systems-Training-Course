'**Directives**'
$regfile = "m32def.dat"
$crystal = 8000000

'**Configuration**'
Config Portc = &B11111111
Sink Alias Portc
Config Porta = &HFF
Source Alias Porta

'**Main Program**'
Do

Gosub Leds

Loop

'**SubRoutines**'
Leds:

Sink.0 = 0 : Source.0 = 1
Waitms 100
Sink.1 = 0 : Source.1 = 1

Waitms 100
Sink.2 = 0 : Source.2 = 1
Waitms 100

Sink.0 = 1 : Source.0 = 0
Waitms 100
Sink.1 = 1 : Source.1 = 0
Waitms 100
Sink.2 = 1 : Source.2 = 0
Waitms 100


Return