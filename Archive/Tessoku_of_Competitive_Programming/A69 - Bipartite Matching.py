n=int(input())
f=[[0]+[1]*n+[0]*(n+1)]
for i in range(n):
    f.append(list(map(int,list(("."*(n+1)+input()+".").replace("#","1").replace(".","0")))))
for i in range(n):
    f.append([0]*(n*2+1)+[1])
f.append([0]*(n*2+2))
import sys
sys.setrecursionlimit(150*151)
def dfs(i,fl):
    d[i]=1
    if i==n*2+1: return fl
    for _ in range(n*2+2):
        if d[_]==0 and f[i][_]>0:
            fli=dfs(_,1)
            if fli>0:
                f[i][_]-=fli; f[_][i]+=fli
                return fli
    return 0
a=0
while True:
    d=[0]*(n*2+2); fl=dfs(0,1)
    if fl==0: break
    else: a+=fl
print(a)