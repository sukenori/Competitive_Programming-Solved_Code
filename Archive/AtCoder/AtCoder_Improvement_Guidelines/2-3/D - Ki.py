ip=lambda: map(int,input().split())
n,q=ip()
g=[set() for i in range(n)]
for i in range(n-1):
    a,b=ip()
    g[a-1].add(b-1); g[b-1].add(a-1)
c=[0]*n
for i in range(q):
    p,x=ip()
    c[p-1]+=x
import sys
sys.setrecursionlimit(10**6)
def dfs(p,pp):
    for _ in g[p]:
        if _==pp: continue
        c[_]+=c[p]
        dfs(_,p)
dfs(0,-1)
print(*c)