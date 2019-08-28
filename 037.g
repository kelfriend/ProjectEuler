# The number 3797 has an interesting property. Being prime itself, it is possible
# to continuously remove digits from left to right,
# and remain prime at each stage: 3797, 797, 97, and 7.
# Similarly we can work from right to left: 3797, 379, 37, and 3.

# Find the sum of the only eleven primes that are both truncatable from left to
# right and right to left.

# NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.
truncatables:=[];;
n:=23;
repeat
    yup:=0;
    l:=ListOfDigits(n);
    if IsPrime(n) then
        for i in [1..Length(l)] do
            if IsPrime(l{[1..i]}*Reversed(List([1..i],x->10^(x-1)))) then
                if IsPrime(l{[i..Length(l)]}*Reversed(List([1..Length(l)-i+1],x->10^(x-1)))) then
                    yup:=yup+1;
                fi;
            fi;
        od;
    fi;
    if yup=Length(l) then
        Add(truncatables,n);
    fi;
    n:=n+2;
until
    Length(truncatables)=11;
Sum(truncatables);