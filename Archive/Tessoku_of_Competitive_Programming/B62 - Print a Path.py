n,m=map(int,input().split())
g=[[] for i in range(n)]
for i in range(m):
    a,b=map(int,input().split())
    g[a-1].append(b-1); g[b-1].append(a-1)
from collections import deque
v=[0]*n; p=deque()
import sys
sys.setrecursionlimit(1000001)
def dfs(i):
    v[i]=1; p.append(i+1)
    if i==n-1: exit(print(*p))
    for _ in g[i]:
        if v[_]==0: dfs(_)
    p.pop()
dfs(0)