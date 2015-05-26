$regfile = "m8def.dat"
$crystal = 8000000
$baud = 9600

Config Portb.0 = Input : Switch Alias Pinb.0 : Portb.0 = 1
Config Portb.1 = Output : Led Alias Portb.1 : Set Led
Config Debounce = 50

Dim Receive As Byte
Receive = 1
Dim Var1 As Byte

Do

Debounce Switch , 0 , Send_a , Sub

If Ischarwaiting() = Receive Then
Var1 = Inkey()
Gosub Check
End If



Loop

Send_a:

Print "B"

Return

Check:

If Var1 = "A" Then Toggle Led

Return