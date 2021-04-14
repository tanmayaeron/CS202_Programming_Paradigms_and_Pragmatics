#!/usr/local/bin/perl

print "Enter input string ";
$sequence = <STDIN>;
chomp($sequence);

if($sequence=~/^[ACTG]+$/)
{
	if($sequence=~/ATG([ACTG]{3})+(TAA|TAG|TGA)/)
	{
		print "ACCEPTED\n";
	}
	else
	{
		print "REJECTED\n";
	}
}
else
{
	print "REJECTED\n";
}