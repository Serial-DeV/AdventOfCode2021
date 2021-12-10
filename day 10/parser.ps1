$res = 0

#): 3 points
#]: 57 points
#}: 1197 points
#>: 25137 points



foreach($line in Get-Content .\input.txt) {
	[System.Collections.ArrayList]$openingchars= @()
	For($i=0;$i -lt $line.length;$i++) {
		if($line[$i] -eq '(' -Or $line[$i] -eq '[' -Or $line[$i] -eq '{' -Or $line[$i] -eq '<'){
			$openingchars.Add($line[$i])
		}

		elseif($line[$i] -eq ')'){
			if($openingchars[$openingchars.Count – 1] -eq '('){
				$openingchars.RemoveAt($openingchars.Count – 1)
			}
			else{
				$res = $res + 3
				break
			}
		}

		elseif($line[$i] -eq ']'){
			if($openingchars[$openingchars.Count – 1] -eq '['){
				$openingchars.RemoveAt($openingchars.Count – 1)
			}
			else{
				$res = $res + 57
				break
			}
		}

		elseif($line[$i] -eq '}'){
			if($openingchars[$openingchars.Count – 1] -eq '{'){
				$openingchars.RemoveAt($openingchars.Count – 1)
			}
			else{
				$res = $res + 1197
				break
			}
		}

		elseif($line[$i] -eq '>'){
			if($openingchars[$openingchars.Count – 1] -eq '<'){
				$openingchars.RemoveAt($openingchars.Count – 1)
			}
			else{
				$res = $res + 25137
				break
			}
		}
	}
}

echo $res

