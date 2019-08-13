# By listing the first six prime numbers:
# 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?
p:=[2];
i:=3;
repeat
    if IsPrime(i) then
        Add(p,i);
    fi;
    i:=i+2;
until
    Length(p)=10001;
p[Length(p)];