w,h=map(int,input().split())
m=[[0]+list(map(int,input().split()))+[0] for i in range(h)]
m=[[0]*(w+2)]+m+[[0]*(w+2)]
q=[(0,0)]; m[0][0]=-1
s=0
def a(x,y):
    d=y%2
    return [(x-1+d,y-1),(x+d,y-1),(x-1,y),(x+1,y),(x-1+d,y+1),(x+d,y+1)]
while q:
    y,x=q.pop(0)
    for nx,ny in a(x,y):
        if h+1>=ny>=0<=nx<=w+1 and m[ny][nx]==0:
            for sx,sy in a(nx,ny):
                s+=(h+1>=sy>=0<=sx<=w+1 and m[sy][sx]==1)
            m[ny][nx]=-1
            q+=[(ny,nx)]
print(s)