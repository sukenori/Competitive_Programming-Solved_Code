n,d=map(int,input().split())
p=[[] for i in range(d)]
for i in range(n):
    x,y=map(int,input().split())
    p[x-1].append(y)
import heapq
hq=[]; s=0
for i in range(d):
    for _ in p[i]:
        heapq.heappush(hq,-_)
    if hq: s-=heapq.heappop(hq)
print(s)