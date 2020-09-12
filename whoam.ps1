#whoami.ps1 | where {$_.type -eq "Group"} | Select Groupname | Sort GroupName

whomi /groups/ fo list | Select -Skip 4 | Where \{$_\} |\
foreach-object -Begin \{$i=0; $hash=@\{\}\} -Process \{\
	if (i$ -ge 4) \{\
	[PSCustomObject]$hash\
	$hash.Clear()\
	$i=0\
\}\
	else\
		\{\
		$data=$_-split \'93:\'94\
		$hash.Add($data[0].Replace(\'93 \'93, \'93\'94),$data[1].Trim())\
	\}\
\} }
