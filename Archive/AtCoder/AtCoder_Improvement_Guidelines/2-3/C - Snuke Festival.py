n=int(input())
a,b,c=(sorted(list(map(int,input().split()))) for i in range(3))
from bisect import *
print(sum(bisect_left(a,bi)*(n-bisect_right(c,bi)) for bi in b))