h,w=map(int,input().split())
a=[list(map(int,input().split())) for i in range(h)]
q=0
for i in range(1<<(h-1+w-1)):
    x=y=0
    p={a[0][0]}
    for j in range(h-1+w-1):
        if i>>j&1==1: x+=1
        else: y+=1
        if not h>y>=0<=x<w: continue
        if a[y][x] in p: break
        else:
            p.add(a[y][x])
    else:
        if x==w-1 and y==h-1:
            q+=1
print(q)