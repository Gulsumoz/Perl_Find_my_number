#! /usr/bin/perl
#saving 1...50 numbers in an array
@array = 1..50;
#random selection of the number 
$selection = $array[ rand @array ];
# option to display the selection 
#print "$selection\n";
#save the trial
$trial=0;
$maxtrial=8;
$found='false';
# loop to ask the trial and test the condition
while(($trial<$maxtrial)&&($found='false')){
      print"pick a number between 1 and 50: ";
      chomp($userpick=<STDIN>);
       $trial+=1;
# if random number bigger than the userpick
        if($selection>$userpick){
            print"Your guess was too low, try again.\n";
        }
#if random number is smaller than the userpick 
if($selection<$userpick){
            print"Your guess was too  high, try again.\n";
        }
#if user chhose to exit the program 
       if ($userpick=='quit' || $userpick=='exit'){
       print"you end the program number was $selection.\n";
       last;
        }
#if user finds the random number
if($selection==$userpick){
        print"Well done, $selection was my number! You got it correct in $trial guesses!";
last;
}
#if user cannot find the number in 8 trial terminate the program 
if ($trial==$maxtrial)
{
print"Unfortunately, you couldn't guess my number in 8 guesses, it was actually $selection.";

last; }
}


