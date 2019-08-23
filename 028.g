# Starting with the number 1 and moving to the right in a clockwise direction
# a 5 by 5 spiral is formed as follows:

# 21 22 23 24 25
# 20  7  8  9 10
# 19  6  1  2 11
# 18  5  4  3 12
# 17 16 15 14 13

# It can be verified that the sum of the numbers on the diagonals is 101.

# What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed
# in the same way?

# Expanding manually the above grid by one cycle:

# 43 44 45 46 47 48 49
# 42 21 22 23 24 25 26
# 41 20  7  8  9 10 27
# 40 19  6  1  2 11 28
# 39 18  5  4  3 12 29
# 38 17 16 15 14 13 30
# 37 36 35 34 33 32 31

# The polynomials for the 4 diagonal sequences are:
# f1 := 4*x^2 + 4*x + 1;
# f2 := 4*x^2 - 2*x + 1;
# f3 := 4*x^2 + 1;
# f4 := 4*x^2 + 2*x + 1;

# Summing these from 1 to (1001-1)/2 yields:
# f := 16*x^2 + 4*x + 4;
f:={x}->16*x^2+4*x+4;;
Sum(List([1..500],x->f(x)))+1;