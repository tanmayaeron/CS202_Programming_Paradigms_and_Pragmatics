#!/usr/local/bin/perl


open($fh,"<","micro.txt");
$count = 0;

while($line = <$fh>)
{
	while($line=~/(\ba([a-zA-z])\g2[a-zA-Z]*\b)/gi)
	{
		print "$1\n";
		$count = $count+1;
	}
}
close($fh);
print "There are $count words that start with a and have the same 2nd and 3rd charachter\n";