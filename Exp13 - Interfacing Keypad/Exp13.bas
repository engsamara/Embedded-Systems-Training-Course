$regfile = "m32def.dat"
$crystal = 8000000

Config Kbd = Portb , Debounce = 100 , Delay = 100

Dim Var As Byte

Do

Var = Getkbd()
If Var < 16 Then Gosub Keypad


Loop

Keypad:
Select Case Var

Case 0 : Print Var
Case 1 : Print Var
Case 2 : Print Var
Case 3 : Print Var
Case 4 : Print Var
Case 5 : Print Var
Case 6 : Print Var
Case 7 : Print Var
Case 8 : Print Var
Case 9 : Print Var
Case 10 : Print Var
Case 11 : Print Var
Case 12 : Print Var
Case 13 : Print Var
Case 14 : Print Var
Case 15 : Print Var

End Select

Return





