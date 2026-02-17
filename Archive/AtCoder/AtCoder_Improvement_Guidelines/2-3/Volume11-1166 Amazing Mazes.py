while True:
    w,h=map(int,input().split())
    if w==h==0: break
    m=[list(map(int,input().split())) for i in range(h*2-1)]
    p=[[0]*w for i in range(h)]
    q=[(0,0)]; p[0][0]=1
    while q:
        y,x=q.pop(0)
        d=[]
        if y>0 and m[y*2-1][x]==0: d+=[(y-1,x)]
        if x<w-1 and m[y*2][x]==0: d+=[(y,x+1)]
        if y<h-1 and m[y*2+1][x]==0: d+=[(y+1,x)]
        if x>0 and m[y*2][x-1]==0: d+=[(y,x-1)]
        for ny,nx in d:
            if h>ny>=0<=nx<w and p[ny][nx]==0:
                p[ny][nx]=p[y][x]+1
                q+=[(ny,nx)]
    print(p[h-1][w-1])