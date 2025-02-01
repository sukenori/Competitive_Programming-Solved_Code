n=int(input())
a=list(map(int,input().split()))
sa=sorted(list(set(a)))
b=[]
import bisect
for _ in a:
    b.append(bisect.bisect_right(sa,_))
print(*b)