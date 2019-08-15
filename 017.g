# If the numbers 1 to 5 are written out in words:
# one, two, three, four, five, then there are 
# 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words,
# how many letters would be used?

# NOTE: Do not count spaces or hyphens. 
# For example, 342 (three hundred and forty-two) contains 23 letters and 115
# (one hundred and fifteen) contains 20 letters.
# The use of "and" when writing out numbers is in compliance with British usage.
sum:=0;;
for i in [1..1000] do
    dig:=ListOfDigits(i);;
    if Length(dig)<4 then
        repeat
            Add(dig,0,1);
        until
            Length(dig)=4;
    fi;
    if dig[1]=1 then
        sum:=sum+11;;
    fi; # 10^3
    
    if dig[2] in [1,2,6] then
        sum:=sum+10;;
    elif dig[2] in [4,5,9] then
        sum:=sum+11;;
    elif dig[2] in [3,7,8] then
        sum:=sum+12;;
    fi; # 10^2

    if dig[2]<>0 and (dig[3]<>0 or dig[4]<>0) then
        sum:=sum+3;;
    fi; # and

    if dig[3] in [2,3,8,9] then
        sum:=sum+6;;
    elif dig[3] in [4,5,6] then
        sum:=sum+5;;
    elif dig[3]=7 then
        sum:=sum+7;;
    fi; # 20, 30 . . .

    if dig[3]=1 then
        if dig[4]=0 then
            sum:=sum+3;;
        elif dig[4] in [1,2] then
            sum:=sum+6;;
        elif dig[4] in [3,4,8,9] then
            sum:=sum+8;;
        elif dig[4] in [5,6] then
            sum:=sum+7;;
        elif dig[4]=7 then
            sum:=sum+9;;
        fi; # 10, 11, 12 . . .
    else
        if dig[4] in [1,2,6] then
            sum:=sum+3;;
        elif dig[4] in [4,5,9] then
            sum:=sum+4;;
        elif dig[4] in [3,7,8] then
            sum:=sum+5;;
        fi; # 1, 2 . . .
    fi;
od;
sum;