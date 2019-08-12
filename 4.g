# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.
pal:=[];
for x in [100..999] do
    for y in [100..999] do
        if String(x*y)=Reversed(String(x*y)) then
            Add(pal,x*y);
        fi;
    od;
od;
Maximum(pal);