$regfile = "m32def.dat"
$crystal = 8000000
$baud = 9600

Config Aci = On , Compare = Off , Trigger = Falling
Enable Interrupts
Enable Aci
Start Ac
On Aci Aci_check
Do

Idle

Loop

Aci_check:
Print "It Is Happened"
Return

