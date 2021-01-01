'============================================================================
'  PROJECT MICROCONTROLLER PARKING
'  PT RESKA MULTI USAHA
'============================================================================
$regfile = "m16def.dat"
$crystal = 11059200
$baud = 9600
Declare Sub Terima

Waitms 100
Dim Bufer As String * 1
Config Portb.0 = Output
Config Portb.1 = Output
Config Portb.2 = Output
Config Portb.3 = Output
Config Portb.4 = Output
'=============================
Config Portb.5 = Input
Config Portb.6 = Input
Config Portb.7 = Input
Config Porta.0 = Input

'=============================
Led0 Alias Portb.1
Led1 Alias Portb.2
Led2 Alias Portb.3
Relay Active Alias Portb.0
Buzzer Alias Portb.4
'=============================
Dim Led As Bit
'=============================
Portb.0 = 0
Portb.1 = 1
Portb.2 = 1
Portb.3 = 1
Portb.4 = 0
Waitms 250
Print "status OK"


Do
'========================================================================
      Bufer = Inkey()                                       'Noecho
   If Bufer = "Q" Then
      Waitms 75
      Relay Active = 1
      Buzzer = 1
      Waitms 500
      Relay Active = 0
      Buzzer = 0
   End If

'========================================================================
'========================================================================
      While Pinb.5 = 0 And Pinb.6 = 1 And Pinb.7 = 1
         Call Terima
         Led0 = 0
         Led1 = 1
         Led2 = 1
         Waitms 50
         Led0 = 1
         Led1 = 1
         Led2 = 1
         Waitms 250
         Print "A"                                          'loop 1 aktif
      Wend
'========================================================================
      While Pinb.5 = 1 And Pinb.6 = 0 And Pinb.7 = 1
         Call Terima
         Led0 = 1
         Led1 = 0
         Led2 = 1
         Waitms 50
         Led0 = 1
         Led1 = 1
         Led2 = 1
         Waitms 50
         Print "C"                                          'tiket aktif'
      Wend
'========================================================================
      While Pinb.5 = 1 And Pinb.6 = 1 And Pinb.7 = 0
         Call Terima
         Led0 = 1
         Led1 = 1
         Led2 = 0
         Waitms 50
         Led0 = 1
         Led1 = 1
         Led2 = 1
         Waitms 50
         Print "E"                                          'loop 2 aktif'
      Wend
'========================================================================
      While Pinb.5 = 0 And Pinb.6 = 0 And Pinb.7 = 1
         Call Terima
         Waitms 75
         Print "B"
         Led0 = 0
         Led1 = 0
         Led2 = 1
         Waitms 50
         Led0 = 1
         Led1 = 1
         Led2 = 1
         Waitms 50                                          'cetak tiket'
       Wend
'========================================================================
      While Pinb.5 = 1 And Pinb.6 = 0 And Pinb.7 = 0
         Call Terima
         Led0 = 1
         Led1 = 0
         Led2 = 0
         Waitms 50
         Led0 = 1
         Led1 = 1
         Led2 = 1
         Waitms 50
         Print "D"                                          'tombol tiket aktif & loop 2 aktif'
      Wend
'========================================================================
      While Pinb.5 = 0 And Pinb.6 = 1 And Pinb.7 = 0
         Call Terima
         Led0 = 0
         Led1 = 1
         Led2 = 0
         Waitms 50
         Led0 = 1
         Led1 = 1
         Led2 = 1
         Waitms 50
         Print "H"                                          'loop 1 & loop 2 aktif'
      Wend
'========================================================================
      While Pinb.5 = 0 And Pinb.6 = 0 And Pinb.7 = 0
         Call Terima
         Led0 = 0
         Led1 = 0
         Led2 = 0
         Waitms 50
         Led0 = 1
         Led1 = 1
         Led2 = 1
         Waitms 50
         Print "G" ;                                        'loop 1 ,loop 2 & tombol tiket aktif '
      Wend
'========================================================================
Loop
'========================================================================
Sub Terima
      Bufer = Inkey()                                       'Serial
   If Bufer = "Q" Then
      Waitms 75
      Relay Active = 1
      Buzzer = 1
      Waitms 500
      Relay Active = 0
      Buzzer = 0
   End If

End Sub