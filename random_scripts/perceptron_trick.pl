#!/usr/bin/perl -w
use strict;

# How many times does the perceptron trick need to be applied to move (1,1)
# to correct region of 3x_1 + 4x_2 - 10 = 0 with a learning rate of 0.1
# Was very stuck with output 11 when the counter should've started at 1.
# 
# The answer is 10.

my $x1 = 3;
my $x2 = 4;
my $coeff = -10;
my $count = 1;

while (1*$x1 + 1*$x2 +$coeff < 0){
   $count++;
   $x1 = $x1+0.1;
   $x2 = $x2 + 0.1;
   $coeff = $coeff +0.1;
}

print($count);
print("\n");
