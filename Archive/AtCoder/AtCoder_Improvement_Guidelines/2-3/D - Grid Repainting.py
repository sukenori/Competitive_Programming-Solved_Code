h,w=map(int,input().split())
s=[]; b=0
for i in [0]*h:
    r=input()
    b+=r.count("#")
    s+=[list(r)]
s[0][0]=1
q=[(0,0)]
while q:
    y,x=q.pop(0)
    for nx,ny in (x,y-1),(x+1,y),(x,y+1),(x-1,y):
        if h>ny>=0<=nx<w and s[ny][nx]==".":
            s[ny][nx]=s[y][x]+1
            q+=[(ny,nx)]
print(-1 if s[h-1][w-1]=="." else h*w-b-s[h-1][w-1])