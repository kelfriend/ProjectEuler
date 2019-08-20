# A unit fraction contains 1 in the numerator.
# The decimal representation of the unit fractions with denominators 2 to 10
# are given:

#    1/2	= 	0.5
#    1/3	= 	0.(3)
#    1/4	= 	0.25
#    1/5	= 	0.2
#    1/6	= 	0.1(6)
#    1/7	= 	0.(142857)
#    1/8	= 	0.125
#    1/9	= 	0.(1)
#    1/10	= 	0.1 

# Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. 
# It can be seen that 1/7 has a 6-digit recurring cycle.

# Find the value of d < 1000 for which 1/d contains the longest recurring cycle
# in its decimal fraction part.
reciprocal_cycle_lengths:=[];;
coprime_to_10:=Filtered(Primes,x->(x mod 2<>0) and (x mod 5<>0));;
for d in coprime_to_10 do
    n:=1;;
    repeat
        n:=n+1;;
    until
        10^n mod d = 1;
    Add(reciprocal_cycle_lengths,n);
od;
coprime_to_10[PositionMaximum(reciprocal_cycle_lengths)];