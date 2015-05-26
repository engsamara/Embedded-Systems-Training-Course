$regfile = "m32def.dat"
$crystal = 8000000

Config Portd.0 = Output
Relay Alias Portd.0

Config Pinb.0 = Input
Switch Alias Pinb.0

Dim Flag As Bit

Do
Gosub Relay_button
Loop

Relay_button:

   If Switch = 0 Then
      If Flag = 0 Then
      Set Relay : Set Flag : Waitms 1000
      Else
      Reset Relay : Reset Flag : Waitms 1000
      End If
   End If


Return