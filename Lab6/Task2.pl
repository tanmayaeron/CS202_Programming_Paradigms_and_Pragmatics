#!/usr/local/bin/perl


open($fh,"<","micro.txt");
my $count = 0;

while($line = <$fh>)
{
	if($line=~/\b(j|J)ava\b/)
	{
		print($line);
		$count = $count+1;
	}
}
close($fh);
print "The count is $count\n";