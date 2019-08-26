# 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

# Find the sum of all numbers which are equal to the sum of the factorial of
# their digits.

# Note: as 1! = 1 and 2! = 2 are not sums they are not included.
dig_fac:=[];;
for i in [3..7*Factorial(9)] do # let all digits be 9, I calculated a (bad)
    if Sum(List(ListOfDigits(i),Factorial))=i then # bound for i by hand
        Add(dig_fac,i);
    fi;
od;
Sum(dig_fac);