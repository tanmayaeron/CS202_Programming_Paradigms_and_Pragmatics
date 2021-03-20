#!/usr/local/bin/perl

open($fh,"<","micro.txt");
$count = 0;

while($line = <$fh>)
{
	if($line=~/(v|V)/)
	{
		print($line);
		$count = $count+1;
	}
}
close($fh);
print "The count is $count\n";