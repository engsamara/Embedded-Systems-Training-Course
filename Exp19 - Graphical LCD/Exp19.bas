$regfile = "m32def.dat"
$crystal = 8000000
$lib "glcdks108.lib"

Config Graphlcd = 128 * 64sed , Dataport = Portc , Controlport = Portd , _
Ce = 0 , Ce2 = 1 , Cd = 2 , Rd = 3 , Reset = 4 , Enable = 5

Do
   Gosub Line_draw
   Gosub Pixels
   Gosub Circles
   Gosub Test
   Gosub Box_draw
   Gosub Picture
Loop

Line_draw:
Cls
Setfont Font16x16
Lcdat 4 , 2 , "Samara"
Waitms 500
Cls
Line(0 , 0) -(127 , 0) , 255

Waitms 500

Return

Pixels:
Cls
Pset 127 , 0 , 255
Pset 126 , 0 , 255
Pset 125 , 0 , 255
Pset 124 , 0 , 255
Pset 123 , 0 , 255
Pset 123 , 1 , 255
Pset 123 , 2 , 255
Pset 123 , 3 , 255
Pset 123 , 4 , 255

Return

Circles:
Cls
   Circle(63 , 31) , 1 , 255 : Waitms 500
   Circle(63 , 31) , 2 , 255 : Waitms 500
   Circle(63 , 31) , 3 , 255 : Waitms 500
   Circle(63 , 31) , 4 , 255 : Waitms 500
   Circle(63 , 31) , 5 , 255 : Waitms 500
   Circle(63 , 31) , 6 , 255 : Waitms 500
   Circle(63 , 31) , 7 , 255 : Waitms 500
   Circle(63 , 31) , 8 , 255 : Waitms 500
   Circle(63 , 31) , 9 , 255 : Waitms 500
   Circle(63 , 31) , 10 , 255 : Waitms 500
   Wait 1
    Circle(63 , 31) , 1 , 0 : Waitms 500
   Circle(63 , 31) , 2 , 0 : Waitms 500
   Circle(63 , 31) , 3 , 0 : Waitms 500
   Circle(63 , 31) , 4 , 0 : Waitms 500
   Circle(63 , 31) , 5 , 0 : Waitms 500
   Circle(63 , 31) , 6 , 0 : Waitms 500
   Circle(63 , 31) , 7 , 0 : Waitms 500
   Circle(63 , 31) , 8 , 0 : Waitms 500
   Circle(63 , 31) , 9 , 0 : Waitms 500
   Circle(63 , 31) , 10 , 0 : Waitms 500

Return

Test:

    Cls
   Circle(63 , 31) , 20 , 255
   Wait 2

Return


Box_draw:
    Cls
   Box(0 , 0) -(127 , 63) , 255
   Wait 1
   Box(0 , 0) -(127 , 63) , 0
   Wait 1
   Boxfill(10 , 10) -(117 , 53) , 255
   Wait 1
   Boxfill(10 , 10) -(117 , 53) , 0
   Wait 1

Return

Picture:
   Cls
   Showpic 0 , 0 , Pic
   Wait 2
Return

Pic:
$bgf "arein.bgf"

$include "font16x16.font"