# An irrational decimal fraction is created by concatenating the positive
# integers:

# 0.123456789101112131415161718192021...

# It can be seen that the 12th digit of the fractional part is 1.

# If dn represents the nth digit of the fractional part, find the value of the
# following expression.

# d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000
d:=[1..9];;
x:=10;;
repeat
    d:=Concatenation(d,ListOfDigits(x));
    x:=x+1;
until
    Length(d)>=10^5;
Product(List([0..5],i->d[10^i]));
# i just guessed the last digit... (it was 1)