[char[]]$epsilon = "000000000000"
[char[]]$gamma = "111111111111"

For($i=0;$i -lt 12;$i++) {
	$c0 = 0
	$c1 = 0 
	foreach($line in Get-Content .\input.txt) {

		if($line[$i] -eq '0'){
			$c0 = $c0 + 1
		}
		elseif($line[$i] -eq '1'){
			$c1 = $c1 + 1
		}
	}
	if($c1 -gt $c0){
		$epsilon[$i] = '1'
		$gamma[$i] = '0'
	}

}


$epsilon2 = [string]::new($epsilon)
$gamma2 = [string]::new($gamma)

$eint = [Convert]::ToInt32($epsilon2,2)
$gint = [Convert]::ToInt32($gamma2,2)

echo ($eint * $gint)

