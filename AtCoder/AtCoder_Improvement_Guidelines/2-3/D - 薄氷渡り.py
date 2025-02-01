m,n=[int(input()) for i in range(2)]
p=[list(map(int,input().split())) for i in range(n)]
def dfs(y,x,c):
    global a
    p[y][x]=0
    a=max(a,c)
    for dx,dy in (0,-1),(1,0),(0,1),(-1,0):
        if n>y+dy>=0<=x+dx<m and p[y+dy][x+dx]==1:
            dfs(y+dy,x+dx,c+1)
    p[y][x]=1
a=0
for i in range(n):
    for j in range(m):
        if p[i][j]==1:
            dfs(i,j,1)
print(a)