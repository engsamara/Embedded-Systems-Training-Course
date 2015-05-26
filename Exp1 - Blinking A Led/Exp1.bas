'**Directives**'
$regfile = "m32def.dat"
$crystal = 8000000

'**Configuration**'
Config Portc = Output
Config Porta = &HFF                                         ' Or Config PORTA=Output Or Config  PORTA=&B11111111 Or Cnfig PORTA=255
Sink Alias Portc
Source Alias Porta

'**Main Program**'
Do
   Gosub Leds
Loop

'**SubRoutines**'
Leds:
Sink.0 = 0
Source.0 = 1

Wait 1

Sink.0 = 1
Source.0 = 0

Wait 1
Return