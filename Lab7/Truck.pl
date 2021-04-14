#!/usr/local/bin/perl

print "Enter input string ";
$input_string  = <STDIN>;

if ($input_string=~/\bred([ \t]+[^ \t]+){0,2} pick(|-| )up truck\b.+\$[0-9][0-9,\.]*/)
{
	print "ACCEPTED\n";
}
elsif($input_string=~/\bpick(|-| )up truck([ \t]+[^ \t]+){0,2} red\b.+\$[0-9][0-9,\.]*/)
{
	print "ACCEPTED\n";
}
else
{
	print "REJECTED\n";
}
