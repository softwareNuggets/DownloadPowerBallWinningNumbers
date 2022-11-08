Sub buildFile()
    Dim ws As Worksheet
    Set ws = Worksheets("powerballs_winning")
    
    Dim m As String
    Dim d As String
    Dim y As String
    Dim n1 As String
    Dim n2 As String
    Dim n3 As String
    Dim n4 As String
    Dim n5 As String
    Dim pb As String
    Dim d1 As String
    
    Open "c:\youtube\sql\powerball\lottery.csv" For Output As #1
    
    For i = 2 To 1390
    
        d1 = ws.Cells(i, 1)
        m = ws.Cells(i, 11)
        d = ws.Cells(i, 12)
        y = ws.Cells(i, 13)
        n1 = ws.Cells(i, 4)
        n2 = ws.Cells(i, 5)
        n3 = ws.Cells(i, 6)
        n4 = ws.Cells(i, 7)
        n5 = ws.Cells(i, 8)
        pb = ws.Cells(i, 9)
        
        Print #1, y & Right("00" & m, 2) & Right("00" & d, 2) & "," & m & "," & d & "," & y & "," & n1 & "," & n2 & "," & n3 & "," & n4 & "," & n5 & "," & pb
    Next i
    
    Close #1
    MsgBox "done"
End Sub

