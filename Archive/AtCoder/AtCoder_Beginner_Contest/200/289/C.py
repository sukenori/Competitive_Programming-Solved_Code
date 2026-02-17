n,m=map(int,input().split())
k=set([i for i in range(1,n+1)])
a=[[] for i in range(m)]
for i in range(m):
    c=int(input())
    a[i]=set(map(int,input().split()))
ans=0
import itertools
for i in range(1,m+1):
    for _ in itertools.combinations(a,i):
        s=set()
        for j in _:
            s|=j
        if s==k:
            ans+=1
print(ans)