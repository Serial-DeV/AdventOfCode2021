$h = 0
$d = 0
$aim = 0

foreach($line in Get-Content .\input.txt) {

	$line = $line -split ' '

	if($line[0] -eq 'forward'){
		$h = $h + $line[1]
		$d = $d + ($aim * $line[1])
	}

	if($line[0] -eq 'up'){
		$aim = $aim - $line[1]
	}

	if($line[0] -eq 'down'){
		$aim = $aim + $line[1]
	}

}

$res = $h * $d
echo $res