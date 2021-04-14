#!/usr/local/bin/perl
$first = (a,b,c)[0];
print "$first\n";
($name,$age)=('Raman',20);

%fruits = ('apple','red','banana','yellow','grape','black');
print "colour of apple is $fruits{apple}\n";
$fruits{'orange'}='orange';

$mark = 40;
if($mark>75)
{
	print "passed with distinction\n";
}
elsif($mark<35)
{
	print "failed\n";
}
else
{
	print "passed\n";
}
$a = 15;
print "variable a is >10" if ($a>10);                  

for($i=0;$i<10;$i++)
{
	print "i=$i\n";
}
foreach $i (a,b,c)
{
	print uc $i;
}
foreach $f (keys %fruits)
{
	print "Color of $f is $fruits{$f}\n";
}
$i =0;
while($i<10)
{
	print "i=$i\n";
	$i++;
}

print "enter your name ";
$name=<STDIN>;
print "Welcome $name\n";

foreach (a,b,c)
{
	print uc;
}
foreach $_ (a,b,c)
{
	print uc $_;
}
foreach (1..10)
{
	print;
}

$v1 = 10;
$v2 = 20;
add1($v1,$v2);

sub add1
{
	($a,$b)=@_;
	print $a+$b;
}

$v1 = 10;
$v2 = 30;
$v3 = 30;
$v3 = add2($v1,$v2);

sub add2
{
	my($k,$j)=@_;
	print "inside add sub value of k=$k j=$j\n";
	print "inside add sub value of globals v1=$v1 v2=$v2 v3=$v3\n";
	return $k+$j;
}

print "Value of globals v1=$v1 v2=$v2\n";
print "Value of scoped variables v3=$v3\n";
print "Value of variables inside sub k=$k j=$j\n";

for(my $r=0;$r<10;$r++)
{
	print "inside for r=$r\n";
}
print "outside for r=$r\n";

#use strict;
#$v1=10;
#$v2=20;
#add($v1,$v2);

#sub add
#{
#	($a,$b)=@_;
#	print $a+$b;
#}

use strict;
my $v1 = 10;
my $v2 = 20;
add3($v1,$v2);

sub add3
{
	my($a,$b)=@_;
	print $a+$b;
}

my $a=10;
my $ref_toa = \$a;
print "value of a using reference = $$ref_toa\n Value of a using directly=$a\n Reference of a= $ref_toa";

open(my $fh,"<","data.txt");
open(my $fh1,">","udata.txt");

while(my $line = <$fh>)
{
	print "line = $line";
	print $fh1 uc($line);
}
close($fh);
close($fh1);
