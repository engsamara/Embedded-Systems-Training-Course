'**Directives**'
$regfile = "m32def.dat"
$crystal = 8000000

'**Configuration**'
Config Pind.0 = Output
Relay Alias Pind.0

'**Main Program**'
Do
Gosub Relay_working
Loop

'**SubRoutines**'
Relay_working:
Set Relay
Wait 1
Reset Relay
Wait 1
Return