import sys
sys.setrecursionlimit(50*50)
def dfs(i,j):
    c[i][j]=2
    for di in [-1,0,1]:
        for dj in [-1,0,1]:
            if not (0<=i+di<h and 0<=j+dj<w): continue
            if c[i+di][j+dj]==1: dfs(i+di,j+dj)
while True:
    w,h=map(int,input().split())
    if w==h==0: break
    c=[list(map(int,input().split())) for i in range(h)]
    s=0
    for i in range(h):
        for j in range(w):
            if c[i][j]==1:
                dfs(i,j)
                s+=1
    print(s)