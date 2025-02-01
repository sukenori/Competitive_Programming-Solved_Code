n,m=map(int,input().split())
g=[[i] for i in range(n)]
a=list(map(int,input().split()))
for _ in a:
    g[_-1].append(_)
a=[g[0]]
for i in range(1,n):
    if set(a[-1])&set(g[i])!=set():
        a[-1]=sorted(list(set(a[-1]+g[i])))[::-1]
    else:
        a.append(sorted(g[i])[::-1])
an=[]
for _ in a:
    an+=_
ann=[]
for _ in an:
    ann.append(_+1)
print(*ann)