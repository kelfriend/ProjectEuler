# The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.

# Find the sum of all numbers, less than one million, which are palindromic in
# base 10 and base 2.

# (Please note that the palindromic number, in either base, may not include
# leading zeros.)
ListOfDigitsBase2:=function(x)
    local i, n, b2list;

    i:=ShallowCopy(x);;
    n:=0;
    while 2^(n+1)<i do
        n:=n+1;
    od;

    b2list:=[];
    repeat
        if i>=2^n then
            Add(b2list,1);
            i:=i-2^n;
        else
            Add(b2list,0);
        fi;
        n:=n-1;
    until
        n=-1;

    return Reversed(b2list);
end;

palindromes:=[];;
for i in Filtered([1..10^6],x->x mod 2<>0) do
    if ListOfDigits(i)=Reversed(ListOfDigits(i)) then
        if ListOfDigitsBase2(i)=Reversed(ListOfDigitsBase2(i)) then
            Add(palindromes,i);
        fi;
    fi;
od;
Sum(palindromes);