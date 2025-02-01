n,m,c=map(int,input().split())
b=list(map(int,input().split()))
a=[list(map(int,input().split())) for _ in range(n)]
print(sum(sum(a[ni][mi]*b[mi] for mi in range(m))+c>0 for ni in range(n)))