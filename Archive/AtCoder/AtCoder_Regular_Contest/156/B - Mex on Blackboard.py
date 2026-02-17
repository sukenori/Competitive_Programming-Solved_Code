n,k=map(int,input().split())
*a,=map(int,input().split())
m=998244353
s=2
import math
for i in range(1,k):
    s+=math.comb(k-i+i-1,i)
print(s)