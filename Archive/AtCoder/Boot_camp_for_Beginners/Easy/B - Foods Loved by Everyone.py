n,m=map(int,input().split())
m=[0]*m
for i in range(n):
    for _ in list(map(int,input().split()))[1:]:
        m[_-1]+=1
print(sum([_==n for _ in m]))