#!/usr/local/bin/perl

print "Welcome to Hangman!!!\n";

@words_list = ("computer","radio","calculator","teacher","bureau","police","geometry",
				"president","subject","country","environment","classroom","animals",
				"province","month","politics","puzzle","instrument","kitchen","language",
				"vampire","ghost","solution","service","software","security","expert",
				"website","agreement","support","compatibility","advanced","search",
				"triathlon","immediately","encyclopedia","endurance","distance","nature",
				"history","organization","international","championship","government",
				"popularity","thousand","feature","wetsuit","fitness","legendary",
				"variation","equal","approximately","segment","priority","physics",
				"branch","science","mathematics","lightning","dispersion","accelerator",
				"detector","terminology","design","operation","foundation","application",
				"prediction","reference","measurement","concept","perspective","overview",
				"position","airplane","symmetry","dimension","toxic","algebra","illustration",
				"classic","verification","citation","unusual","resource","analysis","license",
				"comedy","screenplay","production","release","emphasis","director","trademark",
				"vehicle","aircraft","experiment");
				
$number_of_words = scalar @words_list;

while(1)
{
	
	@hangman = initialise_hangman();
	
	$index_word = int(rand($number_of_words-1));
	$word_to_guess = $words_list[$index_word];
	@word_to_guess = split(undef,$word_to_guess);
	$length_word = scalar @word_to_guess;
	@current_word = ();
	for($i=0;$i<$length_word;$i++)
	{
		push @current_word,"_";
	}

	$guesses_left = 6;
	$letters_left = $length_word;
	@guessed_letters = ();


	while($guesses_left>0)
	{
		
		print @hangman;
		
		print "\nHere is your word: @current_word\n";
		print "Guesses so far: @guessed_letters\n";
		
		#making guess and user input validation
		while(1)
		{
			
			print "Make a guess: ";
			$guess = <STDIN>;
			chomp($guess);
			if($guess=~/[a-zA-Z]/&&length($guess) == 1)
			{
				$guess = lc $guess;
				$len = scalar @guessed_letters;
				for($i=0;$i<$len;$i++)
				{
					last if($guess eq $guessed_letters[$i]);
				}
				if($i==$len)       
				{
					push @guessed_letters,$guess;
					last;
				}
				else
				{
					print "You have already guessed $guess. Make another guess.\n";
				}
			}
			else
			{
				print "Invalid Input, Enter again.\n";
			}
		}
		
		#checking if it is in letter

		$count = 0;
		for($i=0;$i<$length_word;$i++)
		{
			if($guess eq $word_to_guess[$i])
			{
				$current_word[$i] = $guess;
				$count++;
			}
		}
		
		$letters_left = $letters_left-$count;
		if($count==0)
		{
			$guesses_left--;
			print "Bad guess!!! $guesses_left guesses left\n\n";
			modify_hangman(6-$guesses_left);
		}
		elsif($letters_left==0)
		{
			last;
		}
		else
		{
			print "Good guess!!! $guesses_left guesses left\n\n";
		}
		
	}
	
	if($guesses_left==0)
	{
		modify_hangman(6);
		print @hangman;
		print "The word was $word_to_guess\n";
		print "You have run out of chances. Game Over!!!\n\n";
	}
	else
	{
		print "The word is $word_to_guess\n";
		print "Great!!! You have guessed word correctly.\n\n";
	}
	
	print "Do you want to play again ? Y/N ";
	$choice = <STDIN>;
	chomp($choice);
	last if(uc $choice eq N);
	
}

sub initialise_hangman 
{
	@arr = ("    ____\n",
	        "   :    :\n",
			"   :    "," ","\n",
			"   :   "," "," "," ","\n",
			"   :    "," ","\n",
			"   :   "," "," "," ","\n",
			"   :\n",
			" __:__ \n\n");
	return @arr;
}

sub modify_hangman
{
	$mode=@_[0];
	if($mode==1)
	{
		$hangman[3]="O";
	}	
	elsif($mode==2)
	{
		$hangman[7]=":";
		$hangman[11]=":";
	}
	elsif($mode==3)
	{
		$hangman[6]="\\";
	}
	elsif($mode==4)
	{
		$hangman[8]="/";
	}
	elsif($mode==5)
	{
		$hangman[14]="/";
	}
	else
	{
		$hangman[16]="\\"
	}
}





















