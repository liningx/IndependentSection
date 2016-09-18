$excelApp = new-object -ComObject "Excel.Application"
$excelFilePath = "E:\01.xlsx"
$excelFile = $excelApp.Workbooks.Open($excelFilePath)
$sheet2 = $excelFile.Sheets(2)

$hashTableForExcel = @{}
$Row=1
for ($i=1;$i -le 464; $i++ ){
    $hashTableForExcel[$sheet2.Range("A$i").Text] = $sheet2.Range("B$i").Text 
}



$sheet1 = $excelFile.Sheets(1)
$cells = $sheet1.Cells

for ($j=2;$j -le 649; $j++){
    $newVal= $hashTableForExcel[$sheet1.Range("G$j").Text]
0    Write-Host $newVal
    $cells.item($j,6) =$newVal     
}

$excelFile.Save()

$excelFile.Close()
$excelApp.Application.Quit()