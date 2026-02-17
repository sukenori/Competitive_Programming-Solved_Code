n=int(input())
xy=[tuple(map(int,input().split())) for i in range(n)]
s=set(xy)
m=0
for i in range(n):
    xi=xy[i][0]; yi=xy[i][1]
    for j in range(i+1,n):
        xj=xy[j][0]; yj=xy[j][1]
        dx=xj-xi; dy=yj-yi
        if (xi-dy,yi+dx) in s and (xj-dy,yj+dx) in s: m=max(m,dx**2+dy**2)
print(m)