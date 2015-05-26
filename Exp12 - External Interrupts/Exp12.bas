$regfile = "m32def.dat"
$crystal = 8000000


Config Portc = Output
Leds Alias Portc



Config Int0 = Falling : Enable Int0 : Portd.2 = 1

Config Int1 = Falling : Enable Int1 : Portd.3 = 1

Config Int2 = Falling : Enable Int2 : Portb.2 = 1

Enable Interrupts

On Int0 Switch
On Int1 Switch
On Int2 Switch



Do
        Idle
Loop

Switch:
          Toggle Leds.0
          Toggle Leds.1
          Toggle Leds.2
          Toggle Leds.3
Return