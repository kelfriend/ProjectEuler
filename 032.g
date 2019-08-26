# We shall say that an n-digit number is pandigital if it makes use of all the
# digits 1 to n exactly once; for example,
# the 5-digit number, 15234, is 1 through 5 pandigital.

# The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing
# multiplicand, multiplier, and product is 1 through 9 pandigital.

# Find the sum of all products whose multiplicand/multiplier/product identity can
# be written as a 1 through 9 pandigital.
# HINT: Some products can be obtained in more than one way so be sure to only
# include it once in your sum.
pandigital:=[];;
for n in [1..99] do
    for m in [1..9999] do
        p:=n*m;
        dig:=Concatenation(ListOfDigits(n),ListOfDigits(m),ListOfDigits(p));
        Sort(dig);
        if dig=[1..9] then
            if not p in pandigital then
                Add(pandigital,p);
            fi;
        fi;
    od;
od;
Sum(pandigital);