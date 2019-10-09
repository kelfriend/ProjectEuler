# If p is the perimeter of a right angle triangle with integral length sides,
# {a,b,c}, there are exactly three solutions for p = 120.

# {20,48,52}, {24,45,51}, {30,40,50}

# For which value of p ≤ 1000, is the number of solutions maximised?

# h^2 = o^2 + a^2, p = h + o + a
# => h^2 = (p - o - a)^2 = o^2 + a^2
# => o = ( p^2 - 2*p*a ) / ( 2*p + 2*a )
p_list:=List([1..1000],x->0);;
for p in [1..1000] do
    for a in [1..Int(p/3)-1] do
        if IsInt((p^2-2*p*a)/(2*p+2*a)) then
            p_list[p]:=p_list[p]+1;
        fi;
    od;
od;
PositionMaximum(p_list);