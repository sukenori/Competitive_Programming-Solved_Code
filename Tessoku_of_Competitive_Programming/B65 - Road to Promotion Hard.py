n,t=map(int,input().split())
g=[[] for i in range(n)]
for i in range(n-1):
    a,b=map(int,input().split())
    g[a-1].append(b-1); g[b-1].append(a-1)
r=[0]*n
import sys
sys.setrecursionlimit(1000000)
def dfs(i,p):
    for _ in g[i]:
        if _!=p: r[i]=max(r[i],dfs(_,i)+1)
    return r[i]
dfs(t-1,-1)
print(*r)