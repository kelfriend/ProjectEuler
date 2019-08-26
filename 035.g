# The number, 197, is called a circular prime because all rotations of the digits:
# 197, 971, and 719, are themselves prime.

# There are thirteen such primes below 100:
# 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

# How many circular primes are there below one million?
primes:=Filtered(Filtered([100..10^6],x->x mod 2<>0),IsPrime);;
IsCircular:=function(p)
    local CyclicPermutationsList, perm, i, n, j;

    CyclicPermutationsList:=function(l)
        local cycles, len, i, cyc_perm, j;

        cycles:=[];
        Add(cycles,l);
        len:=Length(l);

        if len>1 then
            for i in [1..len-1] do
                cyc_perm:=[];
                for j in [1..len] do
                    Add(cyc_perm,l[((j+len+i-1) mod len)+1]);
                od;
                Add(cycles,cyc_perm);
            od;
        fi;

        return cycles;
    end;

    perm:=CyclicPermutationsList(ListOfDigits(p));
    for i in perm do
        n:=0;
        for j in [1..Length(i)] do
            n:=n+(i[j]*10^(Length(i)-j));
        od;
        if not IsPrime(n) then
            return false;
        fi;
    od;

    return true;
end;;
count:=13;;
for i in primes do
    if IsCircular(i) then
        count:=count+1;
    fi;
od;
count;