#!/usr/local/bin/perl


$phone = <STDIN>;

if($phone=~/^[0-9]{3}( |-|)[0-9]{3}\g1[0-9]{4}$/)
{
	print"TRUE\n";
}
else
{
	print"FALSE\n";
}