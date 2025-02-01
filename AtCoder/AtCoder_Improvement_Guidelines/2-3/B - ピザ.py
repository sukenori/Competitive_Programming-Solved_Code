d=int(input())
n=int(input())
m=int(input())
di=[0]+sorted([int(input()) for i in range(n-1)])+[d]
ki=[int(input()) for i in range(m)]
import bisect
s=0
for _ in ki:
    i=bisect.bisect(di,_)
    s+=min(di[i]-_,_-di[i-1])
print(s)