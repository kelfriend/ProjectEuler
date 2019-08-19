# Let d(n) be defined as the sum of proper divisors of n
# (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and
# each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55
# and 110; therefore d(220) = 284.
# The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.
SumOfProperDivisors:={n}->Sum(DivisorsInt(n){[1..Length(DivisorsInt(n))-1]});;
friendly_sum:=0;;
amicables:=[];;
for a in [2..10^4] do
    b:=SumOfProperDivisors(a);;
    if SumOfProperDivisors(b)=a and 
    a<>b and 
    not a in amicables and
    not b in amicables then
        friendly_sum:=friendly_sum+a+b;;
        Add(amicables,a);
        Add(amicables,b);
    fi;
od;
friendly_sum;