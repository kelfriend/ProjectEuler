# The fraction 49/98 is a curious fraction, as an inexperienced mathematician in
# attempting to simplify it may incorrectly believe that 49/98 = 4/8,
# which is correct, is obtained by cancelling the 9s.

# We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

# There are exactly four non-trivial examples of this type of fraction,
# less than one in value, and containing two digits in the numerator and
# denominator.

# If the product of these four fractions is given in its lowest common terms,
# find the value of the denominator.
IsDigitCancellingFraction:=function(n,m)
    local a, b, c, d;

    b:=n mod 10;
    a:=(n-b)/10;
    d:=m mod 10;
    c:=(m-d)/10;

    if (n/m=b/c and a=d) or (n/m=a/d and b=c) then
        return true; # n/m can't be a/c or b/d if n<m
    fi;

    return false;
end;
dcf:=[];;
nums:=Filtered([12..99],x->x mod 10<>0);;
for i in nums do
    for j in Filtered(nums,x->x>i) do
        if IsDigitCancellingFraction(i,j) then
            Add(dcf,i/j);
        fi;
    od;
od;
Product(dcf);