r,c=map(int,input().split())
sx,sy=map(int,input().split())
gx,gy=map(int,input().split())
c=[list(input()) for i in range(r)]
from collections import deque
q=deque([[sx-1,sy-1]]); c[sx-1][sy-1]=0
while len(q)>0:
    x,y=q.popleft()
    for dx,dy in [[0,-1],[1,0],[0,1],[-1,0]]:
        nx=x+dx; ny=y+dy
        if c[nx][ny]=='.':
            c[nx][ny]=c[x][y]+1
            q.append([nx,ny])
print(c[gx-1][gy-1])    