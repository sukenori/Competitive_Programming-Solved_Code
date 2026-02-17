n,m=map(int,input().split())
a=int(input()[::-1].replace(" ",""),2)
op=[]
for i in range(m):
    x,y,z=[int(_)-1 for _ in input().split()]
    op.append(1<<x|1<<y|1<<z)
from collections import deque
q=deque([a]); d=[-1]*(1<<n); d[a]=0
while q:
    i=q.popleft()
    for _ in op:
        if d[i^_]==-1:
            d[i^_]=d[i]+1            
            q.append(i^_)
print(d[(1<<n)-1])