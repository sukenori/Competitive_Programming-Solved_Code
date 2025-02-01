import sys
sys.setrecursionlimit(10**6)
n,m=map(int,input().split())
g=[[] for i in range(n)]
for i in range(m):
    u,v=map(int,input().split())
    g[u-1]+=[v-1]; g[v-1]+=[u-1]
c=0; d=[0]*n
def dfs(i):
    d[i]=1; k[i]=1
    for _ in g[i]:
        if d[_]==0:
            dfs(_)
for i in range(n):
    if d[i]==1: continue
    k=[0]*n
    dfs(i)
    l=0
    for j,_ in enumerate(k):
        l+=len(g[j])*_
    l//=2
    if sum(k)!=l: 
        print("No")
        exit()
else: print("Yes")