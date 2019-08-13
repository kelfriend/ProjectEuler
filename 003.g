# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?
LargestPrimeFactor:=function(n)
    local
        p, fact, pow;

    p:=3;
    fact:=[];
    pow:=0;
    repeat
        while IsInt(n/p) do
            n:=n/p;
            pow:=pow+1;
        od;
        Add(fact,[p,pow]);
        p:=p+1;
        while not IsPrime(p) do
            p:=p+1;
        od;
    until
        n=1;
    
    return Maximum(List(fact,x->x[1]));
end;

LargestPrimeFactor(600851475143);;

# GAP abuse
Maximum(PrimePowersInt(600851475143));
