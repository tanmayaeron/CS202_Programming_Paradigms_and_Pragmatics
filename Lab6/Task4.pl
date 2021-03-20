#!/usr/local/bin/perl


open($fh,"<","micro.txt");


while($line = <$fh>)
{
	while($line=~/"([^'\s-]+\s*([^'\s-]+)?)"/g)
	{
		print "$1\n";
	}
}
close($fh);
