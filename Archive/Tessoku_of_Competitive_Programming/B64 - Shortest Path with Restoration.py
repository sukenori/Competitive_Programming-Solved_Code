n,m=map(int,input().split())
g=[[] for i in range(n)]
for i in range(m):
    a,b,c=map(int,input().split())
    g[a-1].append([b-1,c])
    g[b-1].append([a-1,c])
c=[10000*100000]*n; c[0]=0
import heapq
hq=[[0,0]]; d=[0]*n
while True:
    i=heapq.heappop(hq)
    if d[i[1]]==0:
        d[i[1]]=1
        for _ in g[i[1]]:
            c[_[0]]=min(c[i[1]]+_[1],c[_[0]])
            heapq.heappush(hq,[c[_[0]],_[0]])
    if len(hq)==0: break
p=[n]
while True:
    for _ in g[p[-1]-1]:
        if c[p[-1]-1]==c[_[0]]+_[1]:
            p.append(_[0]+1)
            if _[0]==0:
                exit(print(*p[::-1]))
            else: break