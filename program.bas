$regfile = "attiny2313.dat"                                 ' tipe mikrokontroler
$crystal = 11059200                                      ' frek crystal
$baud = 9600
Dim Bufer As String * 1

Tombol Alias Pinb.0
Loop1 Alias Pinb.2
Loop2 Alias Pinb.1
Relay Alias Portd.5

'configurasi port
Config Portd.5 = Output
Config Portb.0 = Input
Config Portb.1 = Input
Config Portb.2 = Input

'aktifkan pull up internal
Portb.0 = 1
Portb.1 = 1
Portb.2 = 1

Dim Statetombol As Byte , Stateloop1 As Byte , Stateloop2 As Byte
Dim Valuetombol As Byte , Valueloop1 As Byte , Valueloop2 As Byte
Dim Kirimkarakter As Byte
Statetombol = 1
Stateloop1 = 1
Stateloop2 = 1

Do
    Kirimkarakter = 0
    If Loop1 = 0 And Stateloop1 = 1 Then
        Stateloop1 = 0
        Kirimkarakter = 1
        Valueloop1 = 1
        Print Chr(1) ; "A" ; Chr(2);                        'loop 1 conect = A
    End If
    If Loop1 = 1 And Stateloop1 = 0 Then
        Stateloop1 = 1
        Kirimkarakter = 1
        Valueloop1 = 0
        Print Chr(1) ; "B" ; Chr(2);                        'Loop 1 lepas = B
    End If

    If Loop2 = 0 And Stateloop2 = 1 Then
        Stateloop2 = 0
        Kirimkarakter = 1
        Valueloop2 = 1
        Print Chr(1) ; "C" ; Chr(2);                        'loop 2 conect = C

    End If
    If Loop2 = 1 And Stateloop2 = 0 Then
        Stateloop2 = 1
        Kirimkarakter = 1
        Valueloop2 = 0
        Print Chr(1) ; "D" ; Chr(2);                        'Loop 2 lepas = D
    End If

    If Kirimkarakter = 1 Then
        If Valueloop1 = 1 And Valueloop2 = 1 Then Print Chr(1) ; "G" ; Chr(2);       'Loop 1 + loop 2 conect = G
    End If

    Kirimkarakter = 0
    If Tombol = 0 And Statetombol = 1 Then
        Statetombol = 0
        Kirimkarakter = 1
        Valuetombol = 1
        Print Chr(1) ; "E" ; Chr(2);                        'Tombol conect = E
    End If
    If Tombol = 1 And Statetombol = 0 Then
        Statetombol = 1
        Kirimkarakter = 1
        Valuetombol = 0
        Print Chr(1) ; "F" ; Chr(2);                        'Tombol lepas = F
    End If
    If Kirimkarakter = 1 Then
        If Valueloop1 = 1 And Valueloop2 = 0 And Valuetombol = 1 Then Print Chr(1) ; "H" ; Chr(2);       ' Loop 1 + tombol = H
        If Valueloop2 = 1 And Valueloop1 = 0 And Valuetombol = 1 Then Print Chr(1) ; "I" ; Chr(2);       ' Loop 2 + tombol = I
        If Valueloop1 = 1 And Valueloop2 = 1 And Valuetombol = 1 Then Print Chr(1) ; "J" ; Chr(2);       'Loop 1 + loop 2 + tombol = J

    End If

    Bufer = Inkey()
    If Bufer = "Q" Then
        Waitms 75
        Relay = 0
        Waitms 500
        Relay = 1
    End If

Loop


' loop 1 conect = A
' Loop 1 lepas = B
' loop 2 conect = C
' Loop 2 lepas = D
' Tombol conect = E
' Tombol lepas = F
' Loop 1 + loop 2 conect = G
' Loop 1 + tombol = H
' Loop 2 + Tombol conect = I
' Loop 1 + loop 2 + tombol = J