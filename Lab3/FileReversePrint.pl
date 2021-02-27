#!/usr/local/bin/perl
$length = scalar @ARGV;
if($length==0)
{
	print "No argument given\n";
}
else
{
	open($fh,"<",$ARGV[0]) or die "Can't open file";
	@list = ();
	while($line = <$fh>)
	{
		unshift @list,$line;
	}
	close($fh);
	#print "@list";
	$length = scalar @list;
	for($i=0;$i<$length;$i++)
	{
		print "$list[$i]";
	}
	print "number of lines read = $length\n";   
}