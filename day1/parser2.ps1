$total = 0
$currsum = 0
$precsum = 0
$elem1 = 0
$elem2 = 0
$elem3 = 0

$counterloop = 0

$lines = (Get-Content .\input.txt).Length

foreach($line in Get-Content .\input.txt) {

	$counterloop = $counterloop + 1

	if($counterloop -eq 1){
		$elem1 = $line -as [int]
	}

	elseif($counterloop -eq 2){
		$elem2 = $line -as [int]
	}

	elseif($counterloop -eq 3){
		$elem3 = $line -as [int]
		$precsum = $elem1 + $elem2 + $elem3
	}

	elseif(($counterloop -gt 3) -and ($counterloop -le $lines)){
		$elem1 = $elem2
		$elem2 = $elem3
		$elem3 = $line -as [int]
		$precsum = $currsum
		$currsum = $elem1 + $elem2 + $elem3
		
		if($currsum -gt $precsum){
			$total = $total + 1
		}
	
	}

}

echo $total