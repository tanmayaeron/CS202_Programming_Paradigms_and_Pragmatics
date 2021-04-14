#!/usr/local/bin/perl

print "Enter input string ";
$input_string  = <STDIN>;
chomp($input_string);
print "Enter delimiter ";
$delimit = <STDIN>;
chomp($delimit);

$new_string = $input_string;
@delimited_list = ();

$new_string =~s/\Q$delimit\E/\n/g;

print "$new_string";



#another method in perl, to make list of tokens
#this method split by single character
#if delimit is "ab", it will split either by a or b.

while($input_string=~/([^\Q$delimit\E]+)/g)
{
	push @delimited_list,$1;
}

