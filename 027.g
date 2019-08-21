# Euler discovered the remarkable quadratic formula: n^2+n+41

# It turns out that the formula will produce 40 primes for the consecutive
# integer values 0≤n≤39. However, when n=40,40^2+40+41=40(40+1)+41 is divisible
# by 41, and certainly when n=41,412+41+41 is clearly divisible by 41.

# The incredible formula n^2−79n+1601
# was discovered, which produces 80 primes for the consecutive values 0≤n≤79.
# The product of the coefficients, −79 and 1601, is −126479.

# Considering quadratics of the form:
#     n^2+an+b, where |a|<1000 and |b|≤1000
# where |n| is the modulus/absolute value of e.g. |11|=11 and |−4|=4

# Find the product of the coefficients, a and b, for the quadratic expression
# that produces the maximum number of primes for consecutive values of n,
# starting with n=0.
Quad:={n,a,b}->n^2+a*n+b;;
consecutive_primes:=[];;
for a in [-999..999] do
    for b in Concatenation(Reversed(Primes*-1),Primes) do
        n:=0;;
        repeat
            n:=n+1;;
        until
            IsPrime(Quad(n,a,b))=false;;
        Add(consecutive_primes,[a,b,n-1]);;
    od;
od;
i:=PositionMaximum(List(consecutive_primes,x->x[3]));;
consecutive_primes[i][1]*consecutive_primes[i][2];