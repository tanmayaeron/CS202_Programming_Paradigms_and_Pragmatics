print "enter year: ";
$year = <STDIN>;

# 0 for non leap 
# 1 for leap

$result = ifleap($year);
if($result==0)
{
	print "It is not a leap year";
}
else
{
	print "It is a leap year";
}

sub ifleap
{
	$input = @_[0];
	if($input%4!=0)
	{
		#print "$input is not a leap year.";
		return 0;
	}
	elsif($input%100!=0)
	{
		#print "$input is a leap year.";
		return 1;
	}
	elsif($input%400!=0)
	{
		#print "$input is not a leap year.";
		return 0;
	}
	else
	{
		#print "$input is a leap year.";
		return 1;
	}
}