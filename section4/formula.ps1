$list = New-Object System.Collections.ArrayList

function Get-formula($a, $b) {
    $c = $a - $b
    $d = $a + $b
    
    if ($c -gt -1){
        $list.Add("$a - $b =")
    }

    if ($d -lt 21){
        $list.Add("$a + $b =")
    }
}

for ($i = 0; $i -le 20; $i ++) {
    for ($j =0; $j -le 20; $j ++) {
        Get-formula $i $j
    }
}

$inputO = 0 .. ($list.Count - 1)

Get-Random -InputObject $inputO -Count $list.Count | %{ $list[$_] }
