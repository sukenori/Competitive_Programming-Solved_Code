p=float(input())
from math import *
x=max(0,1.5*log(p*log(2)/1.5,2))
print(x+p/2**(x/1.5))