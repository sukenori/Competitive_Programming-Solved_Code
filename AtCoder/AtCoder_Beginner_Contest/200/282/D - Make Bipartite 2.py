n,m=map(int,input().split())
uv=set()
for i in range(1,n):
    for j in range(i+1,n+1):
        uv.add((i,j))
print(uv)
for i in range(m):
    uv.remove(tuple(sorted(map(int,input().split()))))
print(uv)