function v1 {
    cat .\prepare_generation.ps1 | Measure-Object -line | %{$_.lines}
}

function v2 {
    cat .\prepare_generation_v2.ps1 | Measure-Object -line | %{$_.lines}
}

$v1 = v1
$v2 = v2

Write-Host $v1 $v2


$hi =" ..."
while($v1 -eq $v2){
    $v1 = v1
    $v2 = v2
    if ($v1 -ne $v2) {
        Write-Host "$v1 not equal $v2"
         Copy-Item .\prepare_generation_v2.ps1 .\prepare_generation.ps1 -Force
         $hi = "copyed.."
     }
   
    Write-Host $hi
}


Write-Host "done"
