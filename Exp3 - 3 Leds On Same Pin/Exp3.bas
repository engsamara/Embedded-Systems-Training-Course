'**Directives**'
$regfile = "m32def.dat"
$crystal = 8000000

'**Configuration**'
Config Portc.0 = Output
Bc337 Alias Portc.0

'**Main Program**'
Do
   Gosub LED_BC337
Loop

'**SubRoutines**'

Led_bc337:

Set Bc337
Wait 1
Reset Bc337
Wait 1

Return