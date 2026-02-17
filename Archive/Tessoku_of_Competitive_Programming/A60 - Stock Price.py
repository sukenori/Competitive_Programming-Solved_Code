n=int(input())
a=list(map(int,input().split()))
from collections import deque
d=deque()
for i in range(n):
    while len(d)>0:
        if d[-1][1]<=a[i]: d.pop()
        else: break
    if len(d)==0: print(-1)
    else: print(d[-1][0])
    d.append([i+1,a[i]])