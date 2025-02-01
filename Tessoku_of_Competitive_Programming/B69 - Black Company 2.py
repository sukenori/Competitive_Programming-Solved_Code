n,m=map(int,input().split())
f=[[0]+[10]*n+[0]*(24+1)]
for i in range(n):
    f.append([0]*(1+n)+list(map(int,list(input())))+[0])
for i in range(24):
    f.append([0]*(1+n+24)+[m])
f.append([0]*(n+24+2))
import sys
sys.setrecursionlimit((n+1)*(24+1))
def dfs(i,fl):
    d[i]=1
    if i==n+24+1: return fl
    for _ in range(n+24+2):
        if d[_]==0 and f[i][_]>0:
            fli=dfs(_,min(fl,f[i][_]))
            if fli>0:
                f[i][_]-=fli; f[_][i]+=fli
                return fli
    return 0
a=0
while True:
    d=[0]*(n+24+2)
    fl=dfs(0,m*24)
    if fl==0: break
    else: a+=fl
print(["No","Yes"][a==m*24])