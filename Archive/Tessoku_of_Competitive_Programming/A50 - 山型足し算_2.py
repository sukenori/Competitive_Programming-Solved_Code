n=100
a=[list(map(int,input().split())) for i in range(n)]
b=[[0]*n for i in range(n)]
def op(x,y,h,f):
    for i in range(y-h+1,y+h):
        for j in range(x-h+1,x+h):
            if 0<=i<=n-1 and 0<=j<=n-1:
                b[i][j]+=max(0,h-abs(x-i)-abs(y-j))*f
def sc(a,b):
    s=200000000
    for i in range(n):
        for j in range(n):
            s-=abs(a[i][j]-b[i][j])
    return s
q=1000
print(q)
import random
oph=[]
for i in range(q):    
    x=random.randint(0,n-1)
    y=random.randint(0,n-1)
    op(x,y,1,1)
    oph.append([x,y,1])
import time
ti=time.time()
while time.time()-ti<5.4:
    bs=sc(a,b)
    i=random.randint(0,q-1)
    bx=oph[i][0]; by=oph[i][1]; bh=oph[i][2]
    ax=bx+random.randint(-9,9)
    if not 0<=ax<=n-1: continue
    ay=by+random.randint(-9,9)
    if not 0<=ay<=n-1: continue
    ah=bh+random.randint(-19,19)
    if not 1<=ah<=n: continue
    op(bx,by,bh,-1); op(ax,ay,ah,1); oph[i]=[ax,ay,ah]
    if sc(a,b)<bs:
        op(ax,ay,ah,-1); op(bx,by,bh,1); oph[i]=[bx,by,bh]
for _ in oph:
    print(*_)