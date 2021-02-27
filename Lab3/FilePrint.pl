#!/usr/local/bin/perl
$length = scalar @ARGV;
if($length==0)
{
	print "No argument given\n";
}
else
{
	open($fh,"<",$ARGV[0]) or die "Can't open file";
	while($line = <$fh>)
	{
		print "$line";
	}
	close($fh);
}