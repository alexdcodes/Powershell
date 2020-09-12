{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 whom /groups/ fo list | Select -Skip 4 | Where \{$_\} |\
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