#!/usr/local/bin/perl

$time = <STDIN>;

if($time=~/^(0?[1-9]|1[0-2])\.([0-5][0-9]) (a|p)m$/)
{
	print"TRUE\n";
}
else
{
	print"FALSE\n";
}