n,m=map(int,input().split())
a=[list(map(int,input().split())) for i in range(n)]
b=[int(input()) for i in range(m)]
print("\n".join([str(sum([a[i][j]*b[j] for j in range(m)])) for i in range(n)]))