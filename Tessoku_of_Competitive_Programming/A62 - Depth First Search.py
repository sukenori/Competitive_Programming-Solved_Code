n,m=map(int,input().split())
g=[[] for i in range(n)]
for i in range(m):
    a,b=map(int,input().split())
    g[a-1].append(b-1); g[b-1].append(a-1)
v=[0]*n
import sys
sys.setrecursionlimit(10**5)
def dfs(i):
    v[i]=1
    for _ in g[i]:
        if v[_]==0: dfs(_)
dfs(0)
print("The graph is "+"not "*(sum(v)!=n)+" connected.")