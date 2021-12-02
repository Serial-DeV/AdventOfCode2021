$sum = 0
$current = 2147483647

foreach($line in Get-Content .\input.txt) {
	$line = $line -as [int]
    	if($line -gt $current){
        	$sum = $sum + 1
    	}
	$current = $line
}

echo $sum
