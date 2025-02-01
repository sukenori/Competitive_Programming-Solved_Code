n,m=map(int,input().split())
p=list(map(int,input().split()))
f=[[0]*(n+2) for i in range(n+2)]
o=0
for i in range(n):
    if p[i]>0:
        f[0][i+1]=p[i]
        o+=p[i]
    else: f[i+1][n+1]=-p[i]
for i in range(m):
    a,b=map(int,input().split())
    f[a][b]=150*150
import sys
sys.setrecursionlimit(150*150)
def dfs(i,fl):
    if i==n+1: return fl
    d[i]=1
    for _ in range(n+2):
        if d[_]==0 and f[i][_]>0:
            fli=dfs(_,min(fl,f[i][_]))
            if fli>0:
                f[i][_]-=fli; f[_][i]+=fli
                return fli
    return 0
a=0
while True:
    d=[0]*(n+2); fl=dfs(0,150*150)
    if fl==0: break
    else: a+=fl
print(o-a)