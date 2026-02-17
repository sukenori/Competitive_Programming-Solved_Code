n,m=map(int,input().split())
g=[[] for i in range(n)]
for i in range(m):
    a,b=map(int,input().split())
    g[a-1].append(b-1); g[b-1].append(a-1)
from collections import deque
q=deque([0]); d=[-1]*n; d[0]=0
while len(q)>0:
    i=q.popleft()
    for _ in g[i]:
        if d[_]==-1:
            d[_]=d[i]+1
            q.append(_)
[print(_) for _ in d]