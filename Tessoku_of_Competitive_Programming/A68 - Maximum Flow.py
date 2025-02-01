n,m=map(int,input().split())
g=[[] for i in range(n)]
f=[[0]*n for i in range(n)]
for i in range(m):
    a,b,c=map(int,input().split()); a-=1; b-=1
    g[a].append(b); g[b].append(a)
    f[a][b]=c
import sys
sys.setrecursionlimit(500)
def dfs(i,fl):
    d[i]=1    
    if i==n-1: return fl
    for _ in g[i]:
        if d[_]==0 and f[i][_]>0:
            fli=dfs(_,min(fl,f[i][_]))        
            if fli>0:
                f[i][_]-=fli; f[_][i]+=fli
                return fli
    return 0
a=0
while True:
    d=[0]*n; fl=dfs(0,5001)
    if fl==0: break
    else: a+=fl
print(a)