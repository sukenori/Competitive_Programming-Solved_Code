n,m,l=map(int,input().split())
a=[list(map(int,input().split())) for i in range(n)]
b=[list(map(int,input().split())) for i in range(m)]
c=[[0]*l for i in range(n)]
for i in range(n):
    for j in range(l):
        c[i][j]=sum([a[i][k]*b[k][j] for k in range(m)])
for i in range(n):
    print(*c[i])