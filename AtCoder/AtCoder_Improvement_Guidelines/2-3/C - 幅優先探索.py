R,C,sy,sx,gy,gx,*c=open(0).read().split()
R,C=map(int,(R,C))
sy,sx,gy,gx=map(lambda x:int(x)-1,(sy,sx,gy,gx))
c=[[0 if j=="." else -1 for j in i] for i in c]
q=[(sy,sx)]
while q:
    iy,ix=q.pop(0)
    for dx,dy in (0,-1),(1,0),(0,1),(-1,0):
        if R>iy+dy>=0<=ix+dx<C and c[iy+dy][ix+dx]==0:
            c[iy+dy][ix+dx]=c[iy][ix]+1
            q+=[(iy+dy,ix+dx)]
print(c[gy][gx])