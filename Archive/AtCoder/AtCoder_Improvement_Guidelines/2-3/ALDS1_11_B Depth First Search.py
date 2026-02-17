n=int(input())
g=[[] for i in range(n)]
for i in range(n):
    u,k,*v=map(int,input().split())
    for j in range(k): g[i]+=[v[j]-1]
d=[0]*n; f=[0]*n; t=0
def dfs(i):
    global t; t+=1; d[i]=t
    for _ in g[i]:
        if d[_]==0: dfs(_)
    t+=1; f[i]=t
while min(d)==0:
    dfs(d.index(0))
[print(i+1,d[i],f[i]) for i in range(n)]