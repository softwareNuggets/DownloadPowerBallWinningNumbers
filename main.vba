Sub main()
    Dim ws As Worksheet
    Set ws = Worksheets("powerballs_winning")
    
    
    Dim row As Integer
    Dim winningNumbers As String
    Dim buckets() As String
    
    
    'lets loop over all the data
    row = 2
    While ws.Cells(row, 1) <> ""
        winnningNumbers = ws.Cells(row, 2)
        buckets = Split(winnningNumbers, " ")
        
        
        For j = 0 To 5
            ws.Cells(row, 4 + j) = buckets(j)
        Next j
        
        ws.Cells(row, 11) = Month(ws.Cells(row, 1))
        ws.Cells(row, 12) = Day(ws.Cells(row, 1))
        ws.Cells(row, 13) = Year(ws.Cells(row, 1))
        
        row = row + 1
    Wend
    
        
End Sub