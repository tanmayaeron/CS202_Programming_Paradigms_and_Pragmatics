#!/usr/local/bin/perl


open($fh,"<","micro.txt");
$count = 0;

while($line = <$fh>)
{
	while($line=~/\b([a-zA-Z]+[A-Z][a-zA-Z]+)\b/g)
	{
		print "$1\n";
		$count = $count+1;
	}
}
close($fh);
print "There are $count words with a capital letters in the middle.\n";