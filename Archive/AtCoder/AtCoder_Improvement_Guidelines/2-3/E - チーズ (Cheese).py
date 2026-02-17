h,w,n=map(int,input().split())
m=eval("input(),"*h)
f=[None]*(n+1)
for i in range(h):
    for j in range(w):
        if m[i][j]=="S": f[0]=(i,j)
        elif m[i][j]!="." and m[i][j]!="X": f[int(m[i][j])]=(i,j)
a=0
for s,g in zip(f,f[1:]):
    c=[[-1 if j=="X" else 0 for j in i] for i in m]
    q=[s]
    while q:
        y,x=q.pop(0)
        for nx,ny in (x,y-1),(x+1,y),(x,y+1),(x-1,y):
            if h>ny>=0<=nx<w and c[ny][nx]==0:
                c[ny][nx]=c[y][x]+1
                q+=[(ny,nx)]
    a+=c[g[0]][g[1]]
print(a)